.class Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OemTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;


# direct methods
.method constructor <init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsAirplaneModeOn:Z
    invoke-static {v2, v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$002(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z

    .line 161
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # getter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsAirplaneModeOn:Z
    invoke-static {v2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$000(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # getter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimRecordsLoaded:Z
    invoke-static {v2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$200(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # getter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimAbsent:Z
    invoke-static {v2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$100(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    const/4 v3, 0x2

    # invokes: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->notifyReleaseModem(I)V
    invoke-static {v2, v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$300(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;I)V

    .line 164
    :cond_2
    return-void

    .line 143
    :cond_3
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # setter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimAbsent:Z
    invoke-static {v2, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$102(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z

    .line 145
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "state":Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # setter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimRecordsLoaded:Z
    invoke-static {v2, v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$202(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z

    goto :goto_0

    .line 148
    :cond_4
    const-string v2, "UNKNOWN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "NOT_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    :cond_5
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # setter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimRecordsLoaded:Z
    invoke-static {v2, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$202(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z

    goto :goto_0

    .line 151
    :cond_6
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # setter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimRecordsLoaded:Z
    invoke-static {v2, v4}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$202(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z

    .line 153
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # setter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimAbsent:Z
    invoke-static {v2, v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$102(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Z)Z

    goto :goto_0

    .line 155
    .end local v1    # "state":Ljava/lang/String;
    :cond_7
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # getter for: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mIsSimAbsent:Z
    invoke-static {v2}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$100(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    # invokes: Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->notifyReleaseModem(I)V
    invoke-static {v2, v3}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->access$300(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;I)V

    goto :goto_0
.end method
