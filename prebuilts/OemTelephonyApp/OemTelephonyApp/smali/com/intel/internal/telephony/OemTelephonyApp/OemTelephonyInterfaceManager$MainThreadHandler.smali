.class final Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "OemTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;
    .param p2, "x1"    # Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;-><init>(Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 707
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MainThreadHandler: unexpected message code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 207
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 208
    .local v13, "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 209
    .local v9, "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 210
    .local v14, "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xa5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 216
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 217
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 218
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 219
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v16, v20

    check-cast v16, [Ljava/lang/String;

    .line 220
    .local v16, "response":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_0

    .line 221
    const/16 v20, 0x0

    aget-object v20, v16, v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 228
    .end local v16    # "response":[Ljava/lang/String;
    :goto_1
    monitor-enter v13

    .line 229
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v20

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 223
    .restart local v16    # "response":[Ljava/lang/String;
    :cond_0
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 226
    .end local v16    # "response":[Ljava/lang/String;
    :cond_1
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 234
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 235
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 237
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 238
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xa2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 240
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v21

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 246
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 247
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 248
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v15, v20

    check-cast v15, [Ljava/lang/String;

    .line 249
    .local v15, "resArray":[Ljava/lang/String;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    if-eqz v15, :cond_2

    array-length v0, v15

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 251
    const/16 v20, 0x0

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 255
    :goto_2
    monitor-enter v13

    .line 256
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit v13

    goto/16 :goto_0

    :catchall_1
    move-exception v20

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v20

    .line 253
    :cond_2
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    .line 262
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v15    # "resArray":[Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 263
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 264
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 265
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xbb

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 271
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 272
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 273
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_3

    .line 275
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 279
    :goto_3
    monitor-enter v13

    .line 280
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 281
    monitor-exit v13

    goto/16 :goto_0

    :catchall_2
    move-exception v20

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v20

    .line 277
    :cond_3
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_3

    .line 285
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 286
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 288
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 289
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xbc

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 291
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    aput-object v20, v14, v21

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 296
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 297
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 298
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_4

    .line 300
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 305
    :goto_4
    monitor-enter v13

    .line 306
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 307
    monitor-exit v13

    goto/16 :goto_0

    :catchall_3
    move-exception v20

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v20

    .line 302
    :cond_4
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_4

    .line 311
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 312
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 315
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 316
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xc3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 322
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 323
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 324
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 326
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 331
    :goto_5
    monitor-enter v13

    .line 332
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 333
    monitor-exit v13

    goto/16 :goto_0

    :catchall_4
    move-exception v20

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v20

    .line 328
    :cond_5
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_5

    .line 337
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 338
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 340
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 341
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xa9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 347
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 348
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 349
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 351
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 355
    :goto_6
    monitor-enter v13

    .line 356
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit v13

    goto/16 :goto_0

    :catchall_5
    move-exception v20

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v20

    .line 353
    :cond_6
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6

    .line 361
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 362
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 364
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 365
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xa6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 371
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 372
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 373
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 375
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 379
    :goto_7
    monitor-enter v13

    .line 380
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 381
    monitor-exit v13

    goto/16 :goto_0

    :catchall_6
    move-exception v20

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v20

    .line 377
    :cond_7
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7

    .line 385
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 386
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 388
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 389
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xa7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 391
    const/16 v20, 0x1

    const-string v21, "0"

    aput-object v21, v14, v20

    .line 392
    const/16 v21, 0x2

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v21

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 398
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 399
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 400
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_8

    .line 402
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 406
    :goto_8
    monitor-enter v13

    .line 407
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 408
    monitor-exit v13

    goto/16 :goto_0

    :catchall_7
    move-exception v20

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v20

    .line 404
    :cond_8
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_8

    .line 412
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 413
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 415
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 416
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xab

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 422
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 423
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 424
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 426
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 430
    :goto_9
    monitor-enter v13

    .line 431
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v13

    goto/16 :goto_0

    :catchall_8
    move-exception v20

    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v20

    .line 428
    :cond_9
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9

    .line 436
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 437
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 438
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 439
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xb0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 441
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v21

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 447
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 448
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 450
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 451
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 452
    const-string v20, "OemTelephonyInterfaceManager"

    const-string v21, "Notify release modem failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_a
    monitor-enter v13

    .line 456
    :try_start_9
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 457
    monitor-exit v13

    goto/16 :goto_0

    :catchall_9
    move-exception v20

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v20

    .line 461
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 462
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 464
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 465
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xb3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 467
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    aput-object v20, v14, v21

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 472
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 473
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 474
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_b

    .line 476
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 480
    :goto_a
    monitor-enter v13

    .line 481
    :try_start_a
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 482
    monitor-exit v13

    goto/16 :goto_0

    :catchall_a
    move-exception v20

    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v20

    .line 478
    :cond_b
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    .line 486
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 487
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getPcscf invokeOemRilRequestStrings CMD_GET_PCSCF "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/16 v20, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 491
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 492
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xb6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 495
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    aput-object v20, v14, v21

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 500
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 501
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getPcscf receive EVENT_GET_PCSCF "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 503
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v8, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v8, Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;

    .line 504
    .local v8, "listener":Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;
    new-instance v11, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;

    invoke-direct {v11}, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;-><init>()V

    .line 505
    .local v11, "pcscf":Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_c

    .line 507
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v16, v20, v21

    .line 508
    .local v16, "response":Ljava/lang/String;
    const-string v20, "\\s"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 509
    .local v12, "pcscfParams":[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v12, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mCid:I

    .line 510
    array-length v0, v12

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/net/InetAddress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    .line 511
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_b
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_c

    .line 512
    iget-object v0, v11, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, -0x1

    aget-object v22, v12, v7

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v22

    aput-object v22, v20, v21

    .line 511
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 516
    .end local v7    # "i":I
    .end local v12    # "pcscfParams":[Ljava/lang/String;
    .end local v16    # "response":Ljava/lang/String;
    :cond_c
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getPcscf notifying listener with "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :try_start_b
    invoke-interface {v8, v11}, Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;->onPcscfResponse(Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 519
    :catch_0
    move-exception v5

    .line 520
    .local v5, "e":Landroid/os/RemoteException;
    const-string v20, "OemTelephonyInterfaceManager"

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v8    # "listener":Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;
    .end local v11    # "pcscf":Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 526
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "invokeOemRilRequestStrings CMD_SRVCC_PARAM "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v20, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 530
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 531
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xb7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 534
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    aput-object v20, v14, v21

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 539
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 540
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "receive EVENT_SRVCC_PARAM_DONE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 542
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 543
    .local v17, "rsp":Landroid/os/Message;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_10

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_10

    .line 545
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v16, v20, v21

    .line 547
    .restart local v16    # "response":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v10, "parsedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;>;"
    const-string v20, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 552
    .local v18, "split":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_d

    .line 553
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Wrong result format: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 557
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_c
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_e

    .line 559
    :try_start_c
    aget-object v20, v18, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 560
    .local v4, "callId":I
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 561
    .local v19, "transferResult":I
    new-instance v20, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_1

    .line 557
    add-int/lit8 v7, v7, 0x2

    goto :goto_c

    .line 562
    .end local v4    # "callId":I
    .end local v19    # "transferResult":I
    :catch_1
    move-exception v6

    .line 563
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Format error in response returned by RIL: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_e
    move-object/from16 v0, v17

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    const-string v20, "OemTelephonyInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setSrvccSyncParams rsp sendToTarget "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v7    # "i":I
    .end local v10    # "parsedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncResult;>;"
    .end local v16    # "response":Ljava/lang/String;
    .end local v18    # "split":[Ljava/lang/String;
    :cond_f
    :goto_d
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 571
    :cond_10
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    const-string v20, "OemTelephonyInterfaceManager"

    const-string v21, "Error received from RIL"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 574
    const-string v20, "OemTelephonyInterfaceManager"

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 581
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v17    # "rsp":Landroid/os/Message;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 582
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 583
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 584
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xbf

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 590
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 591
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 592
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 593
    const-string v20, "OemTelephonyInterfaceManager"

    const-string v21, "setCSGAutoSelection FAILED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_11
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    const/16 v20, 0x1

    :goto_e
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 597
    monitor-enter v13

    .line 598
    :try_start_d
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 599
    monitor-exit v13

    goto/16 :goto_0

    :catchall_b
    move-exception v20

    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    throw v20

    .line 595
    :cond_12
    const/16 v20, 0x0

    goto :goto_e

    .line 603
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 604
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 605
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 606
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xc0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 612
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 613
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 614
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_13

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_13

    .line 616
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    check-cast v20, [Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 621
    :goto_f
    monitor-enter v13

    .line 622
    :try_start_e
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 623
    monitor-exit v13

    goto/16 :goto_0

    :catchall_c
    move-exception v20

    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    throw v20

    .line 618
    :cond_13
    new-instance v20, Ljava/lang/String;

    const-string v21, ""

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_f

    .line 627
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 628
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 631
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 632
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xc4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 634
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v21

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 640
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_1f
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 641
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 643
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 644
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xc5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 646
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v21

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 652
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 653
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 654
    .restart local v9    # "onCompleted":Landroid/os/Message;
    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "arg":[Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 657
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xc6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 659
    const/16 v20, 0x1

    const/16 v21, 0x0

    aget-object v21, v3, v21

    aput-object v21, v14, v20

    .line 661
    const/16 v20, -0x1

    const/16 v21, 0x1

    aget-object v21, v3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    .line 663
    const/16 v20, 0x2

    const/16 v21, 0x1

    aget-object v21, v3, v21

    aput-object v21, v14, v20

    .line 668
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 665
    :cond_14
    const/16 v20, 0x2

    const-string v21, "0"

    aput-object v21, v14, v20

    goto :goto_10

    .line 672
    .end local v3    # "arg":[Ljava/lang/String;
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 673
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    const/16 v20, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 675
    .restart local v9    # "onCompleted":Landroid/os/Message;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 676
    .restart local v14    # "requestStr":[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0xc7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v20

    .line 678
    const/16 v21, 0x1

    iget-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v21

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadHandler;->this$0:Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 687
    .end local v9    # "onCompleted":Landroid/os/Message;
    .end local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    .end local v14    # "requestStr":[Ljava/lang/String;
    :pswitch_22
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 688
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;

    .line 690
    .restart local v13    # "request":Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_16

    .line 691
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 701
    :cond_15
    :goto_11
    monitor-enter v13

    .line 702
    :try_start_f
    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 703
    monitor-exit v13

    goto/16 :goto_0

    :catchall_d
    move-exception v20

    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    throw v20

    .line 692
    :cond_16
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 693
    sget-object v21, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 695
    const/16 v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 697
    :cond_17
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/intel/internal/telephony/OemTelephonyApp/OemTelephonyInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_9
        :pswitch_1e
        :pswitch_22
        :pswitch_1f
        :pswitch_22
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method
