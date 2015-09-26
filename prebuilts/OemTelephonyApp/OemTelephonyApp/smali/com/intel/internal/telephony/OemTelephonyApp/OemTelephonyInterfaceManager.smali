.class public Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
.super Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;
.source "OemTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;,
        Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mIsAirplaneModeOn:Z

.field private mIsSimAbsent:Z

.field private mIsSimRecordsLoaded:Z

.field mMainThreadHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

.field private mOemTelephonyHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimAbsent:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsAirplaneModeOn:Z

    .line 138
    new-instance v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;-><init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 753
    const-string v0, "OemTelephonyInterfaceManager"

    const-string v1, "OemTelephonyInterfaceManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 755
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 756
    new-instance v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;-><init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mMainThreadHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

    .line 757
    new-instance v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    invoke-direct {v0, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mOemTelephonyHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    .line 758
    invoke-direct {p0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->publish()V

    .line 759
    return-void
.end method

.method static synthetic access$000(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimAbsent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimAbsent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimRecordsLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimRecordsLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->notifyReleaseModem(I)V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 789
    const-class v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    monitor-enter v1

    .line 790
    :try_start_0
    sget-object v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sInstance:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    invoke-direct {v0, p0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sInstance:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    .line 795
    :goto_0
    sget-object v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sInstance:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 793
    :cond_0
    const-string v0, "OemTelephonyInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sInstance:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyReleaseModem(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 778
    new-instance v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 779
    .local v1, "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 780
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mMainThreadHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 781
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 782
    return-void
.end method

.method private publish()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 762
    const-string v3, "oemtelephony"

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 763
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsAirplaneModeOn:Z

    .line 766
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intel.intent.action.OEM_TELEPHONY_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 768
    const-string v2, "OemTelephonyInterfaceManager"

    const-string v3, "Broadcast : OEM_TELEPHONY_READY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 774
    const-string v2, "OemTelephonyInterfaceManager"

    const-string v3, "Register for receivers in OemTelephony"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mMainThreadHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 721
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 723
    :cond_0
    new-instance v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 724
    .local v1, "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mMainThreadHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 725
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 727
    monitor-enter v1

    .line 728
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 730
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v2

    goto :goto_0

    .line 736
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    iget-object v2, v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 736
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public activateThermalSensorNotification(ZIII)V
    .locals 4
    .param p1, "activate"    # Z
    .param p2, "sensorId"    # I
    .param p3, "minThresholdValue"    # I
    .param p4, "maxThresholdValue"    # I

    .prologue
    .line 957
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "activateThermalSensorNotification - Radio not on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.intel.telephony.permission.SET_THERMAL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 964
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 965
    .local v0, "request":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 967
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 969
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 972
    .end local v0    # "request":[Ljava/lang/String;
    :cond_1
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - activateThermalSensorNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public activateThermalSensorNotificationV2(Ljava/lang/String;III)V
    .locals 4
    .param p1, "sensorId"    # Ljava/lang/String;
    .param p2, "alarmId"    # I
    .param p3, "tripPointNumber"    # I
    .param p4, "hysteresis"    # I

    .prologue
    .line 977
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "activateThermalSensorNotificationV2 - Radio not on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.intel.telephony.permission.SET_THERMAL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 984
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 985
    .local v0, "request":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 987
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 989
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 992
    .end local v0    # "request":[Ljava/lang/String;
    :cond_1
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - activateThermalSensorNotificationV2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableAdaptiveClocking(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1143
    const-string v0, "enableAdaptiveClocking"

    .line 1145
    .local v0, "METHOD_NAME":Ljava/lang/String;
    iget-object v4, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1146
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "enableAdaptiveClocking - Radio not on"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :goto_0
    return v2

    .line 1150
    :cond_0
    iget-object v4, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.intel.telephony.permission.SET_THERMAL"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 1152
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 1153
    .local v1, "request":[Ljava/lang/String;
    const/16 v4, 0xc2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1155
    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1156
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    move v2, v3

    .line 1158
    goto :goto_0

    .line 1161
    .end local v1    # "request":[Ljava/lang/String;
    :cond_2
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "Permission denied - enableAdaptiveClocking"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getATR()Ljava/lang/String;
    .locals 4

    .prologue
    .line 815
    const-string v0, ""

    .line 816
    .local v0, "atr":Ljava/lang/String;
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 818
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "atr":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 819
    .restart local v0    # "atr":Ljava/lang/String;
    const-string v1, "OemTelephonyInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getATR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    return-object v0

    .line 821
    :cond_0
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - getATR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAdaptiveClockingFrequencyInfo()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v5, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;>;"
    const-string v0, "getAdaptiveClockingFrequencyInfo"

    .line 1171
    .local v0, "METHOD_NAME":Ljava/lang/String;
    iget-object v6, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1172
    const-string v6, "OemTelephonyInterfaceManager"

    const-string v7, "getAdaptiveClockingFrequencyInfo - Radio not on"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_0
    :goto_0
    return-object v5

    .line 1176
    :cond_1
    iget-object v6, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 1180
    const/16 v6, 0x1d

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, v6, v7}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1181
    .local v4, "resp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1184
    .local v3, "params":[Ljava/lang/String;
    array-length v6, v3

    rem-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_2

    .line 1185
    const-string v6, "OemTelephonyInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAdaptiveClockingFrequencyInfo - Invalid ADPCLK response format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1197
    .end local v3    # "params":[Ljava/lang/String;
    .end local v4    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1198
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v6, "OemTelephonyInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAdaptiveClockingFrequencyInfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1191
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "params":[Ljava/lang/String;
    .restart local v4    # "resp":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    :try_start_1
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 1192
    new-instance v6, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;

    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-int/lit8 v7, v2, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v10, v2, 0x2

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v6, v8, v9, v7, v10}, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;-><init>(JII)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1191
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 1201
    .end local v2    # "k":I
    .end local v3    # "params":[Ljava/lang/String;
    .end local v4    # "resp":Ljava/lang/String;
    :cond_3
    const-string v6, "OemTelephonyInterfaceManager"

    const-string v7, "Permission denied - getAdaptiveClockingFrequencyInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCSGState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1240
    const-string v2, ""

    .line 1242
    .local v2, "state":Ljava/lang/String;
    const/16 v3, 0x1b

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :goto_0
    return-object v2

    .line 1243
    :catch_0
    move-exception v1

    .line 1244
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCSGState exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDumpScreen(I)Ljava/lang/String;
    .locals 6
    .param p1, "page"    # I

    .prologue
    .line 939
    const-string v1, ""

    .line 940
    .local v1, "dumpScreen":Ljava/lang/String;
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.intel.telephony.permission.FIELD_TEST_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 943
    const/16 v3, 0x9

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-object v1

    .line 944
    :catch_0
    move-exception v2

    .line 945
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "Permission denied - getDumpScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGprsCell()Ljava/lang/String;
    .locals 6

    .prologue
    .line 885
    const-string v2, ""

    .line 886
    .local v2, "gprsCell":Ljava/lang/String;
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.intel.telephony.permission.FIELD_TEST_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 889
    const/4 v3, 0x7

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    return-object v2

    .line 890
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "Permission denied - getGprsCell"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOemVersion()I
    .locals 6

    .prologue
    .line 828
    const-string v2, ""

    .line 830
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 833
    const/16 v3, 0x15

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    return v3

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOemVersion exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "Permission denied - getOemVersion"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public getPcscf(Ljava/lang/String;Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;)V
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;

    .prologue
    .line 921
    const-string v2, "OemTelephonyInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPcscf sendRequest CMD_GET_PCSCF for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-nez p1, :cond_0

    .line 923
    const-string v2, "OemTelephonyInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid interface name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 927
    const-string v2, "OemTelephonyInterfaceManager"

    const-string v3, "ERROR : getPdnInfo - Radio not on"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_1
    new-instance v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 931
    .local v1, "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iput-object p1, v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 932
    iput-object p2, v1, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 934
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mMainThreadHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 935
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getRFPowerCutbackTable()I
    .locals 6

    .prologue
    .line 1026
    const/4 v2, -0x1

    .line 1027
    .local v2, "table":I
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1030
    const/16 v3, 0xb

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1031
    .local v1, "ret":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1039
    .end local v1    # "ret":Ljava/lang/String;
    :goto_0
    return v2

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRFPowerCutbackTable exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1036
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "Permission denied - getRFPowerCutbackTable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSMSTransportMode()I
    .locals 6

    .prologue
    .line 996
    const/4 v2, -0x1

    .line 997
    .local v2, "transportMode":I
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1000
    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1001
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1009
    .end local v1    # "mode":Ljava/lang/String;
    :goto_0
    return v2

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSMSTransportMode exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1006
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "Permission denied - getSMSTransportMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getThermalSensorValue(I)Ljava/lang/String;
    .locals 7
    .param p1, "sensorId"    # I

    .prologue
    .line 845
    const-string v2, ""

    .line 847
    .local v2, "thermalSensorVal":Ljava/lang/String;
    iget-object v4, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 848
    const-string v4, "OemTelephonyInterfaceManager"

    const-string v5, "getThermalSensorValue - Radio not on"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 863
    .end local v2    # "thermalSensorVal":Ljava/lang/String;
    .local v3, "thermalSensorVal":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 852
    .end local v3    # "thermalSensorVal":Ljava/lang/String;
    .restart local v2    # "thermalSensorVal":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 855
    const/4 v4, 0x3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v2

    .line 863
    .end local v2    # "thermalSensorVal":Ljava/lang/String;
    .restart local v3    # "thermalSensorVal":Ljava/lang/String;
    goto :goto_0

    .line 856
    .end local v3    # "thermalSensorVal":Ljava/lang/String;
    .restart local v2    # "thermalSensorVal":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 857
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "OemTelephonyInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThermalSensorValue exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 860
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string v4, "OemTelephonyInterfaceManager"

    const-string v5, "Permission denied - getThermalSensorValue"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getThermalSensorValueV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sensorId"    # Ljava/lang/String;

    .prologue
    .line 867
    const-string v2, ""

    .line 869
    .local v2, "thermalSensorVal":Ljava/lang/String;
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 872
    const/16 v3, 0x17

    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-object v2

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getThermalSensorValueV2 exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "OemTelephonyInterfaceManager"

    const-string v4, "Permission denied - getThermalSensorValueV2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mOemTelephonyHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    invoke-virtual {v0, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->registerDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    .line 1221
    return-void
.end method

.method public registerSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mOemTelephonyHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    invoke-virtual {v0, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->registerSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    .line 1210
    return-void
.end method

.method public sendAtCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 902
    const-string v4, "OemTelephonyInterfaceManager"

    const-string v5, "Deprecated API that will be removed soon. Please use another API."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v2, ""

    .line 905
    .local v2, "response":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 907
    .local v3, "uid":I
    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_1

    .line 909
    :cond_0
    const/16 v4, 0xf

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_0
    return-object v2

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "OemTelephonyInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string v4, "OemTelephonyInterfaceManager"

    const-string v5, "Permission denied - sendAtCommand"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBtParams(JZ)I
    .locals 8
    .param p1, "subId"    # J
    .param p3, "btEnabled"    # Z

    .prologue
    .line 1334
    const-string v0, "setBtParams()"

    .line 1335
    .local v0, "METHOD_NAME":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1337
    .local v3, "ret":I
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1339
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setBtParams() - Permission denied"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1356
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_0
    return v4

    .line 1343
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_0
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1344
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setBtParams() - Radio not on"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1345
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1349
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_1
    const/16 v6, 0x25

    if-eqz p3, :cond_2

    const/4 v5, 0x1

    :goto_1
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1351
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2    # "response":Ljava/lang/String;
    :goto_2
    move v4, v3

    .line 1356
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1349
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1352
    :catch_0
    move-exception v1

    .line 1353
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "OemTelephonyInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBtParams() - Runtime Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setCSGAutoSelection()Z
    .locals 5

    .prologue
    .line 1230
    const/4 v1, 0x0

    .line 1232
    .local v1, "result":Z
    const/16 v2, 0x19

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1236
    :goto_0
    return v1

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OemTelephonyInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCSGAutoSelection exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCoexReporting(JZ)I
    .locals 8
    .param p1, "subId"    # J
    .param p3, "enableReport"    # Z

    .prologue
    .line 1277
    const-string v0, "setCoexReporting()"

    .line 1278
    .local v0, "METHOD_NAME":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1280
    .local v3, "ret":I
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1282
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setCoexReporting() - Permission denied"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1299
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_0
    return v4

    .line 1286
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_0
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1287
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setCoexReporting() - Radio not on"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1288
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1292
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_1
    const/16 v6, 0x21

    if-eqz p3, :cond_2

    const/4 v5, 0x1

    :goto_1
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1294
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2    # "response":Ljava/lang/String;
    :goto_2
    move v4, v3

    .line 1299
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1292
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1295
    :catch_0
    move-exception v1

    .line 1296
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "OemTelephonyInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCoexReporting() - Runtime Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setImsCallAvailable(Z)V
    .locals 7
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1058
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permissions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1062
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 1063
    .local v0, "request":[Ljava/lang/String;
    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1065
    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1068
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1072
    .end local v0    # "request":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1071
    :cond_1
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - setImsCallAvailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImsSmsAvailable(Z)V
    .locals 7
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    const-string v3, "OemTelephonyInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permissions : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1079
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 1080
    .local v0, "request":[Ljava/lang/String;
    const/16 v3, 0xb5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1082
    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1085
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1089
    .end local v0    # "request":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1088
    :cond_1
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - setImsSmsAvailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRFPowerCutbackTable(I)V
    .locals 5
    .param p1, "table"    # I

    .prologue
    .line 1043
    const-string v1, "OemTelephonyInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permissions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1048
    .local v0, "request":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xac

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1050
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1051
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1055
    .end local v0    # "request":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1054
    :cond_0
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - setRFPowerCutbackTable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRegistrationStatusAndBandInd(Z)V
    .locals 3
    .param p1, "reportOn"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1132
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1133
    .local v0, "request":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1135
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1136
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1140
    .end local v0    # "request":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1139
    :cond_0
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - setRegistrationStatusAndBandInd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRegistrationStatusAndBandReporting(JZ)I
    .locals 8
    .param p1, "subId"    # J
    .param p3, "enableReport"    # Z

    .prologue
    .line 1250
    const-string v0, "setRegistrationStatusAndBandReporting()"

    .line 1251
    .local v0, "METHOD_NAME":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1253
    .local v3, "ret":I
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1255
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setRegistrationStatusAndBandReporting() - Permission denied"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1273
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_0
    return v4

    .line 1259
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_0
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1260
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setRegistrationStatusAndBandReporting() - Radio not on"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1261
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1265
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_1
    const/16 v6, 0x1f

    if-eqz p3, :cond_2

    const/4 v5, 0x1

    :goto_1
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1268
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2    # "response":Ljava/lang/String;
    :goto_2
    move v4, v3

    .line 1273
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1265
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "OemTelephonyInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRegistrationStatusAndBandReporting() - Runtime Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setSMSTransportMode(I)V
    .locals 3
    .param p1, "transportMode"    # I

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1016
    .local v0, "request":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xaa

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1018
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1019
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1023
    .end local v0    # "request":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1022
    :cond_0
    const-string v1, "OemTelephonyInterfaceManager"

    const-string v2, "Permission denied - setSMSTransportMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSrvccSyncParams(Ljava/util/List;Landroid/os/Message;)V
    .locals 8
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1092
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;>;"
    const-string v5, "OemTelephonyInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "srvccSyncParams sendRequest CMD_SRVCC_PARAM for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    if-nez p1, :cond_0

    .line 1094
    const-string v5, "OemTelephonyInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SRVCC params "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_0
    return-void

    .line 1097
    :cond_0
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 1099
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1102
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;

    .line 1103
    .local v2, "param":Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mCallId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTidFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    iget-boolean v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mIsEmergencyCall:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mCallState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mAuxState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mMptyAuxState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    iget-object v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mPhoneNo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTonNpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget v5, v2, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mPiSi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_1

    .line 1114
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1106
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1117
    .end local v2    # "param":Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;
    :cond_3
    new-instance v3, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    invoke-direct {v3, p2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 1118
    .local v3, "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 1119
    iput-object p2, v3, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1121
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mMainThreadHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1122
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1124
    .end local v0    # "i":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "Permission denied - srvccSyncParams"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setWlanParams(JZI)I
    .locals 9
    .param p1, "subId"    # J
    .param p3, "enableWlanReport"    # Z
    .param p4, "wlanBandwidth"    # I

    .prologue
    .line 1303
    const-string v0, "setWlanParams()"

    .line 1304
    .local v0, "METHOD_NAME":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1306
    .local v3, "ret":I
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1308
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setWlanParams() - Permission denied"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1330
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_0
    return v4

    .line 1312
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_0
    iget-object v5, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1313
    const-string v5, "OemTelephonyInterfaceManager"

    const-string v6, "setWlanParams() - Radio not on"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1314
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1318
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_1
    const/16 v6, 0x23

    :try_start_0
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1325
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2    # "response":Ljava/lang/String;
    :goto_2
    move v4, v3

    .line 1330
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 1318
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1326
    :catch_0
    move-exception v1

    .line 1327
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "OemTelephonyInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWlanParams() - Runtime Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public unregisterDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mOemTelephonyHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    invoke-virtual {v0, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->unregisterDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    .line 1227
    return-void
.end method

.method public unregisterSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mOemTelephonyHandler:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    invoke-virtual {v0, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->unregisterSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    .line 1215
    return-void
.end method
