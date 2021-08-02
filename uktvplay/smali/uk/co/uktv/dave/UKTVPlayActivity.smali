.class public Luk/co/uktv/dave/UKTVPlayActivity;
.super Luk/co/uktv/dave/UKTVPlayActivityBase;
.source "UKTVPlayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayActivity"


# instance fields
.field private javaScriptBridge:Luk/co/uktv/dave/webapp/JavaScriptBridge;

.field private mediaPlayerManager:Luk/co/uktv/dave/webapp/MediaPlayerManager;

.field private webAppInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;-><init>()V

    return-void
.end method

.method public static synthetic lambda$sQ7dJErpsOjnPP39z1jn6mGUxUk(Luk/co/uktv/dave/UKTVPlayActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivity;->onEvaluateJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private onCreateUKTVPlayActivity(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppInitialized:Z

    .line 36
    new-instance p1, Luk/co/uktv/dave/webapp/MediaPlayerManager;

    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-direct {p1, v0}, Luk/co/uktv/dave/webapp/MediaPlayerManager;-><init>(Luk/co/uktv/dave/media/MediaPlayerView;)V

    iput-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->mediaPlayerManager:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    .line 38
    new-instance p1, Luk/co/uktv/dave/webapp/JavaScriptBridge;

    new-instance v0, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivity$sQ7dJErpsOjnPP39z1jn6mGUxUk;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivity$sQ7dJErpsOjnPP39z1jn6mGUxUk;-><init>(Luk/co/uktv/dave/UKTVPlayActivity;)V

    invoke-direct {p1, v0}, Luk/co/uktv/dave/webapp/JavaScriptBridge;-><init>(Lj$/util/function/Consumer;)V

    iput-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->javaScriptBridge:Luk/co/uktv/dave/webapp/JavaScriptBridge;

    return-void
.end method

.method private onDestroyUKTVPlayActivity()V
    .locals 1

    .line 65
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 66
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->mediaPlayerManager:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    invoke-virtual {v0}, Luk/co/uktv/dave/webapp/MediaPlayerManager;->destroy()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppInitialized:Z

    .line 68
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onDestroy()V

    return-void
.end method

.method private onEvaluateJavaScript(Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppInitialized:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private onPauseUKTVPlayActivity()V
    .locals 1

    .line 51
    new-instance v0, Luk/co/uktv/dave/messaging/to/PauseAppMessage;

    invoke-direct {v0}, Luk/co/uktv/dave/messaging/to/PauseAppMessage;-><init>()V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    .line 52
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onPause()V

    return-void
.end method

.method private onStartUKTVPlayActivity()V
    .locals 1

    .line 43
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onStart()V

    .line 44
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->javaScriptBridge:Luk/co/uktv/dave/webapp/JavaScriptBridge;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->mediaPlayerManager:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->registerExoPlayer()V

    return-void
.end method

.method private onStopUKTVPlayActivity()V
    .locals 1

    .line 57
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->unregisterExoPlayer()V

    .line 58
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->javaScriptBridge:Luk/co/uktv/dave/webapp/JavaScriptBridge;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->mediaPlayerManager:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onStop()V

    return-void
.end method


# virtual methods
.method protected initializeWebApp(Ljava/lang/String;)V
    .locals 5

    .line 79
    sget-object v0, Luk/co/uktv/dave/UKTVPlayActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Initializing web app, url=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 84
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 89
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 90
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlayActivity;->javaScriptBridge:Luk/co/uktv/dave/webapp/JavaScriptBridge;

    invoke-virtual {v2}, Luk/co/uktv/dave/webapp/JavaScriptBridge;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    new-instance v2, Luk/co/uktv/dave/webapp/BrowserViewClient;

    invoke-direct {v2}, Luk/co/uktv/dave/webapp/BrowserViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    new-instance v2, Luk/co/uktv/dave/webapp/BrowserChromeClient;

    invoke-direct {v2}, Luk/co/uktv/dave/webapp/BrowserChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 93
    iput-boolean v1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppInitialized:Z

    .line 94
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 73
    new-instance v0, Luk/co/uktv/dave/messaging/to/NavigationMessage;

    sget-object v1, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->BACK:Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    invoke-direct {v0, v1}, Luk/co/uktv/dave/messaging/to/NavigationMessage;-><init>(Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;)V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivity;->onCreateUKTVPlayActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->onDestroyUKTVPlayActivity()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->onPauseUKTVPlayActivity()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->onStartUKTVPlayActivity()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->onStopUKTVPlayActivity()V

    return-void
.end method
