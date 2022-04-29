.class public Luk/co/uktv/dave/browser/web/WebBrowser;
.super Landroidx/fragment/app/Fragment;
.source "WebBrowser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebBrowser"


# instance fields
.field private javaScriptBridge:Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;

.field private mediaPlayerManager:Luk/co/uktv/dave/browser/web/MediaPlayerManager;

.field private viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

.field private webAppInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private initializeWebApp()V
    .locals 6

    .line 104
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/WebBrowser;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f10006a

    invoke-virtual {p0, v1}, Luk/co/uktv/dave/browser/web/WebBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget-object v1, Luk/co/uktv/dave/browser/web/WebBrowser;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Initializing web app, url=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 111
    :cond_0
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v1, v1, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 113
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 114
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 116
    new-instance v1, Luk/co/uktv/dave/browser/web/WebBrowserClient;

    invoke-direct {v1}, Luk/co/uktv/dave/browser/web/WebBrowserClient;-><init>()V

    .line 118
    iget-object v3, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v3, v3, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 119
    iget-object v3, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v3, v3, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    iget-object v4, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;

    invoke-virtual {v4}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v3, v3, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 121
    iget-object v3, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v3, v3, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    iget-object v1, v1, Luk/co/uktv/dave/browser/web/WebBrowserClient;->chromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 122
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v1, v1, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 124
    iput-boolean v2, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->webAppInitialized:Z

    .line 126
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v1, v1, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    sget-object v2, Luk/co/uktv/dave/browser/web/WebBrowser$$ExternalSyntheticLambda0;->INSTANCE:Luk/co/uktv/dave/browser/web/WebBrowser$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v1, v1, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$initializeWebApp$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    .line 127
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 128
    new-instance p0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage;

    sget-object p2, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;->BACK:Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    invoke-direct {p0, p2}, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage;-><init>(Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;)V

    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
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

    .line 46
    invoke-static {p1}, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    .line 47
    invoke-virtual {p1}, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 90
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->mediaPlayerManager:Luk/co/uktv/dave/browser/web/MediaPlayerManager;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->destroy()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->webAppInitialized:Z

    .line 92
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

    .line 97
    iget-boolean v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->webAppInitialized:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;->getJavaScriptCode()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 74
    new-instance v0, Luk/co/uktv/dave/messaging/tal/PauseAppToTalMessage;

    invoke-direct {v0}, Luk/co/uktv/dave/messaging/tal/PauseAppToTalMessage;-><init>()V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 66
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->mediaPlayerManager:Luk/co/uktv/dave/browser/web/MediaPlayerManager;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->registerExoPlayer()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 80
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->unregisterExoPlayer()V

    .line 81
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->mediaPlayerManager:Luk/co/uktv/dave/browser/web/MediaPlayerManager;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 83
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 84
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

    .line 52
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->webAppInitialized:Z

    .line 56
    new-instance p1, Luk/co/uktv/dave/browser/web/MediaPlayerManager;

    iget-object p2, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->viewBinding:Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    iget-object p2, p2, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-direct {p1, p2}, Luk/co/uktv/dave/browser/web/MediaPlayerManager;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->mediaPlayerManager:Luk/co/uktv/dave/browser/web/MediaPlayerManager;

    .line 58
    new-instance p1, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;

    invoke-direct {p1}, Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/WebBrowser;->javaScriptBridge:Luk/co/uktv/dave/browser/web/WebBrowserJavaScriptBridge;

    .line 60
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/WebBrowser;->initializeWebApp()V

    return-void
.end method
