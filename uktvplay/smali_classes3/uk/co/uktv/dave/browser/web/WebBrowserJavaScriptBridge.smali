.class Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;
.super Luk/co/uktv/dave/browser/JavaScriptBridge;
.source "WebBrowserJavaScriptBridge.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Luk/co/uktv/dave/browser/JavaScriptBridge;-><init>()V

    return-void
.end method


# virtual methods
.method protected detectReceivedMessageClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Luk/co/uktv/dave/messaging/tal/TalMessage$From;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "controlMediaPlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "disposeMediaPlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "inititializeMediaPlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "exitApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "getLicenceUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :pswitch_0
    const-class p1, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;

    return-object p1

    .line 37
    :pswitch_1
    const-class p1, Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage;

    return-object p1

    .line 35
    :pswitch_2
    const-class p1, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;

    return-object p1

    .line 33
    :pswitch_3
    const-class p1, Luk/co/uktv/dave/messaging/tal/ExitAppFromTalMessage;

    return-object p1

    .line 41
    :pswitch_4
    const-class p1, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6670eaac -> :sswitch_4
        -0x4e67b3dd -> :sswitch_3
        -0x1f686f96 -> :sswitch_2
        -0x15fbbbba -> :sswitch_1
        0x2a6ab248 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Luk/co/uktv/dave/browser/JavaScriptBridge;->receiveMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/tal/DirectiveReceivedToTalMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/tal/PauseAppToTalMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V

    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V

    return-void
.end method
