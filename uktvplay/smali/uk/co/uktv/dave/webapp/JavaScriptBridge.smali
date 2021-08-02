.class public Luk/co/uktv/dave/webapp/JavaScriptBridge;
.super Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;
.source "JavaScriptBridge.java"


# direct methods
.method public constructor <init>(Lj$/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;-><init>(Lj$/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method protected decodeMessage(Ljava/lang/String;Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/FromWebAppMessage;
    .locals 2

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "controlMediaPlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "disposeMediaPlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "inititializeMediaPlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "getLicenceUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 51
    invoke-super {p0, p1, p2}, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->decodeMessage(Ljava/lang/String;Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/FromWebAppMessage;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_0
    invoke-static {p2}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_1
    invoke-static {p2}, Luk/co/uktv/dave/messaging/from/DisposeMediaPlayerMessage;->fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/DisposeMediaPlayerMessage;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_2
    invoke-static {p2}, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_3
    invoke-static {p2}, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6670eaac -> :sswitch_3
        -0x1f686f96 -> :sswitch_2
        -0x15fbbbba -> :sswitch_1
        0x2a6ab248 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public exitApp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 31
    new-instance v0, Luk/co/uktv/dave/messaging/from/ExitAppMessage;

    invoke-direct {v0}, Luk/co/uktv/dave/messaging/from/ExitAppMessage;-><init>()V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method public bridge synthetic name()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 36
    invoke-super {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->receiveMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic sendMessage(Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 23
    invoke-super {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->sendMessage(Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/to/LicenseGotMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/to/ToWebAppMessage;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/to/NavigationMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/to/ToWebAppMessage;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/to/PauseAppMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/to/ToWebAppMessage;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/to/ToWebAppMessage;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/to/ToWebAppMessage;)V

    return-void
.end method
