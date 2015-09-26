.class final Lcom/intel/internal/telephony/OemTelephony/OemQosInfo$1;
.super Ljava/lang/Object;
.source "OemQosInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
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
        "Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 69
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;

    invoke-direct {v0, p1}, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 73
    new-array v0, p1, [Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo$1;->newArray(I)[Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;

    move-result-object v0

    return-object v0
.end method
