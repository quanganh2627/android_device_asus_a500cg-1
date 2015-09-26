.class public interface abstract Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;
.super Ljava/lang/Object;
.source "ISrvccListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/ISrvccListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSrvccHandoverStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSrvccSyncNeeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
