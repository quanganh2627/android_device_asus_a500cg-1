.class public Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;
.super Ljava/lang/Object;
.source "AdaptiveClockingFrequencyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCenterFrequency:J

.field public mFrequencySpread:I

.field public mNoisePower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 1
    .param p1, "centerFrequency"    # J
    .param p3, "frequencySpread"    # I
    .param p4, "noisePower"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mCenterFrequency:J

    .line 45
    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mFrequencySpread:I

    .line 46
    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mNoisePower:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mCenterFrequency:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mFrequencySpread:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mNoisePower:I

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mCenterFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mFrequencySpread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mNoisePower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
