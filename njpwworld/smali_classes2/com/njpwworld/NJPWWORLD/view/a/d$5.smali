.class Lcom/njpwworld/NJPWWORLD/view/a/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/d;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
