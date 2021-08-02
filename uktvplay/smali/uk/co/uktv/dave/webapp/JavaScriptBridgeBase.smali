.class abstract Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;
.super Ljava/lang/Object;
.source "JavaScriptBridgeBase.java"


# static fields
.field private static final INTERFACE_NAME:Ljava/lang/String; = "AJBHost"

.field private static final TAG:Ljava/lang/String; = "JavaScriptBridgeBase"


# instance fields
.field private final onEvaluateJavaScript:Lj$/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lj$/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->onEvaluateJavaScript:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method protected decodeMessage(Ljava/lang/String;Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/FromWebAppMessage;
    .locals 1

    const-string v0, "exitApp"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {p2}, Luk/co/uktv/dave/messaging/from/ExitAppMessage;->fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/ExitAppMessage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final encodeAndSendMessage(Luk/co/uktv/dave/messaging/to/ToWebAppMessage;)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/to/ToWebAppMessage;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 68
    sget-object v0, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Sending message: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->onEvaluateJavaScript:Lj$/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.ajb.receiveMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "AJBHost"

    return-object v0
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 5

    .line 40
    sget-object v0, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Received message: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p1}, Luk/co/uktv/dave/messaging/WebAppMessage;->extractType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, v2, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->decodeMessage(Ljava/lang/String;Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/FromWebAppMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {v2}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Unsupported message: %s"

    .line 49
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendMessage(Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/webapp/JavaScriptBridgeBase;->encodeAndSendMessage(Luk/co/uktv/dave/messaging/to/ToWebAppMessage;)V

    return-void
.end method
