.class public Luk/co/uktv/dave/webapp/BrowserViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserViewClient.java"


# static fields
.field private static final BLANK_PAGE:Ljava/lang/String; = "about:blank"

.field private static final TAG:Ljava/lang/String; = "BrowserViewClient"


# instance fields
.field private loadingPagesCount:I

.field private final timeout:J

.field private final timeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v1}, Luk/co/uktv/dave/webapp/BrowserViewClient;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->timeoutHandler:Landroid/os/Handler;

    .line 37
    iput-wide p1, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->timeout:J

    return-void
.end method

.method public static synthetic lambda$AjkgkfxG45xtAQXNWLjD4RjE4Zs(Luk/co/uktv/dave/webapp/BrowserViewClient;)V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/webapp/BrowserViewClient;->onTimeout()V

    return-void
.end method

.method private onRootPageFinished(Ljava/lang/String;)V
    .locals 3

    .line 75
    sget-object v0, Luk/co/uktv/dave/webapp/BrowserViewClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "onRootPageFinished: Page loaded: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "about:blank"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d002a

    .line 77
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Luk/co/uktv/dave/messaging/WebAppLoadedMessage;

    invoke-direct {p1}, Luk/co/uktv/dave/messaging/WebAppLoadedMessage;-><init>()V

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    :goto_0
    return-void
.end method

.method private onRootPageStarted(Ljava/lang/String;)V
    .locals 4

    .line 68
    sget-object v0, Luk/co/uktv/dave/webapp/BrowserViewClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onRootPageStarted: Loading page: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-wide v0, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 70
    iget-object p1, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->timeoutHandler:Landroid/os/Handler;

    new-instance v0, Luk/co/uktv/dave/webapp/-$$Lambda$BrowserViewClient$AjkgkfxG45xtAQXNWLjD4RjE4Zs;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/webapp/-$$Lambda$BrowserViewClient$AjkgkfxG45xtAQXNWLjD4RjE4Zs;-><init>(Luk/co/uktv/dave/webapp/BrowserViewClient;)V

    iget-wide v1, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->timeout:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private onTimeout()V
    .locals 5

    .line 84
    iget v0, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->loadingPagesCount:I

    if-lez v0, :cond_0

    .line 85
    sget-object v0, Luk/co/uktv/dave/webapp/BrowserViewClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->timeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onTimeout: Could not load page in %s ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d002c

    .line 86
    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 51
    iget p1, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->loadingPagesCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->loadingPagesCount:I

    if-nez p1, :cond_0

    .line 52
    invoke-direct {p0, p2}, Luk/co/uktv/dave/webapp/BrowserViewClient;->onRootPageFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 43
    iget p1, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->loadingPagesCount:I

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->loadingPagesCount:I

    if-nez p1, :cond_0

    .line 44
    invoke-direct {p0, p2}, Luk/co/uktv/dave/webapp/BrowserViewClient;->onRootPageStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    .line 59
    sget-object p1, Luk/co/uktv/dave/webapp/BrowserViewClient;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v0

    const/4 p3, 0x2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p3

    const-string p2, "onReceivedError: errorCode=%s, description=%s, failingUrl=%s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_0
    sget-object p1, Luk/co/uktv/dave/webapp/BrowserViewClient;->TAG:Ljava/lang/String;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v1

    const-string p2, "onReceivedError: failingUrl=%s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const p1, 0x7f0d002a

    .line 63
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    .line 64
    iput v1, p0, Luk/co/uktv/dave/webapp/BrowserViewClient;->loadingPagesCount:I

    return-void
.end method
