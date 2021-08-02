.class public Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;
.super Lcom/njpwworld/NJPWWORLD/view/activity/a;


# instance fields
.field private a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

.field private b:Lcom/njpwworld/NJPWWORLD/view/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)Lcom/njpwworld/NJPWWORLD/view/a/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->b:Lcom/njpwworld/NJPWWORLD/view/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;Lcom/njpwworld/NJPWWORLD/view/a/b;)Lcom/njpwworld/NJPWWORLD/view/a/b;
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->b:Lcom/njpwworld/NJPWWORLD/view/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/njpwworld/NJPWWORLD/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)Lcom/njpwworld/NJPWWORLD/manager/a/a;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    return-object p0
.end method

.method private c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 0

    return-void
.end method

.method private e()Lcom/njpwworld/NJPWWORLD/manager/a/a$a;
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)V

    return-object v0
.end method

.method private onCreateAmazonPaymentActivity(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method private onResumeAmazonPaymentActivity()V
    .locals 2

    invoke-super {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->onResume()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Z)V

    return-void
.end method

.method private onStartAmazonPaymentActivity()V
    .locals 2

    invoke-super {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->onStart()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a/d;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->e()Lcom/njpwworld/NJPWWORLD/manager/a/a$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/manager/a/a;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/manager/a/a$a;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/a/d;->a:Lcom/njpwworld/NJPWWORLD/manager/a/d;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/manager/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->onCreateAmazonPaymentActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->onResumeAmazonPaymentActivity()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->onStartAmazonPaymentActivity()V

    return-void
.end method
