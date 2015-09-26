.class final Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
.super Ljava/lang/Object;
.source "OemTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "argument"    # Ljava/lang/Object;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 180
    return-void
.end method
