.class Luk/co/uktv/dave/browser/web/WebBrowserClient$1;
.super Landroid/webkit/WebChromeClient;
.source "WebBrowserClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/browser/web/WebBrowserClient;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/browser/web/WebBrowserClient;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/browser/web/WebBrowserClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient$1;->this$0:Luk/co/uktv/dave/browser/web/WebBrowserClient;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consoleMessage"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/WebBrowserClient$1;->this$0:Luk/co/uktv/dave/browser/web/WebBrowserClient;

    invoke-static {v0, p1}, Luk/co/uktv/dave/browser/web/WebBrowserClient;->access$000(Luk/co/uktv/dave/browser/web/WebBrowserClient;Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method
