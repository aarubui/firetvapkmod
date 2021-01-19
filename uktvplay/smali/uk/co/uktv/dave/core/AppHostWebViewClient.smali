.class public Luk/co/uktv/dave/core/AppHostWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AppHostWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppHostWebViewClient"


# instance fields
.field private appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

.field private appUrl:Ljava/lang/String;

.field private isAppLoaded:Z

.field private timeoutHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/core/AppHostActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "appHostActivity"    # Luk/co/uktv/dave/core/AppHostActivity;
    .param p2, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    new-instance v0, Luk/co/uktv/dave/core/AppHostWebViewClient$1;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/core/AppHostWebViewClient$1;-><init>(Luk/co/uktv/dave/core/AppHostWebViewClient;)V

    iput-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->timeoutHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

    .line 32
    iput-object p2, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->appUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$000(Luk/co/uktv/dave/core/AppHostWebViewClient;)Z
    .locals 1
    .param p0, "x0"    # Luk/co/uktv/dave/core/AppHostWebViewClient;

    .prologue
    .line 9
    iget-boolean v0, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->isAppLoaded:Z

    return v0
.end method

.method static synthetic access$100(Luk/co/uktv/dave/core/AppHostWebViewClient;I)V
    .locals 0
    .param p0, "x0"    # Luk/co/uktv/dave/core/AppHostWebViewClient;
    .param p1, "x1"    # I

    .prologue
    .line 9
    invoke-direct {p0, p1}, Luk/co/uktv/dave/core/AppHostWebViewClient;->setErrorCode(I)V

    return-void
.end method

.method private setErrorCode(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 50
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/core/AppHostActivity;->setErrorCode(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "AppHostWebViewClient"

    const-string v1, "Page load is complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->isAppLoaded:Z

    .line 39
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

    invoke-virtual {v0}, Luk/co/uktv/dave/core/AppHostActivity;->launch()V

    .line 40
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->appUrl:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->appUrl:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 45
    .local v0, "isAppUrl":Z
    :goto_0
    const-string v1, "AppHostWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is app url ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Luk/co/uktv/dave/core/AppHostWebViewClient;->appUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Luk/co/uktv/dave/core/AppHostWebViewClient;->setErrorCode(I)V

    .line 47
    return-void

    .line 44
    .end local v0    # "isAppUrl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
