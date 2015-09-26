.class final Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam$1;
.super Ljava/lang/Object;
.source "OemSrvccSyncParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 75
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;

    invoke-direct {v0, p1}, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 79
    new-array v0, p1, [Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam$1;->newArray(I)[Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;

    move-result-object v0

    return-object v0
.end method
