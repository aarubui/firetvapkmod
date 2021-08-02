.class public Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;
.super Lcom/njpwworld/NJPWWORLD/view/activity/a;


# instance fields
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

    invoke-static {p1, p2, v0}, Lcom/njpwworld/NJPWWORLD/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
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


# virtual methods
.method public a()V
    .locals 0

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
    return-void
.end method
