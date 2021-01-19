.class Luk/co/uktv/dave/core/AppHostWebViewInterface$1;
.super Landroid/os/Handler;
.source "AppHostWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/core/AppHostWebViewInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/core/AppHostWebViewInterface;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/core/AppHostWebViewInterface;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/uktv/dave/core/AppHostWebViewInterface;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 35
    iput-object p1, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface$1;->this$0:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "WebViewInterface.EXTRA_MESSAGE_DATA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface$1;->this$0:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    invoke-static {v1}, Luk/co/uktv/dave/core/AppHostWebViewInterface;->access$000(Luk/co/uktv/dave/core/AppHostWebViewInterface;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.ajb.receiveMessage(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Luk/co/uktv/dave/core/AppHostWebViewInterface$1$1;

    invoke-direct {v3, p0}, Luk/co/uktv/dave/core/AppHostWebViewInterface$1$1;-><init>(Luk/co/uktv/dave/core/AppHostWebViewInterface$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 41
    return-void
.end method
