.class Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler$1;
.super Landroid/os/Handler;
.source "OemTelephonyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;


# direct methods
.method constructor <init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    # getter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->access$000(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "OemTelephonyHandler"

    const-string v1, "- dismissing registration denied reason dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    # getter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->access$000(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 289
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;

    const/4 v1, 0x0

    # setter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->mVoiceRegistrationDeniedReasonDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;->access$002(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
