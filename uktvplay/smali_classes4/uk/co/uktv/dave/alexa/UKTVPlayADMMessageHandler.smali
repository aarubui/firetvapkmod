.class public Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "UKTVPlayADMMessageHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayADMMessageHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    .line 23
    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onMessage(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const-string v0, "onMessage: Intent does not contain extras"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    sget v0, Luk/co/uktv/dave/R$string;->key_adm_data_msg:I

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    sget v1, Luk/co/uktv/dave/R$string;->key_adm_data_time:I

    invoke-virtual {p0, v1}, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "onMessage: %s (%s)"

    .line 53
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 57
    :try_start_0
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 58
    new-instance v1, Luk/co/uktv/dave/messaging/ajb/AlexaDirectiveReceivedAjbMessage;

    invoke-direct {v1, p1}, Luk/co/uktv/dave/messaging/ajb/AlexaDirectiveReceivedAjbMessage;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-static {v1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "onMessage: Could not parse directive: %s"

    .line 60
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRegistered(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newRegistrationId"
        }
    .end annotation

    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "onRegistered: newRegistrationId=%s"

    .line 28
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->getSharedInstance()Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->setDownChannelReady(ZLjava/lang/String;)Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    return-void
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorId"
        }
    .end annotation

    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onRegistrationError: errorId=%s"

    .line 39
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onUnregistered(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrationId"
        }
    .end annotation

    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onUnregistered: registrationId=%s"

    .line 34
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
