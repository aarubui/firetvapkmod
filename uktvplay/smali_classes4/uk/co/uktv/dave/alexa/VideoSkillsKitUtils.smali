.class public final Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;
.super Ljava/lang/Object;
.source "VideoSkillsKitUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSkillsKitUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initializeAlexaClientLibrary(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->getSharedInstance()Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    move-result-object v0

    .line 44
    sget v1, Luk/co/uktv/dave/R$string;->alexa_skill_id:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    sget v2, Luk/co/uktv/dave/R$string;->alexa_skill_stage:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "development"

    const-string v4, "certification"

    const-string v5, "live"

    .line 47
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 52
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v5

    .line 57
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Alexa.RemoteVideoPlayer"

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "Alexa.PlaybackController"

    .line 59
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "Alexa.SeekController"

    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :try_start_0
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    const/4 p0, 0x1

    .line 64
    invoke-virtual {v0, p0}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->setAlexaEnabled(Z)Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->TAG:Ljava/lang/String;

    const-string v1, "Could not initialize Alexa Client Library"

    .line 66
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static initializeAmazonDeviceMessaging(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    .line 73
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v0, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->TAG:Ljava/lang/String;

    const-string v1, "ADM is supported on this device"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :try_start_1
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p0}, Lcom/amazon/device/messaging/development/ADMManifest;->checkManifestAuthoredProperly(Landroid/content/Context;)V

    .line 85
    :cond_0
    new-instance v1, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v1, p0}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v1}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    invoke-virtual {v1}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 89
    invoke-virtual {v1}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ADM registration id: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 99
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->getSharedInstance()Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v2, p0}, Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;->setDownChannelReady(ZLjava/lang/String;)Lcom/amazon/alexa/vsk/clientlib/AlexaClientManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->TAG:Ljava/lang/String;

    const-string v1, "ADM initialization is failed"

    .line 107
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    :catch_1
    sget-object p0, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->TAG:Ljava/lang/String;

    const-string v0, "ADM is not supported on this device"

    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initializeVideoSkillsKit(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 25
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->TAG:Ljava/lang/String;

    const-string v6, "Found asset: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    .line 29
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not read assets"

    .line 32
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_0
    invoke-static {p0}, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->initializeAlexaClientLibrary(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->initializeAmazonDeviceMessaging(Landroid/content/Context;)V

    return-void
.end method
