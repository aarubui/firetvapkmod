.class Luk/co/uktv/dave/core/AppHostWebViewClient$1;
.super Landroid/os/Handler;
.source "AppHostWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/core/AppHostWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/core/AppHostWebViewClient;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/core/AppHostWebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/uktv/dave/core/AppHostWebViewClient;

    .prologue
    .line 20
    iput-object p1, p0, Luk/co/uktv/dave/core/AppHostWebViewClient$1;->this$0:Luk/co/uktv/dave/core/AppHostWebViewClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewClient$1;->this$0:Luk/co/uktv/dave/core/AppHostWebViewClient;

    invoke-static {v0}, Luk/co/uktv/dave/core/AppHostWebViewClient;->access$000(Luk/co/uktv/dave/core/AppHostWebViewClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewClient$1;->this$0:Luk/co/uktv/dave/core/AppHostWebViewClient;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Luk/co/uktv/dave/core/AppHostWebViewClient;->access$100(Luk/co/uktv/dave/core/AppHostWebViewClient;I)V

    .line 26
    :cond_0
    return-void
.end method
