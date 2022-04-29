.class Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;
.super Ljava/lang/Object;
.source "HbbTvBrowserClient.java"

# interfaces
.implements Lcom/vewd/core/sdk/RestrictedHbbTvClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "HbbTvBrowserClient"


# instance fields
.field public final browserClient:Lcom/vewd/core/sdk/BrowserClient;

.field private final parentalControls:Luk/co/uktv/dave/browser/hbbtv/ParentalControls;


# direct methods
.method public static synthetic $r8$lambda$3lpBR-MYxSrlEG8g0z2m7yGdJIE(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;)V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->onBrowserProcessGone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Luk/co/uktv/dave/browser/hbbtv/ParentalControls;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentalControls"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->parentalControls:Luk/co/uktv/dave/browser/hbbtv/ParentalControls;

    .line 33
    new-instance p1, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;)V

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->browserClient:Lcom/vewd/core/sdk/BrowserClient;

    return-void
.end method

.method private onBrowserProcessGone()V
    .locals 2

    .line 113
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const-string v1, "onBrowserProcessGone: Application\'s browser process gone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100029

    .line 114
    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void
.end method


# virtual methods
.method public onAitApplicationNotStarted()V
    .locals 2

    .line 60
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const-string v1, "onAitApplicationNotStarted: Could not load AIT application"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100029

    .line 61
    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void
.end method

.method public onApplicationKeysetChanged(IILjava/lang/String;ZI[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "orgId",
            "appUrl",
            "isBroadcastRelated",
            "keyset",
            "otherKeys"
        }
    .end annotation

    return-void
.end method

.method public onApplicationLoadTimedOut(IILjava/lang/String;ZLcom/vewd/core/sdk/HbbTvApplicationLoadTimedOutCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "orgId",
            "appUrl",
            "isBroadcastRelated",
            "callback"
        }
    .end annotation

    .line 74
    sget-object p1, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "onApplicationLoadTimedOut: Application loading timeout: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f10002b

    .line 75
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    .line 76
    invoke-interface {p5}, Lcom/vewd/core/sdk/HbbTvApplicationLoadTimedOutCallback;->abort()V

    return-void
.end method

.method public onApplicationNotStarted()V
    .locals 2

    .line 54
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const-string v1, "onApplicationNotStarted: Could not load application"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100029

    .line 55
    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void
.end method

.method public onApplicationStarted(IILjava/lang/String;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "orgId",
            "appUrl",
            "isBroadcastRelated",
            "isStartedAutomatically",
            "isTrusted",
            "isActive"
        }
    .end annotation

    .line 40
    sget-object p1, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "onApplicationStarted: Application loaded: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance p1, Luk/co/uktv/dave/messaging/internal/WebAppLoadedMessage;

    invoke-direct {p1}, Luk/co/uktv/dave/messaging/internal/WebAppLoadedMessage;-><init>()V

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method public onApplicationStopped(IILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "orgId",
            "appUrl",
            "isBroadcastRelated",
            "willLoadNewApp"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 67
    sget-object p1, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "onApplicationStopped: Application stopped: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p1, Luk/co/uktv/dave/messaging/tal/ExitAppFromTalMessage;

    invoke-direct {p1}, Luk/co/uktv/dave/messaging/tal/ExitAppFromTalMessage;-><init>()V

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    :cond_0
    return-void
.end method

.method public onApplicationVisibilityChanged(IILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "orgId",
            "appUrl",
            "isBroadcastRelated",
            "visible"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 47
    sget-object p1, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "onApplicationVisibilityChanged: Application loaded: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance p1, Luk/co/uktv/dave/messaging/internal/WebAppLoadedMessage;

    invoke-direct {p1}, Luk/co/uktv/dave/messaging/internal/WebAppLoadedMessage;-><init>()V

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consoleMessage"
        }
    .end annotation

    .line 100
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 107
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 108
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "onConsoleMessage: [%s] %s, line=%d, source:%s"

    .line 103
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFocusedAreaVisibilityChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visibleRect",
            "focusedRect"
        }
    .end annotation

    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public onParentalControlQuery(Lcom/vewd/core/sdk/ParentalControlQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->parentalControls:Luk/co/uktv/dave/browser/hbbtv/ParentalControls;

    invoke-virtual {p1}, Lcom/vewd/core/sdk/ParentalControlQuery;->getRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/browser/hbbtv/ParentalControls;->isContentBlocked([Landroid/media/tv/TvContentRating;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/vewd/core/sdk/ParentalControlQuery;->deny()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/vewd/core/sdk/ParentalControlQuery;->allow()V

    :goto_0
    return-void
.end method

.method public onReceivedClientCertRequest(Lcom/vewd/core/shared/ClientCertRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/vewd/core/shared/ClientCertRequest;->cancel()V

    return-void
.end method

.method public onReceivedError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "failingUrl"
        }
    .end annotation

    return-void
.end method

.method public onReceivedSslError(Lcom/vewd/core/sdk/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "error"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Lcom/vewd/core/sdk/SslErrorHandler;->cancel()V

    return-void
.end method

.method public onRendererProcessGone()V
    .locals 2

    .line 81
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;->TAG:Ljava/lang/String;

    const-string v1, "onRendererProcessGone: Application\'s renderer process gone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100029

    .line 82
    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void
.end method
