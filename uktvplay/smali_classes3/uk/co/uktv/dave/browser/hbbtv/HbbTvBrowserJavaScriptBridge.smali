.class Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;
.super Luk/co/uktv/dave/browser/JavaScriptBridge;
.source "HbbTvBrowserJavaScriptBridge.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Luk/co/uktv/dave/browser/JavaScriptBridge;-><init>()V

    return-void
.end method


# virtual methods
.method protected detectReceivedMessageClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
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

    const-string v0, "exitApp"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    const-class p1, Luk/co/uktv/dave/messaging/tal/ExitAppFromTalMessage;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/vewd/core/sdk/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 18
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

    .line 30
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V

    return-void
.end method
