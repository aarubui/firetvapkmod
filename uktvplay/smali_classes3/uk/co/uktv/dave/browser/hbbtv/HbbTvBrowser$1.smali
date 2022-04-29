.class Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;
.super Ljava/lang/Object;
.source "HbbTvBrowser.java"

# interfaces
.implements Lcom/vewd/core/sdk/Browser$InitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->initializeWebApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

.field final synthetic val$hbbTvBrowserClient:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;

.field final synthetic val$webAppUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$hbbTvBrowserClient",
            "val$webAppUrl"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    iput-object p2, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->val$hbbTvBrowserClient:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;

    iput-object p3, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->val$webAppUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "exception"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not initialize browser"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f100029

    .line 139
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInitialized()V
    .locals 4

    .line 117
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 119
    :cond_0
    invoke-static {}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Browser initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v0

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->val$hbbTvBrowserClient:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserClient;

    invoke-virtual {v0, v1}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->setRestrictedHbbTvClient(Lcom/vewd/core/sdk/RestrictedHbbTvClient;)V

    .line 121
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v0

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$200(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->setUserAgentSuffix(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v0

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->setBackgroundColor(I)V

    .line 123
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v0

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {v0}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->init()V

    .line 124
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v0

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-virtual {v0}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->requestFocus()Z

    .line 125
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v0

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$300(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

    move-result-object v1

    iget-object v2, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v2}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$300(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowserJavaScriptBridge;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$400(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/browser/hbbtv/VolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->currentVolume()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v2}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v2

    iget-object v2, v2, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1$$ExternalSyntheticLambda0;-><init>(Lcom/vewd/core/sdk/RestrictedHbbTvView;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 129
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$502(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;Z)Z

    .line 131
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->this$0:Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    invoke-static {v0}, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;->access$100(Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object v0

    iget-object v0, v0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1;->val$webAppUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->loadRestrictedUrlApplication(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
