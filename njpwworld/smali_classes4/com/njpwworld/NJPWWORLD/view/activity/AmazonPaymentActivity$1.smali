.class Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->e()Lcom/njpwworld/NJPWWORLD/manager/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/b;

    invoke-direct {v1}, Lcom/njpwworld/NJPWWORLD/view/a/b;-><init>()V

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;Lcom/njpwworld/NJPWWORLD/view/a/b;)Lcom/njpwworld/NJPWWORLD/view/a/b;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)Lcom/njpwworld/NJPWWORLD/view/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/a/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-static {v0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
