.class public abstract Luk/co/uktv/dave/browser/JavaScriptBridge;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"


# static fields
.field private static final INTERFACE_NAME:Ljava/lang/String; = "AJBHost"

.field private static final TAG:Ljava/lang/String; = "JavaScriptBridge"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Luk/co/uktv/dave/browser/JavaScriptBridge;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic lambda$receiveMessage$0(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "type"

    .line 40
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract detectReceivedMessageClass(Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method protected final encodeAndSendMessage(Luk/co/uktv/dave/messaging/tal/TalMessage$To;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Luk/co/uktv/dave/messaging/tal/TalMessage$To;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    :try_start_0
    iget-object v2, p0, Luk/co/uktv/dave/browser/JavaScriptBridge;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 61
    sget-object v3, Luk/co/uktv/dave/browser/JavaScriptBridge;->TAG:Ljava/lang/String;

    const-string v4, "Sending message: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v3, Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:window.ajb.receiveMessage(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 64
    sget-object v3, Luk/co/uktv/dave/browser/JavaScriptBridge;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Cold not send message: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$receiveMessage$1$uk-co-uktv-dave-browser-JavaScriptBridge(Ljava/lang/String;Ljava/lang/Class;)Luk/co/uktv/dave/messaging/tal/TalMessage$From;
    .locals 1

    .line 43
    iget-object v0, p0, Luk/co/uktv/dave/browser/JavaScriptBridge;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/co/uktv/dave/messaging/tal/TalMessage$From;

    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "AJBHost"

    return-object v0
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 34
    sget-object v0, Luk/co/uktv/dave/browser/JavaScriptBridge;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Received message: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    sget-object v4, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda5;->INSTANCE:Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda5;

    .line 38
    invoke-virtual {v2, v4}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    sget-object v4, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda2;->INSTANCE:Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda2;

    .line 39
    invoke-virtual {v2, v4}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    sget-object v4, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;->INSTANCE:Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;

    .line 40
    invoke-virtual {v2, v4}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    sget-object v4, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda3;->INSTANCE:Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda3;

    .line 41
    invoke-virtual {v2, v4}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    new-instance v4, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/browser/JavaScriptBridge;)V

    .line 42
    invoke-virtual {v2, v4}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    new-instance v4, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda1;-><init>(Luk/co/uktv/dave/browser/JavaScriptBridge;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v4}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v2, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/co/uktv/dave/messaging/tal/TalMessage$From;

    if-eqz v2, :cond_0

    .line 47
    invoke-static {v2}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    goto :goto_0

    :cond_0
    const-string v2, "Unsupported message: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 49
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    sget-object v2, Luk/co/uktv/dave/browser/JavaScriptBridge;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Could not receive message: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
