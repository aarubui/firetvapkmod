.class Luk/co/uktv/dave/browser/web/WebBrowserClient;
.super Landroid/webkit/WebViewClient;
.source "WebBrowserClient.java"


# static fields
.field private static final BLANK_PAGE:Ljava/lang/String; = "about:blank"

.field private static final TAG:Ljava/lang/String; = "WebBrowserClient"


# instance fields
.field public final chromeClient:Landroid/webkit/WebChromeClient;

.field private loadingPagesCount:I

.field private final timeout:J

.field private final timeoutHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$qGp7Mpi81GaD1jRIw93uR0PewIo(Luk/co/uktv/dave/browser/web/WebBrowserClient;)V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/WebBrowserClient;->onTimeout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 37
    invoke-direct {p0, v0, v1}, Luk/co/uktv/dave/browser/web/WebBrowserClient;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->timeoutHandler:Landroid/os/Handler;

    .line 42
    iput-wide p1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->timeout:J

    .line 44
    new-instance p1, Luk/co/uktv/dave/browser/web/WebBrowserClient$1;

    invoke-direct {p1, p0}, Luk/co/uktv/dave/browser/web/WebBrowserClient$1;-><init>(Luk/co/uktv/dave/browser/web/WebBrowserClient;)V

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->chromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method static synthetic access$000(Luk/co/uktv/dave/browser/web/WebBrowserClient;Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p0

    return p0
.end method

.method private onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consoleMessage"
        }
    .end annotation

    .line 80
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    sget-object v0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 86
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    .line 87
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x3

    .line 88
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "onConsoleMessage: [%s] %s, line=%d, source:%s"

    .line 83
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private onRootPageFinished(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 101
    sget-object v0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "onRootPageFinished: Page loaded: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "about:blank"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f100029

    .line 103
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Luk/co/uktv/dave/messaging/internal/WebAppLoadedMessage;

    invoke-direct {p1}, Luk/co/uktv/dave/messaging/internal/WebAppLoadedMessage;-><init>()V

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    :goto_0
    return-void
.end method

.method private onRootPageStarted(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 94
    sget-object v0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onRootPageStarted: Loading page: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-wide v0, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 96
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->timeoutHandler:Landroid/os/Handler;

    new-instance v0, Luk/co/uktv/dave/browser/web/WebBrowserClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/browser/web/WebBrowserClient$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/browser/web/WebBrowserClient;)V

    iget-wide v1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->timeout:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private onTimeout()V
    .locals 5

    .line 110
    iget v0, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->loadingPagesCount:I

    if-lez v0, :cond_0

    .line 111
    sget-object v0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->timeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onTimeout: Could not load page in %s ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f10002b

    .line 112
    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 63
    iget p1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->loadingPagesCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->loadingPagesCount:I

    if-nez p1, :cond_0

    .line 64
    invoke-direct {p0, p2}, Luk/co/uktv/dave/browser/web/WebBrowserClient;->onRootPageFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "url",
            "favicon"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    iget p1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->loadingPagesCount:I

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->loadingPagesCount:I

    if-nez p1, :cond_0

    .line 56
    invoke-direct {p0, p2}, Luk/co/uktv/dave/browser/web/WebBrowserClient;->onRootPageStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "request",
            "error"
        }
    .end annotation

    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    .line 71
    sget-object p1, Luk/co/uktv/dave/browser/web/WebBrowserClient;->TAG:Ljava/lang/String;

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

    .line 73
    :cond_0
    sget-object p1, Luk/co/uktv/dave/browser/web/WebBrowserClient;->TAG:Ljava/lang/String;

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
    const p1, 0x7f100029

    .line 75
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    .line 76
    iput v1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient;->loadingPagesCount:I

    return-void
.end method
