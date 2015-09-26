.class public Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;
.super Landroid/app/Application;
.source "OemTelephonyApp.java"


# static fields
.field static DBG:Z

.field private static sSelf:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;


# instance fields
.field private mOemInterface:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 45
    sput-object p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->sSelf:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;

    .line 46
    return-void
.end method

.method public static createOemTelephonyService()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->sSelf:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->sSelf:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->startOemTelephony()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "OemTelephonyApp"

    const-string v1, "mSelf is null!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOemTelephony()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->init(Landroid/content/Context;)Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->mOemInterface:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->sSelf:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;

    if-nez v0, :cond_0

    .line 51
    sput-object p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;->sSelf:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyApp;

    .line 53
    :cond_0
    return-void
.end method
