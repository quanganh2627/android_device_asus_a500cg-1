.class public interface abstract Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;
.super Ljava/lang/Object;
.source "IPcscfListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/IPcscfListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPcscfResponse(Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
