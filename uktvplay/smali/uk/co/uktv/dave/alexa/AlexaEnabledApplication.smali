.class public Luk/co/uktv/dave/alexa/AlexaEnabledApplication;
.super Landroid/app/Application;
.source "AlexaEnabledApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AlexaEnabledApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initializeAdm()V
    .locals 8

    .prologue
    .line 54
    :try_start_0
    const-string v5, "com.amazon.device.messaging.ADM"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    const-string v5, "AlexaEnabledApplication"

    const-string v6, "ADM Supported On This Device"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-static {p0}, Lcom/amazon/device/messaging/development/ADMManifest;->checkManifestAuthoredProperly(Landroid/content/Context;)V

    .line 63
    :try_start_1
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p0}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "adm":Lcom/amazon/device/messaging/ADM;
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 86
    .end local v0    # "adm":Lcom/amazon/device/messaging/ADM;
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 75
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "adm":Lcom/amazon/device/messaging/ADM;
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "admRegistrationId":Ljava/lang/String;
    const-string v5, "AlexaEnabledApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADM registration Id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->getSharedInstance()Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    move-result-object v2

    .line 80
    .local v2, "alexaClientManager":Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v1}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->setDownChannelReady(ZLjava/lang/String;)Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    .end local v0    # "adm":Lcom/amazon/device/messaging/ADM;
    .end local v1    # "admRegistrationId":Ljava/lang/String;
    .end local v2    # "alexaClientManager":Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;
    :catch_1
    move-exception v4

    .line 84
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "AlexaEnabledApplication"

    const-string v6, "ADM initialization is failed with exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initializeAlexaClientLibrary()V
    .locals 6

    .prologue
    .line 30
    invoke-static {}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->getSharedInstance()Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    move-result-object v2

    .line 32
    .local v2, "clientManager":Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;
    const-string v0, "amzn1.ask.skill.a140f2a0-5ad8-4d9f-9104-cdb4c6f4a6ef"

    .line 35
    .local v0, "alexaSkillId":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "Alexa.RemoteVideoPlayer"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v4, "Alexa.PlaybackController"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v4, "Alexa.SeekController"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :try_start_0
    const-string v4, "amzn1.ask.skill.a140f2a0-5ad8-4d9f-9104-cdb4c6f4a6ef"

    const-string v5, "live"

    invoke-virtual {v2, p0, v4, v5, v1}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    .line 47
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->setAlexaEnabled(Z)Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    const-string v3, "AlexaEnabledApplication"

    const-string v4, "AlexaEnabledApplication Is Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :try_start_0
    invoke-virtual {p0}, Luk/co/uktv/dave/alexa/AlexaEnabledApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "arr":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 19
    .local v2, "item":Ljava/lang/String;
    const-string v5, "AlexaEnabledApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "AlexaEnabledApplication"

    const-string v4, "asset error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-direct {p0}, Luk/co/uktv/dave/alexa/AlexaEnabledApplication;->initializeAlexaClientLibrary()V

    .line 26
    invoke-direct {p0}, Luk/co/uktv/dave/alexa/AlexaEnabledApplication;->initializeAdm()V

    .line 27
    return-void
.end method
