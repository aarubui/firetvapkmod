.class public Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Lcom/njpwworld/NJPWWORLD/a/j$a;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://njpwworld.com/feature/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity$2;->a:[I

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/j$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f0f0094

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0095

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f0098

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f0097

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0f0092

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0f0093

    :goto_0
    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .locals 4

    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firetv_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.njpwworld.NJPWWORLD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0f003b

    invoke-virtual {p0, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/njpwworld/NJPWWORLD/a/j$a;

    invoke-direct {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->a(Lcom/njpwworld/NJPWWORLD/a/j$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onCreateWebViewActivity(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->a()V

    return-void
.end method

.method private onResumeWebViewActivity()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->p(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->f(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->finish()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->onCreateWebViewActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;->onResumeWebViewActivity()V

    return-void
.end method
