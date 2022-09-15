.class Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)Lcom/njpwworld/NJPWWORLD/view/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/c;->dismiss()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)Lcom/njpwworld/NJPWWORLD/view/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/c;->dismiss()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->b(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)Lcom/njpwworld/NJPWWORLD/manager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/d/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;Z)V

    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/i;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/i;->g()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;)Lcom/njpwworld/NJPWWORLD/view/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/c;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity$2;->c:Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;->finish()V

    :cond_0
    return-void
.end method
