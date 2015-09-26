.class public abstract Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;
.super Landroid/os/Binder;
.source "IOemTelephony.java"

# interfaces
.implements Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getATR()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getOemVersion()I

    move-result v6

    .line 60
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v6    # "_result":I
    :sswitch_3
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getThermalSensorValue(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getThermalSensorValueV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getGprsCell()Ljava/lang/String;

    move-result-object v6

    .line 88
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getDumpScreen(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v0, v8

    .line 108
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 113
    .local v5, "_arg3":I
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->activateThermalSensorNotification(ZIII)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :cond_0
    move v0, v9

    .line 106
    goto :goto_1

    .line 118
    :sswitch_8
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 124
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 126
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->activateThermalSensorNotificationV2(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :sswitch_9
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getSMSTransportMode()I

    move-result v6

    .line 134
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v6    # "_result":I
    :sswitch_a
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setSMSTransportMode(I)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getRFPowerCutbackTable()I

    move-result v6

    .line 150
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v6    # "_result":I
    :sswitch_c
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRFPowerCutbackTable(I)V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v0, v8

    .line 167
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setImsCallAvailable(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v9

    .line 166
    goto :goto_2

    .line 172
    :sswitch_e
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v0, v8

    .line 175
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setImsSmsAvailable(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v9

    .line 174
    goto :goto_3

    .line 180
    :sswitch_f
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->sendAtCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setCSGAutoSelection()Z

    move-result v6

    .line 192
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v6, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v6    # "_result":Z
    :sswitch_11
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCSGState()Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/telephony/OemTelephony/IPcscfListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;

    move-result-object v3

    .line 211
    .local v3, "_arg1":Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;
    invoke-virtual {p0, v0, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getPcscf(Ljava/lang/String;Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;
    :sswitch_13
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    sget-object v9, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 221
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 222
    sget-object v9, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 227
    .local v3, "_arg1":Landroid/os/Message;
    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setSrvccSyncParams(Ljava/util/List;Landroid/os/Message;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    .end local v3    # "_arg1":Landroid/os/Message;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Message;
    goto :goto_4

    .line 233
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;>;"
    .end local v3    # "_arg1":Landroid/os/Message;
    :sswitch_14
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v0, v8

    .line 236
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRegistrationStatusAndBandInd(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v9

    .line 235
    goto :goto_5

    .line 241
    :sswitch_15
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v0, v8

    .line 244
    .restart local v0    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->enableAdaptiveClocking(Z)Z

    move-result v6

    .line 245
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v6, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_7
    move v0, v9

    .line 243
    goto :goto_6

    .line 251
    :sswitch_16
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getAdaptiveClockingFrequencyInfo()Ljava/util/List;

    move-result-object v7

    .line 253
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 259
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;>;"
    :sswitch_17
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;

    move-result-object v0

    .line 262
    .local v0, "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 268
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :sswitch_18
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;

    move-result-object v0

    .line 271
    .restart local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->unregisterSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
    :sswitch_19
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    move-result-object v0

    .line 280
    .local v0, "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :sswitch_1a
    const-string v9, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    move-result-object v0

    .line 289
    .restart local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->unregisterDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
    :sswitch_1b
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 299
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v3, v8

    .line 300
    .local v3, "_arg1":Z
    :goto_7
    invoke-virtual {p0, v0, v1, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRegistrationStatusAndBandReporting(JZ)I

    move-result v6

    .line 301
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_8
    move v3, v9

    .line 299
    goto :goto_7

    .line 307
    .end local v0    # "_arg0":J
    :sswitch_1c
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 311
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v3, v8

    .line 312
    .restart local v3    # "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setCoexReporting(JZ)I

    move-result v6

    .line 313
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_9
    move v3, v9

    .line 311
    goto :goto_8

    .line 319
    .end local v0    # "_arg0":J
    :sswitch_1d
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 323
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v3, v8

    .line 325
    .restart local v3    # "_arg1":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 326
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setWlanParams(JZI)I

    move-result v6

    .line 327
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v6    # "_result":I
    :cond_a
    move v3, v9

    .line 323
    goto :goto_9

    .line 333
    .end local v0    # "_arg0":J
    :sswitch_1e
    const-string v10, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 337
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    move v3, v8

    .line 338
    .restart local v3    # "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v1, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setBtParams(JZ)I

    move-result v6

    .line 339
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_b
    move v3, v9

    .line 337
    goto :goto_a

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
