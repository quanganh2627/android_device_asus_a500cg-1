.class public Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;
.super Ljava/lang/Object;
.source "OemSrvccSyncResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCallId:I

.field public mTransferResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "transferResult"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;->mCallId:I

    .line 28
    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;->mTransferResult:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;->mCallId:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;->mTransferResult:I

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;->mTransferResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
