.class public Luk/co/uktv/dave/UKTVPlayApp;
.super Landroid/app/Application;
.source "UKTVPlayApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayApp"

.field private static debuggable:Z = false

.field private static freeViewFeatureEnabled:Z = false

.field private static wrapperPlatform:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    .line 19
    sget-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->debuggable:Z

    return v0
.end method

.method public static isFireTV()Z
    .locals 2

    .line 23
    sget-object v0, Luk/co/uktv/dave/UKTVPlayApp;->wrapperPlatform:Ljava/lang/String;

    const-string v1, "FireTV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFreeViewPlayFireTV()Z
    .locals 1

    .line 27
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isFireTV()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->freeViewFeatureEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    sget-object v0, Luk/co/uktv/dave/UKTVPlayApp;->TAG:Ljava/lang/String;

    const-string v1, "UKTVPlayApplication is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->debuggable:Z

    const v0, 0x7f1100cf

    .line 36
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luk/co/uktv/dave/UKTVPlayApp;->wrapperPlatform:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x7f110067

    invoke-virtual {p0, v1}, Luk/co/uktv/dave/UKTVPlayApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->freeViewFeatureEnabled:Z

    .line 40
    invoke-static {p0}, Luk/co/uktv/dave/network/ConnectivityMonitor;->registerConnectivityMonitor(Landroid/content/Context;)V

    return-void
.end method
