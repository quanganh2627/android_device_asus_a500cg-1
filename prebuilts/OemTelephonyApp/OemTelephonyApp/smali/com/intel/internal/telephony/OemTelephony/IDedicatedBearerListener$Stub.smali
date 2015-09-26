.class public abstract Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;
.super Landroid/os/Binder;
.source "IDedicatedBearerListener.java"

# interfaces
.implements Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.intel.internal.telephony.OemTelephony.IDedicatedBearerListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.intel.internal.telephony.OemTelephony.IDedicatedBearerListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.intel.internal.telephony.OemTelephony.IDedicatedBearerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;

    .line 58
    .local v0, "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->onQosChanged(Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    goto :goto_1

    .line 63
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;
    :sswitch_2
    const-string v3, "com.intel.internal.telephony.OemTelephony.IDedicatedBearerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    sget-object v3, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;

    .line 71
    .local v0, "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->onTftChanged(Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;
    goto :goto_2

    .line 76
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;
    :sswitch_3
    const-string v3, "com.intel.internal.telephony.OemTelephony.IDedicatedBearerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->onDedicatedBearerClosed(Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v3, "com.intel.internal.telephony.OemTelephony.IDedicatedBearerListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->onDedicatedBearerOpen(Ljava/lang/String;I)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
