.class public Lcom/utv/App;
.super Lorg/litepal/LitePalApplication;
.source "App.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/yanhua/tv/lib_dlna/base/OnBindUpnpServiceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mApp"

.field private static _isArm64:Z = false

.field private static _strArm64LibsDir:Ljava/lang/String; = null

.field private static _strFileDir:Ljava/lang/String; = null

.field private static _strLibsDir:Ljava/lang/String; = null

.field private static app:Lcom/utv/App; = null

.field public static bScLogin:Z = false

.field public static bindProjectionServiceFlag:Z = false

.field public static config:Lcom/utv/bean/MessageBean; = null

.field private static context:Landroid/content/Context; = null

.field public static isErrorDialogShow:Z = false

.field public static pushService:Lcom/utv/IYPushService;


# instance fields
.field private biParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conn:Landroid/content/ServiceConnection;

.field private count:I

.field private isScreenOn:Z

.field private isTableStart:Z

.field private iyPushMessageListener:Lcom/utv/IYPushMessageListener;

.field public regular:Landroid/graphics/Typeface;

.field private screenChangeReceiver:Landroid/content/BroadcastReceiver;

.field public statusBarHeight:I

.field public thin:Landroid/graphics/Typeface;

.field private topActivity:Landroid/app/Activity;

.field private use_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lorg/litepal/LitePalApplication;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/utv/App;->isTableStart:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/utv/App;->isScreenOn:Z

    .line 99
    new-instance v1, Lcom/utv/App$1;

    invoke-direct {v1, p0}, Lcom/utv/App$1;-><init>(Lcom/utv/App;)V

    iput-object v1, p0, Lcom/utv/App;->conn:Landroid/content/ServiceConnection;

    .line 503
    iput v0, p0, Lcom/utv/App;->count:I

    .line 614
    new-instance v0, Lcom/utv/App$2;

    invoke-direct {v0, p0}, Lcom/utv/App$2;-><init>(Lcom/utv/App;)V

    iput-object v0, p0, Lcom/utv/App;->screenChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    .line 673
    new-instance v0, Lcom/utv/App$3;

    invoke-direct {v0, p0}, Lcom/utv/App$3;-><init>(Lcom/utv/App;)V

    iput-object v0, p0, Lcom/utv/App;->iyPushMessageListener:Lcom/utv/IYPushMessageListener;

    return-void
.end method

.method private static LoadLibraray()V
    .locals 3

    const-string v0, "mApp"

    const-string v1, "mv3_platform"

    .line 377
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mv3_common"

    .line 378
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mv3_mpplat"

    .line 379
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "mv3_playerbase"

    .line 381
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "load libmv3_playerbase.so failed"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    :try_start_1
    const-string v1, "mv3_jni_4.0"

    .line 389
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "load libmv3_jni_4.0.so failed"

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v1, "libmv3_jni"

    .line 395
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    const-string v1, "load libmv3_jni.so failed"

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static LoadLibrarayArm64()V
    .locals 4

    const-string v0, "mApp"

    :try_start_0
    const-string v1, "mv3_platform"

    .line 468
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load Arm64 libmv3_platform.so failed,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v1, "mv3_common"

    .line 475
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load libmv3_common.so failed,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    const-string v1, "mv3_mpplat"

    .line 482
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load libmv3_mpplat.so failed,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_3
    const-string v1, "mv3_playerbase"

    .line 489
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load libmv3_playerbase.so failed,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_4
    const-string v1, "LoadLibraray : load libmv3_jni.so"

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mv3_jni"

    .line 497
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load libmv3_jni.so failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 79
    sget-object v0, Lcom/utv/App;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/utv/App;)Lcom/utv/IYPushMessageListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/utv/App;->iyPushMessageListener:Lcom/utv/IYPushMessageListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/utv/App;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/utv/App;->isScreenOn:Z

    return p0
.end method

.method static synthetic access$202(Lcom/utv/App;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/utv/App;->isScreenOn:Z

    return p1
.end method

.method private bindProjectionService()V
    .locals 1

    .line 264
    invoke-static {}, Lcom/yanhua/tv/lib_dlna/searchDevice/SearchDeviceHelper;->getInstance()Lcom/yanhua/tv/lib_dlna/searchDevice/SearchDeviceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yanhua/tv/lib_dlna/searchDevice/SearchDeviceHelper;->bindUpnpService(Lcom/yanhua/tv/lib_dlna/base/OnBindUpnpServiceListener;)V

    return-void
.end method

.method private copyPlayerIni()V
    .locals 5

    .line 436
    invoke-direct {p0}, Lcom/utv/App;->getCurAppDir()Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x32363420

    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x68657663

    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x6d703320

    .line 441
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x61616320

    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x6d703420

    .line 445
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x666c7620

    .line 446
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x74732020

    .line 447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v2, Lcom/arcvideo/MediaPlayer/ModuleManager;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/arcvideo/MediaPlayer/ModuleManager;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 450
    invoke-virtual {v2}, Lcom/arcvideo/MediaPlayer/ModuleManager;->QueryRequiredModules()Ljava/util/ArrayList;

    .line 452
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    sget-boolean v0, Lcom/utv/App;->_isArm64:Z

    const-string v1, "MV3Plugin.ini"

    if-eqz v0, :cond_1

    .line 460
    sget-object v0, Lcom/utv/App;->_strArm64LibsDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/arcvideo/MediaPlayer/ModuleManager;->GenerateConfigFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_1
    sget-object v0, Lcom/utv/App;->_strLibsDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/arcvideo/MediaPlayer/ModuleManager;->GenerateConfigFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 321
    sget-object v0, Lcom/utv/App;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getCurAppDir()Ljava/lang/String;
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/utv/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 416
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v1, Lcom/utv/App;->_strLibsDir:Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Lcom/utv/App;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    .line 419
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object v0, Lcom/utv/App;->_strArm64LibsDir:Ljava/lang/String;

    const-string v1, "arm64"

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/utv/App;->_isArm64:Z

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/App;->_strArm64LibsDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/utv/App;->_strArm64LibsDir:Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/utv/App;->_strLibsDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/App;->_strLibsDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/utv/App;->_strLibsDir:Ljava/lang/String;

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/App;->_strLibsDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lib/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/utv/App;->_strLibsDir:Ljava/lang/String;

    .line 428
    sget-object v0, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    .line 430
    :cond_1
    sget-object v0, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/utv/App;->_strFileDir:Ljava/lang/String;

    .line 432
    :cond_2
    invoke-virtual {p0}, Lcom/utv/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getIns()Lcom/utv/App;
    .locals 1

    .line 329
    sget-object v0, Lcom/utv/App;->app:Lcom/utv/App;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 349
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 353
    invoke-virtual {p0}, Lcom/utv/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/utv/App;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/utv/util/DensityUtil;->getDensity(Landroid/content/Context;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initBI()V
    .locals 6

    .line 403
    sget-object v0, Lcom/utv/http/RequestManager;->BI_BASE_URL:Ljava/lang/String;

    invoke-static {p0}, Lcom/utv/util/DevicesInfoUtil;->fetchDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/utv/http/RequestManager;->EPG_siteId:Ljava/lang/String;

    sget-object v4, Lcom/utv/http/RequestManager;->biVersion:Ljava/lang/String;

    sget-object v2, Lcom/utv/BuildConfig;->isTestEnvironment:Ljava/lang/Boolean;

    .line 405
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "101"

    goto :goto_0

    :cond_0
    const-string v2, "10"

    :goto_0
    move-object v5, v2

    const-string v2, "15.1.9"

    .line 403
    invoke-static/range {v0 .. v5}, Lcom/statistics/RequestStack;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initLeakcanary()V
    .locals 1

    .line 299
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    return-void
.end method

.method private initUGCSDK()V
    .locals 2

    const-string/jumbo v0, "userToken"

    .line 253
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-static {p0}, Lssb/utv/livePlayer/UGCManager;->ugcInit(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "userId"

    .line 257
    invoke-static {v1}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lssb/utv/livePlayer/UGCManager;->ugcInit(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    invoke-static {}, Lcom/utv/util/ugc/GlobalUGCAuthCallback;->getInstance()Lcom/utv/util/ugc/GlobalUGCAuthCallback;

    move-result-object v0

    invoke-static {v0}, Lssb/utv/livePlayer/UGCManager;->ugcSetUserStatusListener(Lssb/utv/livePlayer/UGCManager$UserStatusListener;)V

    .line 260
    invoke-static {}, Lcom/utv/util/ugc/GlobalUGCUserActionCallback;->getInstance()Lcom/utv/util/ugc/GlobalUGCUserActionCallback;

    move-result-object v0

    invoke-static {v0}, Lssb/utv/livePlayer/UGCManager;->ugcSetUserActionListener(Lssb/utv/livePlayer/UGCManager$UserActionListener;)V

    return-void
.end method

.method private isMainProcess()Z
    .locals 5

    const-string v0, "activity"

    .line 307
    invoke-virtual {p0, v0}, Lcom/utv/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 308
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/utv/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 313
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private registerScreenChangeReceiver()V
    .locals 2

    .line 600
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 602
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 606
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/utv/App;->screenChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/utv/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendBi()V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    const-string/jumbo v1, "userId"

    invoke-static {v1}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    invoke-static {}, Lcom/utv/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/utv/util/DevicesInfoUtil;->fetchIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ip"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    invoke-static {}, Lcom/utv/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/utv/util/DevicesInfoUtil;->fetchCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "carrier"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    invoke-static {}, Lcom/utv/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/utv/util/DevicesInfoUtil;->fetchNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_type"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    .line 657
    invoke-static {v1}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "is_login_in"

    .line 656
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/statistics/RequestStack;->send(Ljava/util/Map;)V

    return-void
.end method

.method private sendEndBi()V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 645
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    const-string v1, "event"

    const-string v2, "103"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/utv/App;->use_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-direct {p0}, Lcom/utv/App;->sendBi()V

    return-void
.end method

.method private sendStartBi()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 634
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    const-string v1, "event"

    const-string v2, "102"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcom/utv/App;->biParam:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/utv/App;->isTableStart:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "2"

    :goto_0
    const-string/jumbo v2, "start_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-direct {p0}, Lcom/utv/App;->sendBi()V

    .line 637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "utv_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "utv_launch_app"

    .line 639
    invoke-static {p0, v1, v0}, Lcom/utv/util/appsFlyer/AppsFlyerConfigHelper;->sendLogEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private unBindProjectionService()V
    .locals 1

    .line 268
    invoke-static {}, Lcom/yanhua/tv/lib_dlna/searchDevice/SearchDeviceHelper;->getInstance()Lcom/yanhua/tv/lib_dlna/searchDevice/SearchDeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanhua/tv/lib_dlna/searchDevice/SearchDeviceHelper;->unBindUpnpService()V

    return-void
.end method

.method private unregisterScreenChangeReceiver()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/utv/App;->screenChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/utv/App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 372
    invoke-super {p0, p1}, Lorg/litepal/LitePalApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 373
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getRegular()Landroid/graphics/Typeface;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/utv/App;->regular:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getStatusBarHeight2()I
    .locals 4

    .line 363
    invoke-virtual {p0}, Lcom/utv/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/utv/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getThin()Landroid/graphics/Typeface;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/utv/App;->thin:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/utv/App;->topActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated:::activity--->>>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mApp"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    instance-of p2, p1, Lcom/utv/activity/MainActivity;

    if-eqz p2, :cond_0

    .line 522
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/utv/YPushService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    iget-object p2, p0, Lcom/utv/App;->conn:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/utv/App;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 525
    invoke-direct {p0}, Lcom/utv/App;->bindProjectionService()V

    .line 527
    invoke-direct {p0}, Lcom/utv/App;->registerScreenChangeReceiver()V

    goto :goto_0

    .line 528
    :cond_0
    instance-of p2, p1, Lssb/utv/livePlayer/ui/live/activity/LiveReplayActivity;

    if-nez p2, :cond_1

    instance-of p1, p1, Lssb/utv/livePlayer/ui/live/activity/LivePlayerActivity;

    if-eqz p1, :cond_3

    .line 529
    :cond_1
    invoke-static {}, Lcom/utv/util/floatUtil/FloatWindow;->get()Lcom/utv/util/floatUtil/IFloatWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 530
    invoke-static {}, Lcom/utv/util/floatUtil/FloatWindow;->destroy()V

    .line 532
    :cond_2
    iget-object p1, p0, Lcom/utv/App;->topActivity:Landroid/app/Activity;

    instance-of p2, p1, Lcom/utv/activity/VarietyVideoActivity;

    if-eqz p2, :cond_3

    .line 533
    check-cast p1, Lcom/utv/activity/VarietyVideoActivity;

    invoke-virtual {p1}, Lcom/utv/activity/VarietyVideoActivity;->pauseAudioPlay()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed:::activity--->>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mApp"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    instance-of p1, p1, Lcom/utv/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/utv/App;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Lcom/utv/App;->unbindService(Landroid/content/ServiceConnection;)V

    .line 594
    invoke-direct {p0}, Lcom/utv/App;->unBindProjectionService()V

    .line 595
    invoke-direct {p0}, Lcom/utv/App;->unregisterScreenChangeReceiver()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityPostCreated:::activity--->>>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mApp"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPreDestroyed:::activity--->>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mApp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed:::activity--->>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mApp"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    instance-of v0, p1, Lcom/utv/activity/VarietyVideoActivity;

    if-eqz v0, :cond_0

    .line 565
    check-cast p1, Lcom/utv/activity/VarietyVideoActivity;

    invoke-virtual {p1}, Lcom/utv/activity/VarietyVideoActivity;->resumeAudioPlay()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 540
    iget v0, p0, Lcom/utv/App;->count:I

    if-nez v0, :cond_0

    const-string v0, "mApp"

    const-string/jumbo v1, "\u5207\u5230\u524d\u53f0"

    .line 541
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/utv/App;->use_time:J

    .line 544
    invoke-direct {p0}, Lcom/utv/App;->sendStartBi()V

    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lcom/utv/App;->isTableStart:Z

    .line 546
    instance-of v0, p1, Lcom/utv/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/utv/activity/MainActivity;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 549
    move-object v0, p1

    check-cast v0, Lcom/utv/activity/MainActivity;

    .line 550
    invoke-virtual {v0}, Lcom/utv/activity/MainActivity;->getOnHomeTabClickListener()Lcom/utv/activity/MainActivity$OnHomeTabClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0}, Lcom/utv/activity/MainActivity$OnHomeTabClickListener;->onHomeTabClick()V

    .line 557
    :cond_0
    iget v0, p0, Lcom/utv/App;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/utv/App;->count:I

    .line 558
    iput-object p1, p0, Lcom/utv/App;->topActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 576
    iget p1, p0, Lcom/utv/App;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/utv/App;->count:I

    if-nez p1, :cond_0

    const-string p1, "mApp"

    const-string/jumbo v0, "\u5207\u5230\u540e\u53f0"

    .line 578
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/utv/App;->use_time:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/utv/App;->use_time:J

    .line 580
    invoke-direct {p0}, Lcom/utv/App;->sendEndBi()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 145
    invoke-super {p0}, Lorg/litepal/LitePalApplication;->onCreate()V

    .line 151
    invoke-virtual {p0, p0}, Lcom/utv/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/utv/App;->isTableStart:Z

    .line 155
    invoke-direct {p0}, Lcom/utv/App;->copyPlayerIni()V

    .line 156
    sget-boolean v1, Lcom/utv/App;->_isArm64:Z

    if-eqz v1, :cond_0

    .line 157
    invoke-static {}, Lcom/utv/App;->LoadLibrarayArm64()V

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/utv/App;->LoadLibraray()V

    .line 164
    :goto_0
    const-class v1, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;->setPlayManager(Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 168
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->setShowType(I)V

    .line 170
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->setRenderType(I)V

    .line 171
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->enableMediaCodec()V

    .line 172
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->enableMediaCodecTexture()V

    .line 174
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "rtsp_transport"

    const-string/jumbo v4, "tcp"

    invoke-direct {v2, v0, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v4, "rtsp_flags"

    const-string v5, "prefer_tcp"

    invoke-direct {v2, v0, v4, v5}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v4, "allowed_media_types"

    const-string/jumbo v5, "video"

    invoke-direct {v2, v0, v4, v5}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/16 v4, 0x4e20

    const-string/jumbo v5, "timeout"

    invoke-direct {v2, v0, v5, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 186
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/16 v4, 0x524

    const-string v5, "buffer_size"

    invoke-direct {v2, v0, v5, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 189
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v4, "infbuf"

    invoke-direct {v2, v0, v4, v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 192
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/16 v4, 0x64

    const-string v5, "analyzemaxduration"

    invoke-direct {v2, v0, v5, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 195
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/16 v4, 0x2800

    const-string v5, "probesize"

    invoke-direct {v2, v0, v5, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 197
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v4, "flush_packets"

    invoke-direct {v2, v0, v4, v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 199
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/4 v4, 0x4

    const-string v5, "packet-buffering"

    invoke-direct {v2, v4, v5, v1}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 203
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v2, "dns_cache_clear"

    invoke-direct {v1, v0, v2, v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 206
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->setOptionModelList(Ljava/util/List;)V

    .line 209
    sput-object p0, Lcom/utv/App;->app:Lcom/utv/App;

    .line 210
    invoke-static {p0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p0}, Lcom/utv/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/utv/App;->context:Landroid/content/Context;

    .line 212
    invoke-virtual {p0}, Lcom/utv/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/PingFangTC-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/utv/App;->regular:Landroid/graphics/Typeface;

    .line 213
    invoke-virtual {p0}, Lcom/utv/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/PingFangTC-Thin.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/utv/App;->thin:Landroid/graphics/Typeface;

    .line 214
    invoke-direct {p0}, Lcom/utv/App;->getStatusBarHeight()I

    move-result v1

    iput v1, p0, Lcom/utv/App;->statusBarHeight:I

    const-string v1, "LANG"

    .line 215
    invoke-static {v1}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "zh_TW"

    .line 217
    invoke-static {v1, v2}, Lcom/utv/util/PreferencesUtil;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/utv/App;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/utv/App;->initBI()V

    .line 223
    new-instance v1, Lcom/yanhua/tv/imageload/IImageFetcher$InitConfig;

    invoke-direct {v1}, Lcom/yanhua/tv/imageload/IImageFetcher$InitConfig;-><init>()V

    .line 224
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/yanhua/tv/imageload/IImageFetcher$InitConfig;->setBmpConfig(Landroid/graphics/Bitmap$Config;)V

    const/16 v2, 0x1e

    .line 225
    invoke-virtual {v1, v2}, Lcom/yanhua/tv/imageload/IImageFetcher$InitConfig;->setTimeOutSecs(I)V

    .line 226
    sget-object v2, Lcom/utv/App;->context:Landroid/content/Context;

    sget-object v3, Lcom/yanhua/tv/imageload/ImageLoader$Type;->FRESCO:Lcom/yanhua/tv/imageload/ImageLoader$Type;

    invoke-static {v2, v3, v1}, Lcom/yanhua/tv/imageload/ImageLoader;->init(Landroid/content/Context;Lcom/yanhua/tv/imageload/ImageLoader$Type;Lcom/yanhua/tv/imageload/IImageFetcher$InitConfig;)V

    .line 228
    invoke-static {}, Landroid/volley/ext/HttpRequest;->instance()Landroid/volley/ext/HttpRequest;

    move-result-object v1

    sget-object v2, Lcom/utv/App;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/volley/ext/HttpRequest;->init(Landroid/content/Context;Z)V

    .line 230
    sget-object v0, Lcom/utv/App;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/yanhua/tv/framework/cache/DiskCacheHelper;->init(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/yanhua/tv/lib_dlna/DLNAClient;->getInstance()Lcom/yanhua/tv/lib_dlna/DLNAClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yanhua/tv/lib_dlna/DLNAClient;->init(Landroid/app/Application;)V

    .line 236
    invoke-static {p0}, Lcom/utv/util/umeng/UMConfigHelper;->initPreUMeng(Landroid/content/Context;)V

    .line 237
    invoke-static {p0}, Lcom/utv/admob/AdMob;->init(Landroid/app/Application;)V

    .line 239
    invoke-direct {p0}, Lcom/utv/App;->initUGCSDK()V

    .line 241
    sget-object v0, Lcom/utv/BuildConfig;->isTestEnvironment:Ljava/lang/Boolean;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ea77cb3fa2"

    .line 241
    invoke-static {p0, v1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 244
    invoke-static {p0}, Lcom/utv/util/appsFlyer/AppsFlyerConfigHelper;->initAppsFlyer(Landroid/content/Context;)V

    .line 245
    invoke-static {p0}, Lcom/utv/util/appsFlyer/AppsFlyerConfigHelper;->startAppsFlyer(Landroid/content/Context;)V

    goto :goto_1

    .line 248
    :cond_2
    invoke-static {p0}, Lcom/utv/util/umeng/UMConfigHelper;->initUMeng(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 280
    invoke-super {p0}, Lorg/litepal/LitePalApplication;->onLowMemory()V

    const-string v0, "mApp"

    const-string v1, "---onLowMemory---"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->initialize(Landroid/content/Context;)V

    .line 283
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getInstance()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    .line 284
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 273
    invoke-super {p0}, Lorg/litepal/LitePalApplication;->onTerminate()V

    .line 274
    invoke-direct {p0}, Lcom/utv/App;->unBindProjectionService()V

    .line 275
    iget-object v0, p0, Lcom/utv/App;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/utv/App;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 289
    invoke-super {p0, p1}, Lorg/litepal/LitePalApplication;->onTrimMemory(I)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory:::level--->>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mApp"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    if-lt p1, v0, :cond_0

    .line 292
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->initialize(Landroid/content/Context;)V

    .line 293
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getInstance()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    .line 295
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/Glide;->onTrimMemory(I)V

    return-void
.end method

.method public onUpNpServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "mApp"

    const-string p2, "---onUpNpServiceConnected---"

    .line 663
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 664
    sput-boolean p1, Lcom/utv/App;->bindProjectionServiceFlag:Z

    return-void
.end method

.method public onUpNpServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "mApp"

    const-string v0, "---onDeviceRemoved---"

    .line 669
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 670
    sput-boolean p1, Lcom/utv/App;->bindProjectionServiceFlag:Z

    return-void
.end method
