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

    .line 20
    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onMessage(Landroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 41
    sget v0, Luk/co/uktv/dave/R$string;->key_adm_data_msg:I

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    sget v1, Luk/co/uktv/dave/R$string;->key_adm_data_time:I

    invoke-virtual {p0, v1}, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    sget-object v2, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v1, "onMessage: %s (%s)"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-class v2, Luk/co/uktv/dave/UKTVPlayActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

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

    .line 25
    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "onRegistered: newRegistrationId=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
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

    .line 36
    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onRegistrationError: errorId=%s"

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

    .line 31
    sget-object v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onUnregistered: registrationId=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
