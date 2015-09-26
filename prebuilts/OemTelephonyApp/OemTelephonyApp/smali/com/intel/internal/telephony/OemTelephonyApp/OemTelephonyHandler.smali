.class public Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;
.super Landroid/os/Handler;
.source "OemTelephonyHandler.java"


# static fields
.field private static mCipheringIndicationCancelled:Z

.field private static mCipheringNotificationEnabled:Z


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mCallMgr:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private final mDedicatedBearerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyCallNumber:Ljava/lang/String;

.field private mIsConcurrentVoiceAndDataAllowed:Z

.field private mIsDataSuspended:Z

.field private mIsEmergencyCallOngoing:Z

.field private mIsShowRegDeniedReason:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mSrvccListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

.field private mVoiceRegistrationDeniedReasonHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    sput-boolean v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCipheringNotificationEnabled:Z

    .line 153
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCipheringIndicationCancelled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 136
    iput-boolean v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsDataSuspended:Z

    .line 137
    iput-boolean v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsConcurrentVoiceAndDataAllowed:Z

    .line 139
    iput-object v4, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCallMgr:Lcom/android/internal/telephony/CallManager;

    .line 140
    iput-boolean v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    .line 141
    const-string v2, ""

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mEmergencyCallNumber:Ljava/lang/String;

    .line 144
    iput-boolean v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsShowRegDeniedReason:Z

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    .line 280
    new-instance v2, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler$1;

    invoke-direct {v2, p0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler$1;-><init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;)V

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonHandler:Landroid/os/Handler;

    .line 161
    iput-object p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mContext:Landroid/content/Context;

    .line 162
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 163
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 164
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcTracker;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDataConnectionTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 165
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v2, p0, v5, v4}, Lcom/android/internal/telephony/BaseCommands;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    sget-boolean v2, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCipheringNotificationEnabled:Z

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCallMgr:Lcom/android/internal/telephony/CallManager;

    .line 171
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCallMgr:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x5

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsShowRegDeniedReason:Z

    .line 174
    iget-boolean v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsShowRegDeniedReason:Z

    if-eqz v2, :cond_1

    .line 176
    :try_start_0
    const-class v2, Lcom/android/internal/telephony/Phone;

    const-string v3, "registerForVoiceRegistrationDeniedReasonChanged"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 179
    .local v1, "registerForVoiceRegistrationDeniedReasonChanged":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 188
    .end local v1    # "registerForVoiceRegistrationDeniedReasonChanged":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v2, "OemTelephonyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getting method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 185
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    const-string v2, "OemTelephonyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while invoking method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 181
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private broadcastEmergencyCallIntent(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intel.intent.action.EMERGENCY_CALL_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 234
    const-string v1, "emergencyCallOngoing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    const-string v1, "OemTelephonyHandler"

    const-string v2, "intent sent intel.intent.action.EMERGENCY_CALL_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method

.method private cancelNotification(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/16 v3, 0x3dc

    .line 191
    if-ne p1, v3, :cond_1

    sget-boolean v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCipheringIndicationCancelled:Z

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 198
    .local v0, "notifMgr":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 200
    if-ne p1, v3, :cond_0

    .line 201
    const/4 v1, 0x1

    sput-boolean v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCipheringIndicationCancelled:Z

    goto :goto_0
.end method

.method private handleUnsolicitedOemHookRaw([B)V
    .locals 93
    .param p1, "rawData"    # [B

    .prologue
    .line 408
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v89, v0

    if-gtz v89, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v62

    .line 411
    .local v62, "p":Landroid/os/Parcel;
    const/16 v89, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v90, v0

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 412
    const/16 v89, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 414
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 416
    .local v53, "msgId":I
    packed-switch v53, :pswitch_data_0

    .line 1127
    :pswitch_0
    const-string v89, "OemTelephonyHandler"

    new-instance v90, Ljava/lang/StringBuilder;

    invoke-direct/range {v90 .. v90}, Ljava/lang/StringBuilder;-><init>()V

    const-string v91, "Unhandled oem hook raw event, msgId: "

    invoke-virtual/range {v90 .. v91}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    move-object/from16 v0, v90

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v90

    invoke-virtual/range {v90 .. v90}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v89 .. v90}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_1
    :goto_1
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 419
    :pswitch_1
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.MODEM_SENSOR_THRESHOLD_REACHED"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v38, "intent":Landroid/content/Intent;
    const-string v89, "sensorId"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string v89, "temperature"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 432
    .end local v38    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 433
    .local v72, "sensorNameLength":I
    new-instance v71, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, v71

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v72

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 434
    .local v71, "sensorName":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0xa

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 436
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.MODEM_SENSOR_THRESHOLD_REACHED_V2"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "sensorId"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v89, "temperature"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 449
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v71    # "sensorName":Ljava/lang/String;
    .end local v72    # "sensorNameLength":I
    :pswitch_3
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    if-nez v89, :cond_2

    const/16 v39, 0x1

    .line 451
    .local v39, "isDataSuspended":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsDataSuspended:Z

    move/from16 v89, v0

    move/from16 v0, v39

    move/from16 v1, v89

    if-eq v0, v1, :cond_1

    .line 452
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsDataSuspended:Z

    .line 453
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsDataSuspended:Z

    move/from16 v89, v0

    if-eqz v89, :cond_3

    .line 454
    const-string v89, "gsm.internal.oem.datastate"

    const-string v90, "suspended"

    invoke-static/range {v89 .. v90}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 449
    .end local v39    # "isDataSuspended":Z
    :cond_2
    const/16 v39, 0x0

    goto :goto_2

    .line 457
    .restart local v39    # "isDataSuspended":Z
    :cond_3
    const-string v89, "gsm.internal.oem.datastate"

    const-string v90, "resumed"

    invoke-static/range {v89 .. v90}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 465
    .end local v39    # "isDataSuspended":Z
    :pswitch_4
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 466
    .local v55, "mtClass":I
    const/16 v89, 0x1

    move/from16 v0, v89

    move/from16 v1, v55

    if-ne v0, v1, :cond_4

    const/16 v89, 0x1

    :goto_3
    move/from16 v0, v89

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsConcurrentVoiceAndDataAllowed:Z

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsConcurrentVoiceAndDataAllowed:Z

    move/from16 v89, v0

    if-eqz v89, :cond_5

    .line 468
    const-string v89, "gsm.internal.oem.concurrency"

    const-string v90, "allowed"

    invoke-static/range {v89 .. v90}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v89

    sget-object v90, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v89

    move-object/from16 v1, v90

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 466
    :cond_4
    const/16 v89, 0x0

    goto :goto_3

    .line 473
    :cond_5
    const-string v89, "gsm.internal.oem.concurrency"

    const-string v90, "notallowed"

    invoke-static/range {v89 .. v90}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v89

    sget-object v90, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v89

    move-object/from16 v1, v90

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 483
    .end local v55    # "mtClass":I
    :pswitch_5
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.IMS_REGISTRATION_STATE_CHANGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v90, "IMSState"

    const/16 v89, 0x1

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v91

    move/from16 v0, v89

    move/from16 v1, v91

    if-ne v0, v1, :cond_6

    const/16 v89, 0x1

    :goto_4
    move-object/from16 v0, v38

    move-object/from16 v1, v90

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 485
    :cond_6
    const/16 v89, 0x0

    goto :goto_4

    .line 495
    .end local v38    # "intent":Landroid/content/Intent;
    :pswitch_6
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 497
    .local v25, "curr_status":I
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.IMS_NW_SUPPORT_STATE_CHANGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "IMSState"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 510
    .end local v25    # "curr_status":I
    .end local v38    # "intent":Landroid/content/Intent;
    :pswitch_7
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 512
    .local v82, "type":I
    new-instance v52, Landroid/content/Intent;

    invoke-direct/range {v52 .. v52}, Landroid/content/Intent;-><init>()V

    .line 513
    .local v52, "msg":Landroid/content/Intent;
    packed-switch v82, :pswitch_data_1

    .line 524
    :pswitch_8
    const-string v89, "OemTelephonyHandler"

    new-instance v90, Ljava/lang/StringBuilder;

    invoke-direct/range {v90 .. v90}, Ljava/lang/StringBuilder;-><init>()V

    const-string v91, "Unhandled crashtool event type: "

    invoke-virtual/range {v90 .. v91}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    move-object/from16 v0, v90

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v90

    invoke-virtual/range {v90 .. v90}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v89 .. v90}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 515
    :pswitch_9
    const-string v89, "intel.intent.action.phonedoctor.REPORT_INFO"

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    :goto_5
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 530
    .local v57, "nameSize":I
    new-instance v56, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 531
    .local v56, "name":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x40

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 533
    const/16 v89, 0x6

    move/from16 v0, v89

    new-array v0, v0, [I

    move-object/from16 v73, v0

    .line 534
    .local v73, "sizeData":[I
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_6
    const/16 v89, 0x6

    move/from16 v0, v32

    move/from16 v1, v89

    if-ge v0, v1, :cond_7

    .line 535
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    aput v89, v73, v32

    .line 534
    add-int/lit8 v32, v32, 0x1

    goto :goto_6

    .line 518
    .end local v32    # "i":I
    .end local v56    # "name":Ljava/lang/String;
    .end local v57    # "nameSize":I
    .end local v73    # "sizeData":[I
    :pswitch_a
    const-string v89, "intel.intent.action.phonedoctor.REPORT_ERROR"

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 521
    :pswitch_b
    const-string v89, "intel.intent.action.phonedoctor.REPORT_STATS"

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 538
    .restart local v32    # "i":I
    .restart local v56    # "name":Ljava/lang/String;
    .restart local v57    # "nameSize":I
    .restart local v73    # "sizeData":[I
    :cond_7
    const/16 v32, 0x0

    :goto_7
    const/16 v89, 0x6

    move/from16 v0, v32

    move/from16 v1, v89

    if-ge v0, v1, :cond_b

    .line 539
    aget v89, v73, v32

    if-eqz v89, :cond_8

    .line 540
    new-instance v26, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    aget v90, v73, v32

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 541
    .local v26, "data":Ljava/lang/String;
    new-instance v89, Ljava/lang/StringBuilder;

    invoke-direct/range {v89 .. v89}, Ljava/lang/StringBuilder;-><init>()V

    const-string v90, "intel.intent.extra.phonedoctor.DATA"

    invoke-virtual/range {v89 .. v90}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v89

    move-object/from16 v0, v89

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    .end local v26    # "data":Ljava/lang/String;
    :cond_8
    const/16 v89, 0x2

    move/from16 v0, v32

    move/from16 v1, v89

    if-eq v0, v1, :cond_9

    const/16 v89, 0x4

    move/from16 v0, v32

    move/from16 v1, v89

    if-eq v0, v1, :cond_9

    const/16 v89, 0x5

    move/from16 v0, v32

    move/from16 v1, v89

    if-ne v0, v1, :cond_a

    .line 545
    :cond_9
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move/from16 v0, v89

    add-int/lit16 v0, v0, 0x200

    move/from16 v89, v0

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 538
    :goto_8
    add-int/lit8 v32, v32, 0x1

    goto :goto_7

    .line 547
    :cond_a
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move/from16 v0, v89

    add-int/lit16 v0, v0, 0xff

    move/from16 v89, v0

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_8

    .line 552
    :cond_b
    const-string v89, "TFT_STAT_CDROP"

    move-object/from16 v0, v56

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v89

    if-eqz v89, :cond_c

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    const/16 v90, 0x0

    new-instance v91, Landroid/content/IntentFilter;

    const-string v92, "android.intent.action.BATTERY_CHANGED"

    invoke-direct/range {v91 .. v92}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v89 .. v91}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v14

    .line 559
    .local v14, "batteryIntent":Landroid/content/Intent;
    if-eqz v14, :cond_c

    .line 560
    const-string v89, "level"

    const/16 v90, -0x1

    move-object/from16 v0, v89

    move/from16 v1, v90

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    .line 561
    .local v42, "level":I
    const-string v89, "voltage"

    const/16 v90, -0x1

    move-object/from16 v0, v89

    move/from16 v1, v90

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v83

    .line 562
    .local v83, "voltage":I
    const-string v89, "temperature"

    const/16 v90, -0x1

    move-object/from16 v0, v89

    move/from16 v1, v90

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v80

    .line 564
    .local v80, "temperature":I
    const-string v89, "plugged"

    const/16 v90, -0x1

    move-object/from16 v0, v89

    move/from16 v1, v90

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v66

    .line 566
    .local v66, "plugged":I
    new-instance v13, Ljava/lang/String;

    new-instance v89, Ljava/lang/StringBuilder;

    invoke-direct/range {v89 .. v89}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v89

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v89

    const-string v90, ", "

    invoke-virtual/range {v89 .. v90}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v89

    move-object/from16 v0, v89

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v89

    const-string v90, ", "

    invoke-virtual/range {v89 .. v90}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v89

    move-object/from16 v0, v89

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v89

    const-string v90, ", "

    invoke-virtual/range {v89 .. v90}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v89

    move-object/from16 v0, v89

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, v89

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 568
    .local v13, "batteryData":Ljava/lang/String;
    const-string v89, "intel.intent.extra.phonedoctor.DATA5"

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    .end local v13    # "batteryData":Ljava/lang/String;
    .end local v14    # "batteryIntent":Landroid/content/Intent;
    .end local v42    # "level":I
    .end local v66    # "plugged":I
    .end local v80    # "temperature":I
    .end local v83    # "voltage":I
    :cond_c
    const-string v89, "intel.intent.extra.phonedoctor.TYPE"

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 582
    .end local v32    # "i":I
    .end local v52    # "msg":Landroid/content/Intent;
    .end local v56    # "name":Ljava/lang/String;
    .end local v57    # "nameSize":I
    .end local v73    # "sizeData":[I
    .end local v82    # "type":I
    :pswitch_c
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 583
    .local v70, "responseSize":I
    new-instance v69, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, v69

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v70

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 585
    .local v69, "response":Ljava/lang/String;
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.ACTION_COEX_INFO"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "CoexInfo"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 596
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v69    # "response":Ljava/lang/String;
    .end local v70    # "responseSize":I
    :pswitch_d
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 597
    .local v9, "apnSize":I
    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-direct {v8, v0, v1, v9}, Ljava/lang/String;-><init>([BII)V

    .line 598
    .local v8, "apn":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x65

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 600
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v65

    .line 601
    .local v65, "pdpTypeSize":I
    new-instance v64, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v65

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 603
    .local v64, "pdpType":Ljava/lang/String;
    const-string v89, "OemTelephonyHandler"

    new-instance v90, Ljava/lang/StringBuilder;

    invoke-direct/range {v90 .. v90}, Ljava/lang/StringBuilder;-><init>()V

    const-string v91, "RIL_OEM_HOOK_RAW_UNSOL_NETWORK_APN_IND - APN: "

    invoke-virtual/range {v90 .. v91}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    const-string v91, " PDP Type: "

    invoke-virtual/range {v90 .. v91}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    move-object/from16 v0, v90

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    invoke-virtual/range {v90 .. v90}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v89 .. v90}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 611
    .end local v8    # "apn":Ljava/lang/String;
    .end local v9    # "apnSize":I
    .end local v64    # "pdpType":Ljava/lang/String;
    .end local v65    # "pdpTypeSize":I
    :pswitch_e
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0x4

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 612
    .local v28, "error":Ljava/lang/String;
    const-string v29, ""

    .line 614
    .local v29, "errorMsg":Ljava/lang/String;
    const-string v89, "6F"

    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v89

    if-eqz v89, :cond_d

    .line 615
    const-string v29, "SIM Technical Problem"

    .line 626
    :goto_9
    new-instance v89, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v90, v0

    invoke-interface/range {v90 .. v90}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v90

    invoke-direct/range {v89 .. v90}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v90, 0x1080078

    invoke-virtual/range {v89 .. v90}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v89

    const-string v90, "SIM Error"

    invoke-virtual/range {v89 .. v90}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v89

    const/16 v90, 0x1

    invoke-virtual/range {v89 .. v90}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v89

    const/16 v90, 0x1

    invoke-virtual/range {v89 .. v90}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v59

    .line 632
    .local v59, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    const-string v90, "notification"

    invoke-virtual/range {v89 .. v90}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/app/NotificationManager;

    .line 635
    .local v49, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v89, 0x3db

    move-object/from16 v0, v49

    move/from16 v1, v89

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 616
    .end local v49    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v59    # "notification":Landroid/app/Notification;
    :cond_d
    const-string v89, "9240"

    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v89

    if-eqz v89, :cond_e

    .line 617
    const-string v29, "Memory Problem"

    goto :goto_9

    .line 618
    :cond_e
    const-string v89, "9804"

    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v89

    if-eqz v89, :cond_f

    .line 619
    const-string v29, "Access security policy not fulfilled or secret code rejected"

    goto :goto_9

    .line 620
    :cond_f
    const-string v89, "9840"

    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v89

    if-eqz v89, :cond_10

    .line 621
    const-string v29, "Secret code locked"

    goto :goto_9

    .line 623
    :cond_10
    new-instance v89, Ljava/lang/StringBuilder;

    invoke-direct/range {v89 .. v89}, Ljava/lang/StringBuilder;-><init>()V

    const-string v90, "Unknown error code: "

    invoke-virtual/range {v89 .. v90}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_9

    .line 641
    .end local v28    # "error":Ljava/lang/String;
    .end local v29    # "errorMsg":Ljava/lang/String;
    :pswitch_f
    const-string v89, "OemTelephonyHandler"

    const-string v90, "RIL_OEM_HOOK_RAW_UNSOL_CIPHERING_IND"

    invoke-static/range {v89 .. v90}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 643
    .local v78, "status":I
    const-string v79, ""

    .line 644
    .local v79, "statusMsg":Ljava/lang/String;
    const/high16 v34, 0x7f020000

    .line 646
    .local v34, "icon":I
    if-nez v78, :cond_13

    .line 647
    const-string v79, "OFF"

    .line 652
    :cond_11
    :goto_a
    const-string v89, "OemTelephonyHandler"

    new-instance v90, Ljava/lang/StringBuilder;

    invoke-direct/range {v90 .. v90}, Ljava/lang/StringBuilder;-><init>()V

    const-string v91, "Ciphering Status "

    invoke-virtual/range {v90 .. v91}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    move-object/from16 v0, v90

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    invoke-virtual/range {v90 .. v90}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v89 .. v90}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-boolean v89, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCipheringNotificationEnabled:Z

    if-eqz v89, :cond_12

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    const-string v90, "notification"

    invoke-virtual/range {v89 .. v90}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/app/NotificationManager;

    .line 659
    .local v58, "notifMgr":Landroid/app/NotificationManager;
    if-eqz v58, :cond_12

    .line 660
    if-nez v78, :cond_14

    .line 661
    new-instance v89, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v90, v0

    invoke-interface/range {v90 .. v90}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v90

    invoke-direct/range {v89 .. v90}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v89

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v89

    new-instance v90, Ljava/lang/StringBuilder;

    invoke-direct/range {v90 .. v90}, Ljava/lang/StringBuilder;-><init>()V

    const-string v91, "Ciphering: "

    invoke-virtual/range {v90 .. v91}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    move-object/from16 v0, v90

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    invoke-virtual/range {v90 .. v90}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v90

    invoke-virtual/range {v89 .. v90}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v89

    const/16 v90, 0x1

    invoke-virtual/range {v89 .. v90}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v59

    .line 668
    .restart local v59    # "notification":Landroid/app/Notification;
    const/16 v89, 0x3dc

    move-object/from16 v0, v58

    move/from16 v1, v89

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 669
    const/16 v89, 0x0

    sput-boolean v89, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCipheringIndicationCancelled:Z

    .line 677
    .end local v58    # "notifMgr":Landroid/app/NotificationManager;
    .end local v59    # "notification":Landroid/app/Notification;
    :cond_12
    :goto_b
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.CIPHERING_STATE_CHANGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "CipheringStatus"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 648
    .end local v38    # "intent":Landroid/content/Intent;
    :cond_13
    const/16 v89, 0x1

    move/from16 v0, v78

    move/from16 v1, v89

    if-ne v0, v1, :cond_11

    .line 649
    const-string v79, "ON"

    goto/16 :goto_a

    .line 671
    .restart local v58    # "notifMgr":Landroid/app/NotificationManager;
    :cond_14
    const/16 v89, 0x3dc

    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-direct {v0, v1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->cancelNotification(I)V

    goto :goto_b

    .line 687
    .end local v34    # "icon":I
    .end local v58    # "notifMgr":Landroid/app/NotificationManager;
    .end local v78    # "status":I
    .end local v79    # "statusMsg":Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    check-cast v89, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v89 .. v89}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v20

    .line 689
    .local v20, "callTracker":Lcom/android/internal/telephony/CallTracker;
    if-eqz v20, :cond_1

    goto/16 :goto_1

    .line 699
    .end local v20    # "callTracker":Lcom/android/internal/telephony/CallTracker;
    :pswitch_11
    new-instance v36, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;

    invoke-direct/range {v36 .. v36}, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;-><init>()V

    .line 700
    .local v36, "info":Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v89

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;->mTftInfoItems:Ljava/util/List;

    .line 701
    new-instance v89, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v90

    const/16 v91, 0x32

    move-object/from16 v0, v89

    move-object/from16 v1, p1

    move/from16 v2, v90

    move/from16 v3, v91

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v89 .. v89}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;->mIface:Ljava/lang/String;

    .line 703
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x32

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 704
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v36

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;->mPCid:I

    .line 705
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 706
    .local v22, "count":I
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_c
    move/from16 v0, v32

    move/from16 v1, v22

    if-ge v0, v1, :cond_18

    const/16 v89, 0x7

    move/from16 v0, v32

    move/from16 v1, v89

    if-ge v0, v1, :cond_18

    .line 707
    new-instance v37, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;

    invoke-direct/range {v37 .. v37}, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;-><init>()V

    .line 708
    .local v37, "infoItem":Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v36

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;->mCid:I

    .line 709
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v37

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mPfId:I

    .line 710
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v37

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mEpIdx:I

    .line 711
    const/16 v89, 0x0

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceAddr:Ljava/net/InetAddress;

    .line 712
    const/16 v89, 0x0

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceMask:Ljava/net/InetAddress;

    .line 713
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0x41

    move-object/from16 v0, p1

    move/from16 v1, v89

    move/from16 v2, v90

    invoke-direct {v6, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 715
    .local v6, "addressv4":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 716
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x41

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 717
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0x41

    move-object/from16 v0, p1

    move/from16 v1, v89

    move/from16 v2, v90

    invoke-direct {v7, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 719
    .local v7, "addressv6":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 720
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x41

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 721
    new-instance v50, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0x41

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 723
    .local v50, "maskv4":Ljava/lang/String;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v50

    .line 724
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x41

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 725
    new-instance v51, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0x41

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 727
    .local v51, "maskv6":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v51

    .line 728
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x41

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 729
    invoke-static {v6}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v89

    if-eqz v89, :cond_15

    invoke-static/range {v50 .. v50}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v89

    if-eqz v89, :cond_15

    .line 731
    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceAddr:Ljava/net/InetAddress;

    .line 732
    invoke-static/range {v50 .. v50}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceMask:Ljava/net/InetAddress;

    .line 734
    :cond_15
    invoke-static {v7}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v89

    if-eqz v89, :cond_16

    invoke-static/range {v51 .. v51}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v89

    if-eqz v89, :cond_16

    .line 736
    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceAddr:Ljava/net/InetAddress;

    .line 737
    invoke-static/range {v51 .. v51}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceMask:Ljava/net/InetAddress;

    .line 739
    :cond_16
    invoke-static {v6}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v89

    if-nez v89, :cond_17

    invoke-static {v7}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v89

    if-nez v89, :cond_17

    .line 741
    const-string v89, "OemTelephonyHandler"

    const-string v90, "Address not parsed properly!"

    invoke-static/range {v89 .. v90}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v89, "0.0.0.0"

    invoke-static/range {v89 .. v89}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceAddr:Ljava/net/InetAddress;

    .line 744
    const-string v89, "0.0.0.0"

    invoke-static/range {v89 .. v89}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSourceMask:Ljava/net/InetAddress;

    .line 747
    :cond_17
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v37

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mPNumber:I

    .line 748
    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0xc

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 749
    .local v27, "dstRng":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mDstRng:Ljava/lang/String;

    .line 750
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0xc

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 751
    new-instance v75, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0xc

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 752
    .local v75, "srcRng":Ljava/lang/String;
    invoke-virtual/range {v75 .. v75}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSrcRng:Ljava/lang/String;

    .line 753
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0xc

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 754
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v37

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mSpi:I

    .line 755
    new-instance v81, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    const/16 v90, 0xc

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v90

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 756
    .local v81, "tosAndMask":Ljava/lang/String;
    invoke-virtual/range {v81 .. v81}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mTosAndMask:Ljava/lang/String;

    .line 757
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0xc

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 758
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v37

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mFlowLabel:I

    .line 759
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v37

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mDirection:I

    .line 760
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v37

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;->mNwId:I

    .line 761
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;->mTftInfoItems:Ljava/util/List;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_c

    .line 783
    .end local v6    # "addressv4":Ljava/lang/String;
    .end local v7    # "addressv6":Ljava/lang/String;
    .end local v27    # "dstRng":Ljava/lang/String;
    .end local v37    # "infoItem":Lcom/intel/internal/telephony/OemTelephony/TftInfoItem;
    .end local v50    # "maskv4":Ljava/lang/String;
    .end local v51    # "maskv6":Ljava/lang/String;
    .end local v75    # "srcRng":Ljava/lang/String;
    .end local v81    # "tosAndMask":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v90, v0

    monitor-enter v90

    .line 784
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v89

    if-eqz v89, :cond_19

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    .local v41, "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_start_1
    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;->onTftChanged(Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    .line 788
    :catch_0
    move-exception v30

    .line 789
    .local v30, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v89, "OemTelephonyHandler"

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, v89

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 792
    .end local v30    # "ex":Landroid/os/RemoteException;
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :catchall_0
    move-exception v89

    monitor-exit v90
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v89

    .restart local v33    # "i$":Ljava/util/Iterator;
    :cond_19
    :try_start_3
    monitor-exit v90
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 799
    .end local v22    # "count":I
    .end local v32    # "i":I
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v36    # "info":Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;
    :pswitch_12
    new-instance v67, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;

    invoke-direct/range {v67 .. v67}, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;-><init>()V

    .line 800
    .local v67, "qosInfo":Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    new-instance v89, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v90

    const/16 v91, 0x32

    move-object/from16 v0, v89

    move-object/from16 v1, p1

    move/from16 v2, v90

    move/from16 v3, v91

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v89 .. v89}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v67

    iput-object v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mIface:Ljava/lang/String;

    .line 802
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x32

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 803
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v67

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mPCid:I

    .line 804
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v67

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mCid:I

    .line 805
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v67

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mQci:I

    .line 806
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v67

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mDlGbr:I

    .line 807
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v67

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mUlGbr:I

    .line 808
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v67

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mDlMbr:I

    .line 809
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v89

    move/from16 v0, v89

    move-object/from16 v1, v67

    iput v0, v1, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->mUlMbr:I

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v90, v0

    monitor-enter v90

    .line 811
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v89

    if-eqz v89, :cond_1a

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 814
    .restart local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_start_5
    move-object/from16 v0, v41

    move-object/from16 v1, v67

    invoke-interface {v0, v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;->onQosChanged(Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    .line 815
    :catch_1
    move-exception v30

    .line 816
    .restart local v30    # "ex":Landroid/os/RemoteException;
    :try_start_6
    const-string v89, "OemTelephonyHandler"

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, v89

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 819
    .end local v30    # "ex":Landroid/os/RemoteException;
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :catchall_1
    move-exception v89

    monitor-exit v90
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v89

    .restart local v33    # "i$":Ljava/util/Iterator;
    :cond_1a
    :try_start_7
    monitor-exit v90
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 826
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v67    # "qosInfo":Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    :pswitch_13
    new-instance v89, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v90

    const/16 v91, 0x32

    move-object/from16 v0, v89

    move-object/from16 v1, p1

    move/from16 v2, v90

    move/from16 v3, v91

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v89 .. v89}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 828
    .local v35, "iface":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x32

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 829
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v63

    .line 830
    .local v63, "pCid":I
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 832
    .local v21, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v90, v0

    monitor-enter v90

    .line 833
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33    # "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v89

    if-eqz v89, :cond_1b

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 836
    .restart local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_start_9
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;->onDedicatedBearerClosed(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_f

    .line 837
    :catch_2
    move-exception v30

    .line 838
    .restart local v30    # "ex":Landroid/os/RemoteException;
    :try_start_a
    const-string v89, "OemTelephonyHandler"

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, v89

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 841
    .end local v30    # "ex":Landroid/os/RemoteException;
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :catchall_2
    move-exception v89

    monitor-exit v90
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v89

    .restart local v33    # "i$":Ljava/util/Iterator;
    :cond_1b
    :try_start_b
    monitor-exit v90
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_1

    .line 848
    .end local v21    # "cid":I
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v35    # "iface":Ljava/lang/String;
    .end local v63    # "pCid":I
    :pswitch_14
    new-instance v89, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v90

    const/16 v91, 0x32

    move-object/from16 v0, v89

    move-object/from16 v1, p1

    move/from16 v2, v90

    move/from16 v3, v91

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v89 .. v89}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 850
    .restart local v35    # "iface":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x32

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 851
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v63

    .line 852
    .restart local v63    # "pCid":I
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 854
    .restart local v21    # "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v90, v0

    monitor-enter v90

    .line 855
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v89

    if-eqz v89, :cond_1c

    .line 856
    const-string v89, "OemTelephonyHandler"

    const-string v91, "no dedicated bearer listener registered"

    move-object/from16 v0, v89

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v89

    if-eqz v89, :cond_1d

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 861
    .restart local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :try_start_d
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;->onDedicatedBearerOpen(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_10

    .line 862
    :catch_3
    move-exception v30

    .line 863
    .restart local v30    # "ex":Landroid/os/RemoteException;
    :try_start_e
    const-string v89, "OemTelephonyHandler"

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, v89

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 866
    .end local v30    # "ex":Landroid/os/RemoteException;
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :catchall_3
    move-exception v89

    monitor-exit v90
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v89

    .restart local v33    # "i$":Ljava/util/Iterator;
    :cond_1d
    :try_start_f
    monitor-exit v90
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/16 :goto_1

    .line 872
    .end local v21    # "cid":I
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v35    # "iface":Ljava/lang/String;
    .end local v63    # "pCid":I
    :pswitch_15
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v77

    .line 873
    .local v77, "srvcch":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    move-object/from16 v90, v0

    monitor-enter v90

    .line 874
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33    # "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v89

    if-eqz v89, :cond_1e

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 876
    .local v41, "l":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :try_start_11
    move-object/from16 v0, v41

    move/from16 v1, v77

    invoke-interface {v0, v1}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;->onSrvccHandoverStateChanged(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_11

    .line 877
    :catch_4
    move-exception v30

    .line 878
    .restart local v30    # "ex":Landroid/os/RemoteException;
    :try_start_12
    const-string v89, "OemTelephonyHandler"

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, v89

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 881
    .end local v30    # "ex":Landroid/os/RemoteException;
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :catchall_4
    move-exception v89

    monitor-exit v90
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v89

    .restart local v33    # "i$":Ljava/util/Iterator;
    :cond_1e
    :try_start_13
    monitor-exit v90
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto/16 :goto_1

    .line 887
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v77    # "srvcch":I
    :pswitch_16
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 889
    .local v76, "srvcc_ho_status":I
    if-nez v76, :cond_20

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    move-object/from16 v90, v0

    monitor-enter v90

    .line 891
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33    # "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v89

    if-eqz v89, :cond_1f

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 893
    .restart local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :try_start_15
    invoke-interface/range {v41 .. v41}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;->onSrvccSyncNeeded()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_12

    .line 894
    :catch_5
    move-exception v30

    .line 895
    .restart local v30    # "ex":Landroid/os/RemoteException;
    :try_start_16
    const-string v89, "OemTelephonyHandler"

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, v89

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 898
    .end local v30    # "ex":Landroid/os/RemoteException;
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v41    # "l":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :catchall_5
    move-exception v89

    monitor-exit v90
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    throw v89

    .restart local v33    # "i$":Ljava/util/Iterator;
    :cond_1f
    :try_start_17
    monitor-exit v90
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto/16 :goto_1

    .line 900
    .end local v33    # "i$":Ljava/util/Iterator;
    :cond_20
    const-string v89, "OemTelephonyHandler"

    new-instance v90, Ljava/lang/StringBuilder;

    invoke-direct/range {v90 .. v90}, Ljava/lang/StringBuilder;-><init>()V

    const-string v91, "Unexpected value for srvcc_ho_status "

    invoke-virtual/range {v90 .. v91}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v90

    move-object/from16 v0, v90

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v90

    invoke-virtual/range {v90 .. v90}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v89 .. v90}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 908
    .end local v76    # "srvcc_ho_status":I
    :pswitch_17
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v68

    .line 909
    .local v68, "regStatus":I
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 910
    .local v12, "bandLength":I
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-direct {v11, v0, v1, v12}, Ljava/lang/String;-><init>([BII)V

    .line 911
    .local v11, "band":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    add-int/lit8 v89, v89, 0x14

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 913
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.ACTION_REG_STATUS_AND_BAND_IND"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 915
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "regStatus"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    const-string v89, "band"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 925
    .end local v11    # "band":Ljava/lang/String;
    .end local v12    # "bandLength":I
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v68    # "regStatus":I
    :pswitch_18
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 926
    .local v24, "csgSelCause":I
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 928
    .local v23, "csgId":I
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.CSG_STATE_CHANGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "CsgSelCause"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    const/16 v89, -0x1

    move/from16 v0, v23

    move/from16 v1, v89

    if-eq v0, v1, :cond_21

    .line 933
    const-string v89, "CsgCellId"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v89, "CsgRecNum"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    const-string v89, "CsgHnbNum"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    const-string v89, "CsgHnbName"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string v89, "CsgOperId"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v89, "CsgAcT"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    const-string v89, "CsgIdList"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 949
    .end local v23    # "csgId":I
    .end local v24    # "csgSelCause":I
    .end local v38    # "intent":Landroid/content/Intent;
    :pswitch_19
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.APDCLK_FREQUENCY_CHANGED"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "FrequencyChanged"

    new-instance v90, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;

    move-object/from16 v0, v90

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;-><init>(Landroid/os/Parcel;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 962
    .end local v38    # "intent":Landroid/content/Intent;
    :pswitch_1a
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.ACTION_IDC_REG_STATUS_AND_BAND_IND"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 964
    .restart local v38    # "intent":Landroid/content/Intent;
    const-string v89, "subId"

    const-wide/16 v90, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-wide/from16 v2, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 965
    const-string v89, "regStatus"

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v90

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 967
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 968
    .restart local v12    # "bandLength":I
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-direct {v11, v0, v1, v12}, Ljava/lang/String;-><init>([BII)V

    .line 969
    .restart local v11    # "band":Ljava/lang/String;
    const-string v89, "band"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1003
    .end local v11    # "band":Ljava/lang/String;
    .end local v12    # "bandLength":I
    .end local v38    # "intent":Landroid/content/Intent;
    :pswitch_1b
    const/4 v4, -0x1

    .line 1006
    .local v4, "EMPTY_ARG":I
    const-string v5, "+XNRTCWSI: "

    .line 1008
    .local v5, "URC_PREFIX":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->readInt()I

    move-result v54

    .line 1009
    .local v54, "msgSize":I
    new-instance v52, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1010
    .local v52, "msg":Ljava/lang/String;
    invoke-virtual/range {v62 .. v62}, Landroid/os/Parcel;->dataPosition()I

    move-result v89

    move/from16 v0, v89

    add-int/lit16 v0, v0, 0x100

    move/from16 v89, v0

    move-object/from16 v0, v62

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1012
    const-string v89, "+XNRTCWSI: "

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v89

    if-eqz v89, :cond_1

    .line 1019
    const-string v89, "+XNRTCWSI: "

    invoke-virtual/range {v89 .. v89}, Ljava/lang/String;->length()I

    move-result v89

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v90

    move-object/from16 v0, v52

    move/from16 v1, v89

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v52

    .line 1021
    const-string v89, ","

    move-object/from16 v0, v52

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1022
    .local v10, "args":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v89, v0

    const/16 v90, 0x2d

    move/from16 v0, v89

    move/from16 v1, v90

    if-ne v0, v1, :cond_1

    .line 1027
    const/16 v89, 0x0

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 1028
    .local v43, "lte_active":I
    const/16 v89, 0x1

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    .line 1029
    .local v86, "wlan_safe_rx_min":I
    const/16 v89, 0x2

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v85

    .line 1030
    .local v85, "wlan_safe_rx_max":I
    const/16 v89, 0x3

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1031
    .local v17, "bt_safe_rx_min":I
    const/16 v89, 0x4

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1032
    .local v16, "bt_safe_rx_max":I
    const/16 v89, 0x5

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    .line 1033
    .local v74, "sps_start":I
    const/16 v89, 0x6

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 1034
    .local v47, "lte_sps_periodicity":I
    const/16 v89, 0x7

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 1035
    .local v45, "lte_sps_duration":I
    const/16 v89, 0x8

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 1036
    .local v46, "lte_sps_initial_offset":I
    const/16 v89, 0x9

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .line 1037
    .local v44, "lte_bitmap":I
    const/16 v89, 0xa

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v88

    .line 1038
    .local v88, "wlan_safe_tx_min":I
    const/16 v89, 0xb

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v87

    .line 1039
    .local v87, "wlan_safe_tx_max":I
    const/16 v89, 0xc

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1040
    .local v19, "bt_safe_tx_min":I
    const/16 v89, 0xd

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1041
    .local v18, "bt_safe_tx_max":I
    const/16 v89, 0xe

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 1042
    .local v48, "lte_tdd_spl_sf_num":I
    const/16 v89, 0xf

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    .line 1043
    .local v61, "num_of_wlan_nrt_safe_tx_power":I
    const/16 v89, 0x10

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    .line 1045
    .local v60, "num_of_bt_nrt_safe_tx_power":I
    const/16 v89, -0x1

    move/from16 v0, v89

    move/from16 v1, v44

    if-eq v0, v1, :cond_22

    .line 1046
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.ACTION_IDC_LTE_FRAME_IND"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .restart local v38    # "intent":Landroid/content/Intent;
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 1050
    .local v31, "extras":Landroid/os/Bundle;
    const-string v89, "subId"

    const-wide/16 v90, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move-wide/from16 v2, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1051
    const-string v89, "LteBitmap"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1053
    const-string v89, "TDDSpecialSubFrameNumber"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1057
    const-string v89, "LteCoexInfo"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1060
    .end local v31    # "extras":Landroid/os/Bundle;
    .end local v38    # "intent":Landroid/content/Intent;
    :cond_22
    const/16 v89, -0x1

    move/from16 v0, v89

    move/from16 v1, v61

    if-eq v0, v1, :cond_24

    .line 1061
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.ACTION_IDC_WLAN_COEX_IND"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    .restart local v38    # "intent":Landroid/content/Intent;
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 1065
    .restart local v31    # "extras":Landroid/os/Bundle;
    const-string v89, "subId"

    const-wide/16 v90, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move-wide/from16 v2, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1066
    const-string v89, "WlanSafeRxMin"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v86

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1068
    const-string v89, "WlanSafeRxMax"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    const-string v89, "WlanSafeTxMin"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1072
    const-string v89, "WlanSafeTxMax"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    const-string v89, "WlanSafeTxPowerNum"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v84, v0

    .line 1081
    .local v84, "wlan_nrt_safe_tx_power_list":[I
    const/16 v40, 0x0

    .local v40, "k":I
    :goto_13
    move/from16 v0, v40

    move/from16 v1, v61

    if-ge v0, v1, :cond_23

    .line 1082
    add-int/lit8 v89, v40, 0x11

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v89

    aput v89, v84, v40

    .line 1081
    add-int/lit8 v40, v40, 0x1

    goto :goto_13

    .line 1084
    :cond_23
    const-string v89, "WlanSafeTxPowerTable"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1088
    const-string v89, "WlanCoexInfo"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1091
    .end local v31    # "extras":Landroid/os/Bundle;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v40    # "k":I
    .end local v84    # "wlan_nrt_safe_tx_power_list":[I
    :cond_24
    const/16 v89, -0x1

    move/from16 v0, v89

    move/from16 v1, v60

    if-eq v0, v1, :cond_1

    .line 1092
    new-instance v38, Landroid/content/Intent;

    const-string v89, "intel.intent.action.ACTION_IDC_BT_COEX_IND"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .restart local v38    # "intent":Landroid/content/Intent;
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 1096
    .restart local v31    # "extras":Landroid/os/Bundle;
    const-string v89, "subId"

    const-wide/16 v90, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move-wide/from16 v2, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1097
    const-string v89, "BtSafeRxMin"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1099
    const-string v89, "BtSafeRxMax"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1101
    const-string v89, "BtSafeTxMin"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1103
    const-string v89, "BtSafeTxMax"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1105
    const-string v89, "BtSafeTxPowerNum"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1109
    move/from16 v0, v60

    new-array v15, v0, [I

    .line 1112
    .local v15, "bt_nrt_safe_tx_power_list":[I
    const/16 v40, 0x0

    .restart local v40    # "k":I
    :goto_14
    move/from16 v0, v40

    move/from16 v1, v60

    if-ge v0, v1, :cond_25

    .line 1113
    add-int/lit8 v89, v40, 0x1e

    aget-object v89, v10, v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v89

    aput v89, v15, v40

    .line 1112
    add-int/lit8 v40, v40, 0x1

    goto :goto_14

    .line 1115
    :cond_25
    const-string v89, "BtSafeTxPowerTable"

    move-object/from16 v0, v31

    move-object/from16 v1, v89

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1119
    const-string v89, "BtCoexInfo"

    move-object/from16 v0, v38

    move-object/from16 v1, v89

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v89, v0

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v89

    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 416
    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_2
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 513
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private initImsregistration()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1135
    :try_start_0
    iget-object v9, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.android.phone"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1137
    .local v3, "localContext":Landroid/content/Context;
    const-string v9, "ims_shared_pref"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1140
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v9, "ims_enabled"

    invoke-interface {v4, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1141
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1142
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "ims_enabled"

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1143
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1149
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v9, "ims_enabled"

    const/4 v10, 0x1

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1152
    .local v2, "imsFeatureEnableState":Z
    if-eqz v2, :cond_1

    .line 1153
    .local v7, "temp":I
    :goto_0
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 1154
    .local v6, "request":[Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0xad

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 1156
    const/4 v8, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 1158
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1159
    .local v5, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, v6, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1168
    return-void

    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "request":[Ljava/lang/String;
    .end local v7    # "temp":I
    :cond_1
    move v7, v8

    .line 1152
    goto :goto_0

    .line 1160
    .end local v2    # "imsFeatureEnableState":Z
    .end local v3    # "localContext":Landroid/content/Context;
    .end local v4    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Unable to create package context on com.android.phone"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1163
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Unable to access the com.android.phone SharedPref"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private onVoiceRegistrationDeniedReasonChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 242
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 243
    .local v0, "cause":I
    const-string v2, "OemTelephonyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration denied reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 248
    iput-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    .line 251
    :cond_0
    const/4 v1, 0x0

    .line 252
    .local v1, "errorMessageResId":I
    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 265
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040005

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    .line 269
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 271
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 273
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 275
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/32 v4, 0x15f90

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    :cond_1
    return-void

    .line 254
    :pswitch_1
    const v1, 0x7f040006

    .line 255
    goto :goto_0

    .line 257
    :pswitch_2
    const v1, 0x7f040007

    .line 258
    goto :goto_0

    .line 260
    :pswitch_3
    const v1, 0x7f040008

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x3dc

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 302
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 392
    const-string v7, "OemTelephonyHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled message with number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 305
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->handleUnsolicitedOemHookRaw([B)V

    goto :goto_0

    .line 309
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v7, "OemTelephonyHandler"

    const-string v8, "Command complete"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v7

    if-nez v7, :cond_1

    .line 314
    invoke-direct {p0, v8}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->cancelNotification(I)V

    goto :goto_0

    .line 316
    :cond_1
    const-string v7, "persist.ims_support"

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 317
    const-string v7, "OemTelephonyHandler"

    const-string v8, "radio state is on and ims bp centric is enabled, sending ims registration config to the modem"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->initImsregistration()V

    goto :goto_0

    .line 325
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v6, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Landroid/telephony/ServiceState;

    .line 326
    .local v6, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    invoke-direct {p0, v8}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->cancelNotification(I)V

    goto :goto_0

    .line 333
    .end local v6    # "state":Landroid/telephony/ServiceState;
    :pswitch_4
    const-string v7, "OemTelephonyHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " EVENT_VOICE_CALL_STATE_CHANGED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-boolean v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    if-eq v7, v10, :cond_0

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "emCall":Z
    iget-object v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCallMgr:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 337
    .local v3, "fgConn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "number":Ljava/lang/String;
    const-string v7, "OemTelephonyHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Call to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 341
    iput-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mEmergencyCallNumber:Ljava/lang/String;

    .line 342
    const/4 v2, 0x1

    .line 347
    .end local v3    # "fgConn":Lcom/android/internal/telephony/Connection;
    .end local v5    # "number":Ljava/lang/String;
    :cond_3
    if-ne v2, v10, :cond_0

    iget-boolean v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    if-nez v7, :cond_0

    .line 348
    invoke-direct {p0, v10}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->broadcastEmergencyCallIntent(Z)V

    .line 349
    iput-boolean v10, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    .line 350
    iget-object v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v7, p0, v8, v9}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 357
    .end local v2    # "emCall":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_5
    const-string v7, "OemTelephonyHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_VOICE_CALL_ENDED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    if-ne v7, v10, :cond_0

    .line 359
    const/4 v2, 0x0

    .line 361
    .restart local v2    # "emCall":Z
    iget-object v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mCallMgr:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v1

    .line 362
    .local v1, "connList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 363
    const-string v7, "OemTelephonyHandler"

    const-string v8, "No More FG calls"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v2, 0x1

    .line 378
    :cond_4
    :goto_1
    if-ne v2, v10, :cond_0

    .line 379
    invoke-direct {p0, v11}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->broadcastEmergencyCallIntent(Z)V

    .line 380
    iput-boolean v11, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mIsEmergencyCallOngoing:Z

    .line 381
    const-string v7, ""

    iput-object v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mEmergencyCallNumber:Ljava/lang/String;

    .line 382
    iget-object v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 367
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 368
    .restart local v3    # "fgConn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 369
    .restart local v5    # "number":Ljava/lang/String;
    const-string v7, "OemTelephonyHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Call to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mEmergencyCallNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 372
    const/4 v2, 0x1

    .line 373
    goto :goto_1

    .line 388
    .end local v1    # "connList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "emCall":Z
    .end local v3    # "fgConn":Lcom/android/internal/telephony/Connection;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "number":Ljava/lang/String;
    :pswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v7}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->onVoiceRegistrationDeniedReasonChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public registerDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    monitor-exit v1

    .line 1186
    return-void

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1172
    :try_start_0
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    monitor-exit v1

    .line 1174
    return-void

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mDedicatedBearerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1191
    monitor-exit v1

    .line 1192
    return-void

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1178
    :try_start_0
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mSrvccListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1179
    monitor-exit v1

    .line 1180
    return-void

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
