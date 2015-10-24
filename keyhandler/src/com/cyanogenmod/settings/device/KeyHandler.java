/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings.device;

import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.TorchManager;
import android.media.session.MediaSessionLegacyHelper;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.MediaStore;
import android.provider.Settings;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import android.util.Log;
import android.view.KeyEvent;
import android.view.WindowManagerGlobal;

import com.android.internal.R;
import com.android.internal.os.DeviceKeyHandler;
import com.android.internal.util.ArrayUtils;

public class KeyHandler implements DeviceKeyHandler {

    private static final String TAG = KeyHandler.class.getSimpleName();
    private static final int GESTURE_REQUEST = 1;

    private static final String ACTION_DISMISS_KEYGUARD =
            "com.android.keyguard.action.DISMISS_KEYGUARD_SECURELY";
    public static final String SMS_DEFAULT_APPLICATION = "sms_default_application";
    
    // Supported scancodes
    private static final int KEY_GESTURE_DOUBLECLICK = 256;
    private static final int KEY_GESTURE_C = 257;
    private static final int KEY_GESTURE_E = 258;
    private static final int KEY_GESTURE_S = 259;
    private static final int KEY_GESTURE_V = 260;
    private static final int KEY_GESTURE_W = 261;
    private static final int KEY_GESTURE_Z = 262;

    private static final int GESTURE_WAKELOCK_DURATION = 3000;

    private static final int[] sSupportedGestures = new int[] {
        KEY_GESTURE_DOUBLECLICK,
        KEY_GESTURE_C,
        KEY_GESTURE_E,
        KEY_GESTURE_S,
        KEY_GESTURE_V,
        KEY_GESTURE_W,
        KEY_GESTURE_Z,        
    };

    private final Context mContext;
    private final PowerManager mPowerManager;
    private KeyguardManager mKeyguardManager;
    private EventHandler mEventHandler;
    private SensorManager mSensorManager;
    private TorchManager mTorchManager;
    private Sensor mProximitySensor;
    WakeLock mProximityWakeLock;
    WakeLock mGestureWakeLock;
    private int mProximityTimeOut;
    private boolean mProximityWakeSupported;

    public KeyHandler(Context context) {
        mContext = context;
        mPowerManager = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        mEventHandler = new EventHandler();
        mGestureWakeLock = mPowerManager.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,
                "GestureWakeLock");

        final Resources resources = mContext.getResources();
        mProximityTimeOut = resources.getInteger(
                com.android.internal.R.integer.config_proximityCheckTimeout);
        mProximityWakeSupported = resources.getBoolean(
                com.android.internal.R.bool.config_proximityCheckOnWake);

        if (mProximityWakeSupported) {
            mSensorManager = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
            mProximitySensor = mSensorManager.getDefaultSensor(Sensor.TYPE_PROXIMITY);
            mProximityWakeLock = mPowerManager.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,
                    "ProximityWakeLock");
        }
    }

    private void ensureKeyguardManager() {
        if (mKeyguardManager == null) {
            mKeyguardManager =
                    (KeyguardManager) mContext.getSystemService(Context.KEYGUARD_SERVICE);
        }
    }

    private void ensureTorchManager() {
        if (mTorchManager == null) {
            mTorchManager = (TorchManager) mContext.getSystemService(Context.TORCH_SERVICE);
        }
    }

    private class EventHandler extends Handler {
        @Override
        public void handleMessage(Message msg) {
            KeyEvent event = (KeyEvent) msg.obj;
            String action = null;
            
            switch (event.getScanCode()) {
            case KEY_GESTURE_C:
                ensureKeyguardManager();
                mGestureWakeLock.acquire(GESTURE_WAKELOCK_DURATION);
                if (mKeyguardManager.isKeyguardSecure() && mKeyguardManager.isKeyguardLocked()) {
                    action = MediaStore.INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE;
                } else {
                    mContext.sendBroadcastAsUser(new Intent(ACTION_DISMISS_KEYGUARD),
                            UserHandle.CURRENT);
                    action = MediaStore.INTENT_ACTION_STILL_IMAGE_CAMERA;
                }
                mPowerManager.wakeUp(SystemClock.uptimeMillis());
                Intent c_intent = new Intent(action, null);
                startActivitySafely(c_intent);
                break;
            case KEY_GESTURE_E:
                ensureKeyguardManager();
                mGestureWakeLock.acquire(GESTURE_WAKELOCK_DURATION);
                if (!mKeyguardManager.isKeyguardSecure()) {
                    mContext.sendBroadcastAsUser(new Intent(ACTION_DISMISS_KEYGUARD),
                            UserHandle.CURRENT);
                }
                mPowerManager.wakeUp(SystemClock.uptimeMillis());
                Intent e_intent = new Intent(Intent.ACTION_MAIN, null);
                e_intent.addCategory(Intent.CATEGORY_APP_EMAIL);
                startActivitySafely(e_intent);
                break;
            case KEY_GESTURE_S:
                ensureKeyguardManager();
                mGestureWakeLock.acquire(GESTURE_WAKELOCK_DURATION);
                if (!mKeyguardManager.isKeyguardSecure()) {
                    mContext.sendBroadcastAsUser(new Intent(ACTION_DISMISS_KEYGUARD),
                            UserHandle.CURRENT);
                }
                mPowerManager.wakeUp(SystemClock.uptimeMillis());
                String defaultApplication = Settings.Secure.getString(mContext.getContentResolver(),
                    SMS_DEFAULT_APPLICATION);
                PackageManager pm = mContext.getPackageManager();
                Intent s_intent = pm.getLaunchIntentForPackage(defaultApplication );
                if (s_intent != null) {
                    startActivitySafely(s_intent);
                }
                break;
            case KEY_GESTURE_V:
                ensureKeyguardManager();
                mGestureWakeLock.acquire(GESTURE_WAKELOCK_DURATION);
                if (!mKeyguardManager.isKeyguardSecure()) {
                    mContext.sendBroadcastAsUser(new Intent(ACTION_DISMISS_KEYGUARD),
                            UserHandle.CURRENT);
                }
                mPowerManager.wakeUp(SystemClock.uptimeMillis());
                Intent v_intent = new Intent(Intent.ACTION_DIAL, null);
                startActivitySafely(v_intent);
                break;
            case KEY_GESTURE_W:
                ensureKeyguardManager();
                mGestureWakeLock.acquire(GESTURE_WAKELOCK_DURATION);
                if (!mKeyguardManager.isKeyguardSecure()) {
                    mContext.sendBroadcastAsUser(new Intent(ACTION_DISMISS_KEYGUARD),
                            UserHandle.CURRENT);
                }
                mPowerManager.wakeUp(SystemClock.uptimeMillis());
                Intent w_intent = new Intent(Intent.ACTION_WEB_SEARCH, null);
                startActivitySafely(w_intent);
                break;
            case KEY_GESTURE_Z:
                ensureTorchManager();
                mGestureWakeLock.acquire(GESTURE_WAKELOCK_DURATION);
                mTorchManager.toggleTorch();
                break;
            }
        }
    }

    public boolean handleKeyEvent(KeyEvent event) {
        boolean isKeySupported = ArrayUtils.contains(sSupportedGestures, event.getScanCode());
        if (isKeySupported && !mEventHandler.hasMessages(GESTURE_REQUEST)) {
            if (event.getScanCode() == KEY_GESTURE_DOUBLECLICK && !mPowerManager.isScreenOn()) {
                mPowerManager.wakeUpWithProximityCheck(SystemClock.uptimeMillis());
                return true;
            }
            Message msg = getMessageForKeyEvent(event);
            boolean defaultProximity = mContext.getResources().getBoolean(
                com.android.internal.R.bool.config_proximityCheckOnWakeEnabledByDefault);
            boolean proximityWakeCheckEnabled = Settings.System.getInt(mContext.getContentResolver(),
                    Settings.System.PROXIMITY_ON_WAKE, defaultProximity ? 1 : 0) == 1;
            if (mProximityWakeSupported && proximityWakeCheckEnabled && mProximitySensor != null) {
                mEventHandler.sendMessageDelayed(msg, mProximityTimeOut);
                processEvent(event);
            } else {
                mEventHandler.sendMessage(msg);
            }
        }
        return isKeySupported;
    }

    private Message getMessageForKeyEvent(KeyEvent keyEvent) {
        Message msg = mEventHandler.obtainMessage(GESTURE_REQUEST);
        msg.obj = keyEvent;
        return msg;
    }

    private void processEvent(final KeyEvent keyEvent) {
        mProximityWakeLock.acquire();
        mSensorManager.registerListener(new SensorEventListener() {
            @Override
            public void onSensorChanged(SensorEvent event) {
                mProximityWakeLock.release();
                mSensorManager.unregisterListener(this);
                if (!mEventHandler.hasMessages(GESTURE_REQUEST)) {
                    // The sensor took to long, ignoring.
                    return;
                }
                mEventHandler.removeMessages(GESTURE_REQUEST);
                if (event.values[0] == mProximitySensor.getMaximumRange()) {
                    Message msg = getMessageForKeyEvent(keyEvent);
                    mEventHandler.sendMessage(msg);
                }
            }

            @Override
            public void onAccuracyChanged(Sensor sensor, int accuracy) {}

        }, mProximitySensor, SensorManager.SENSOR_DELAY_FASTEST);
    }

    private void startActivitySafely(Intent intent) {
        intent.addFlags(
                Intent.FLAG_ACTIVITY_NEW_TASK
                | Intent.FLAG_ACTIVITY_SINGLE_TOP
                | Intent.FLAG_ACTIVITY_CLEAR_TOP);
        try {
            UserHandle user = new UserHandle(UserHandle.USER_CURRENT);
            mContext.startActivityAsUser(intent, null, user);
        } catch (ActivityNotFoundException e) {
            // Ignore
        }
    }
}
