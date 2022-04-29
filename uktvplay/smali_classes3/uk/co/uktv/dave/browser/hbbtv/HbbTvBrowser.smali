.class public Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;
.super Landroidx/fragment/app/Fragment;
.source "HbbTvBrowser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HbbTvBrowser"


# instance fields
.field private javaScriptBridge:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

.field private viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

.field private volumeManager:Luk/co/uktv/dave/browser/hbbtv/VolumeManager;

.field private webAppInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;
    .locals 0

    .line 29
    iget-object p0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    return-object p0
.end method

.method static synthetic access$200(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->getUserAgentSuffix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;
    .locals 0

    .line 29
    iget-object p0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

    return-object p0
.end method

.method static synthetic access$400(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/browser/hbbtv/VolumeManager;
    .locals 0

    .line 29
    iget-object p0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->volumeManager:Luk/co/uktv/dave/browser/hbbtv/VolumeManager;

    return-object p0
.end method

.method static synthetic access$502(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->webAppInitialized:Z

    return p1
.end method

.method private getUserAgentSuffix()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 149
    invoke-static {}, Lcom/vewd/core/sdk/Browser;->getInstance()Lcom/vewd/core/sdk/Browser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vewd/core/sdk/Browser;->getBrowserInfo()Lcom/vewd/core/shared/BrowserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vewd/core/shared/BrowserInfo;->getChromiumVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SmartTv_%s_Build_%s_Chromium_%s"

    .line 145
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeWebApp()V
    .locals 6

    .line 102
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f10006a

    invoke-virtual {p0, v1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v1, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Initializing web app, url=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "4.23/arm"

    aput-object v3, v2, v4

    const-string v3, "Vewd Browser SDK Version: %s"

    .line 105
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Luk/co/uktv/dave/browser/hbbtv/ParentalControls;

    invoke-virtual {p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Luk/co/uktv/dave/browser/hbbtv/ParentalControls;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v2, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;

    invoke-direct {v2, v1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;-><init>(Luk/co/uktv/dave/browser/hbbtv/ParentalControls;)V

    .line 111
    invoke-static {}, Lcom/vewd/core/sdk/Browser;->getInstance()Lcom/vewd/core/sdk/Browser;

    move-result-object v1

    iget-object v3, v2, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->browserClient:Lcom/vewd/core/sdk/BrowserClient;

    invoke-virtual {v1, v3}, Lcom/vewd/core/sdk/Browser;->setBrowserClient(Lcom/vewd/core/sdk/BrowserClient;)V

    .line 113
    invoke-static {}, Lcom/vewd/core/sdk/Browser;->getInstance()Lcom/vewd/core/sdk/Browser;

    move-result-object v1

    invoke-virtual {p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;

    invoke-direct {v4, p0, v2, v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;-><init>(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/vewd/core/sdk/Browser;->initialize(Landroid/content/Context;Lcom/vewd/core/sdk/Browser$InitializationCallback;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    .line 45
    invoke-virtual {p1}, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->webAppInitialized:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {v0}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->webAppInitialized:Z

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEvaluateJavaScript(Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;)V
    .locals 2
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

    .line 96
    iget-boolean v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->webAppInitialized:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;->getJavaScriptCode()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 64
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->webAppInitialized:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {v0}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->resume()V

    .line 68
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {v0}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->resumeJavascript()V

    .line 70
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->volumeManager:Luk/co/uktv/dave/browser/hbbtv/VolumeManager;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->requestAudioFocus()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 75
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->volumeManager:Luk/co/uktv/dave/browser/hbbtv/VolumeManager;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->abandonAudioFocus()V

    .line 76
    iget-boolean v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->webAppInitialized:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {v0}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->pause()V

    .line 78
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {v0}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->pauseJavascript()V

    .line 80
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 81
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->webAppInitialized:Z

    .line 54
    new-instance p1, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;

    invoke-virtual {p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->volumeManager:Luk/co/uktv/dave/browser/hbbtv/VolumeManager;

    .line 56
    new-instance p1, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

    invoke-direct {p1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

    .line 58
    invoke-direct {p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->initializeWebApp()V

    return-void
.end method
