.class public Luk/co/uktv/dave/UKTVPlayApp;
.super Landroid/app/Application;
.source "UKTVPlayApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayApp"

.field private static final connected:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static debuggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Luk/co/uktv/dave/UKTVPlayApp;->connected:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 18
    sget-object v0, Luk/co/uktv/dave/UKTVPlayApp;->connected:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static isConnected()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Luk/co/uktv/dave/UKTVPlayApp;->connected:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static isDebuggable()Z
    .locals 1

    .line 26
    sget-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->debuggable:Z

    return v0
.end method

.method private registerConnectivityMonitor()V
    .locals 3

    .line 42
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 45
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 48
    new-instance v1, Luk/co/uktv/dave/UKTVPlayApp$1;

    invoke-direct {v1, p0}, Luk/co/uktv/dave/UKTVPlayApp$1;-><init>(Luk/co/uktv/dave/UKTVPlayApp;)V

    const-string v2, "connectivity"

    .line 61
    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlayApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 62
    invoke-virtual {v2, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    sget-object v0, Luk/co/uktv/dave/UKTVPlayApp;->TAG:Ljava/lang/String;

    const-string v1, "UKTVPlayApplication is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
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

    .line 37
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayApp;->registerConnectivityMonitor()V

    .line 38
    invoke-static {p0}, Luk/co/uktv/dave/alexa/VideoSkillsKitUtils;->initializeVideoSkillsKit(Landroid/content/Context;)V

    return-void
.end method
