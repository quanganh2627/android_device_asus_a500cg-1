.class public interface abstract Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;
.super Ljava/lang/Object;
.source "IDedicatedBearerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDedicatedBearerClosed(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDedicatedBearerOpen(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQosChanged(Lcom/intel/internal/telephony/OemTelephony/OemQosInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTftChanged(Lcom/intel/internal/telephony/OemTelephony/OemTftInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
