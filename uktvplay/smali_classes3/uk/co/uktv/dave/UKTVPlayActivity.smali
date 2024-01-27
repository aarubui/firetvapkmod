.class public Luk/co/uktv/dave/UKTVPlayActivity;
.super Luk/co/uktv/dave/UKTVPlayActivityBase;
.source "UKTVPlayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayActivity"


# instance fields
.field private wasAppPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWebAppUrl()Ljava/lang/String;
    .locals 8

    .line 98
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "autoTune"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_3

    const-string v2, ""

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget v4, Luk/co/uktv/dave/R$string;->web_app_hostname_url:I

    invoke-virtual {p0, v4}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Luk/co/uktv/dave/R$string;->web_app_deep_link_path:I

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v2, "/auto-tune"

    .line 112
    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v0, 0x1

    .line 113
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getDeviceBrand()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    .line 114
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    .line 115
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getDeviceVariant()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    sget v0, Luk/co/uktv/dave/R$string;->version:I

    .line 116
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v6, v1

    sget v0, Luk/co/uktv/dave/R$string;->hash:I

    .line 117
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v6, v1

    .line 110
    invoke-virtual {p0, v4, v6}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_3
    :goto_0
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getWebAppUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    .line 33
    invoke-super {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->broadcast(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->schedule(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 63
    sget-object v0, Luk/co/uktv/dave/UKTVPlayActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Received new intent: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget v4, Luk/co/uktv/dave/R$string;->deep_link_intent_action:I

    invoke-virtual {p0, v4}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, ""

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "autoTune"

    .line 74
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v1, "houseNumber: %s, autoTune: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Luk/co/uktv/dave/messaging/ajb/DeeplinkRequestReceivedAjbMessage;

    invoke-direct {v0, v2, p1}, Luk/co/uktv/dave/messaging/ajb/DeeplinkRequestReceivedAjbMessage;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Intent doesn\'t contain houseNumber"

    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_2
    sget v2, Luk/co/uktv/dave/R$string;->key_adm_data_msg:I

    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v2, p1, v3

    const-string v4, "directive: %s"

    .line 83
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 86
    new-instance v0, Luk/co/uktv/dave/messaging/ajb/AlexaDirectiveReceivedAjbMessage;

    invoke-direct {v0, p1}, Luk/co/uktv/dave/messaging/ajb/AlexaDirectiveReceivedAjbMessage;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    sget-object v0, Luk/co/uktv/dave/UKTVPlayActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "Could not parse directive: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Unsupported intent: %s"

    .line 93
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    .line 44
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    .line 49
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onResume()V

    .line 50
    iget-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    .line 52
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public onWebAppReady(Luk/co/uktv/dave/messaging/ajb/WebAppReadyMessage;)V
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
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->reportFullyDrawn()V

    return-void
.end method
