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

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.provider.Settings;

import android.util.Log;

import com.cyanogenmod.settings.device.utils.FileUtils;

import java.lang.Integer;

public class CMActionsSettings {
    private static final String TAG = "CMActions";

    // Preference keys
    public static final String TOUCHSCREEN_GESTURE_CONTROL_KEY = "touchscreen_gesture_control";
    public static final String TOUCHSCREEN_C_GESTURE_KEY = "touchscreen_gesture_c";
    public static final String TOUCHSCREEN_E_GESTURE_KEY = "touchscreen_gesture_e";
    public static final String TOUCHSCREEN_S_GESTURE_KEY = "touchscreen_gesture_s";
    public static final String TOUCHSCREEN_V_GESTURE_KEY = "touchscreen_gesture_v";
    public static final String TOUCHSCREEN_W_GESTURE_KEY = "touchscreen_gesture_w";
    public static final String TOUCHSCREEN_Z_GESTURE_KEY = "touchscreen_gesture_z";

    // Proc nodes
    public static final String TOUCHSCREEN_GESTURE_MODE_NODE = "/sys/bus/i2c/devices/i2c-7/7-0038/ftsgesturemode";

    // Key Masks
    public static final int KEY_MASK_GESTURE_CONTROL = 0x40;
    public static final int KEY_MASK_GESTURE_C = 0x04;
    public static final int KEY_MASK_GESTURE_E = 0x08;
    public static final int KEY_MASK_GESTURE_S = 0x10;
    public static final int KEY_MASK_GESTURE_V = 0x01;
    public static final int KEY_MASK_GESTURE_W = 0x20;
    public static final int KEY_MASK_GESTURE_Z = 0x02;

    private static boolean mIsGestureEnabled;
    private static boolean mIsGesture_C_Enabled;
    private static boolean mIsGesture_E_Enabled;
    private static boolean mIsGesture_S_Enabled;
    private static boolean mIsGesture_V_Enabled;
    private static boolean mIsGesture_W_Enabled;
    private static boolean mIsGesture_Z_Enabled;

    private final Context mContext;

    public CMActionsSettings(Context context ) {
        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        loadPreferences(sharedPrefs);
        sharedPrefs.registerOnSharedPreferenceChangeListener(mPrefListener);
        mContext = context;
    }


    public static boolean areGesturesEnabled() {
        Log.d(TAG,"Are gestures enabled:" +mIsGestureEnabled);
        return mIsGestureEnabled;
    }

    public static void loadPreferences(SharedPreferences sharedPreferences) {
        mIsGestureEnabled = sharedPreferences.getBoolean(TOUCHSCREEN_GESTURE_CONTROL_KEY, false);
        mIsGesture_C_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_C_GESTURE_KEY, false);
        mIsGesture_E_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_E_GESTURE_KEY, false);
        mIsGesture_S_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_S_GESTURE_KEY, false);
        mIsGesture_V_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_V_GESTURE_KEY, false);
        mIsGesture_W_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_W_GESTURE_KEY, false);
        mIsGesture_Z_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_Z_GESTURE_KEY, false);
        updateGestureMode();
    }

    private SharedPreferences.OnSharedPreferenceChangeListener mPrefListener =
            new SharedPreferences.OnSharedPreferenceChangeListener() {
                @Override
                public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
                    boolean updated = true;

                    if (TOUCHSCREEN_GESTURE_CONTROL_KEY.equals(key)) {
                        mIsGestureEnabled = sharedPreferences.getBoolean(TOUCHSCREEN_GESTURE_CONTROL_KEY, false);
                        TouchscreenGestureSettings.gestureCat.setEnabled(areGesturesEnabled());
                    } else if (TOUCHSCREEN_C_GESTURE_KEY.equals(key)) {
                        mIsGesture_C_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_C_GESTURE_KEY, false);
                    } else if (TOUCHSCREEN_E_GESTURE_KEY.equals(key)) {
                        mIsGesture_E_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_E_GESTURE_KEY, false);
                    } else if (TOUCHSCREEN_S_GESTURE_KEY.equals(key)) {
                        mIsGesture_S_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_S_GESTURE_KEY, false);
                    } else if (TOUCHSCREEN_V_GESTURE_KEY.equals(key)) {
                        mIsGesture_V_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_V_GESTURE_KEY, false);
                    } else if (TOUCHSCREEN_W_GESTURE_KEY.equals(key)) {
                        mIsGesture_W_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_W_GESTURE_KEY, false);
                    } else if (TOUCHSCREEN_Z_GESTURE_KEY.equals(key)) {
                        mIsGesture_Z_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_Z_GESTURE_KEY, false);
                    } else if (TOUCHSCREEN_E_GESTURE_KEY.equals(key)) {
                        mIsGesture_E_Enabled = sharedPreferences.getBoolean(TOUCHSCREEN_E_GESTURE_KEY, false);
                    } else {
                        updated = false;
                    }
                    if (updated) {
                        updateGestureMode();
                    }
                }
            };

    /* Use bitwise logic to set gesture_mode in kernel driver.
       Check each if each key is enabled with & operator and KEY_MASK,
       if enabled toggle the appropriate bit with ^ XOR operator */
    public static void updateGestureMode() {
        int gesture_mode = 0;

        if (((gesture_mode & KEY_MASK_GESTURE_C) == 1) != mIsGestureEnabled)
            gesture_mode = (gesture_mode ^ KEY_MASK_GESTURE_CONTROL);
        if (((gesture_mode & KEY_MASK_GESTURE_C) == 1) != mIsGesture_C_Enabled)
            gesture_mode = (gesture_mode ^ KEY_MASK_GESTURE_C);
        if (((gesture_mode & KEY_MASK_GESTURE_E) == 1) != mIsGesture_E_Enabled)
            gesture_mode = (gesture_mode ^ KEY_MASK_GESTURE_E);
        if (((gesture_mode & KEY_MASK_GESTURE_S) == 1) != mIsGesture_S_Enabled)
            gesture_mode = (gesture_mode ^ KEY_MASK_GESTURE_S);
        if (((gesture_mode & KEY_MASK_GESTURE_V) == 1) != mIsGesture_V_Enabled)
            gesture_mode = (gesture_mode ^ KEY_MASK_GESTURE_V);
        if (((gesture_mode & KEY_MASK_GESTURE_W) == 1) != mIsGesture_W_Enabled)
            gesture_mode = (gesture_mode ^ KEY_MASK_GESTURE_W);
        if (((gesture_mode & KEY_MASK_GESTURE_Z) == 1) != mIsGesture_Z_Enabled)
            gesture_mode = (gesture_mode ^ KEY_MASK_GESTURE_Z);

        Log.d(TAG, "finished gesture mode: " + gesture_mode);
        FileUtils.writeLine(TOUCHSCREEN_GESTURE_MODE_NODE, String.format("%7s",
                Integer.toBinaryString(gesture_mode)).replace(' ', '0'));
    }

}
