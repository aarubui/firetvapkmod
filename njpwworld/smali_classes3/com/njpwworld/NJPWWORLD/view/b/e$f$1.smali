.class Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e$f;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/b/f;)Lcom/njpwworld/NJPWWORLD/b/f;

    const-string v0, "1"

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v2, v2, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v3, v3, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    const v2, 0x7f0f003c

    invoke-virtual {v1, v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v2, v2, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f01000c

    const v2, 0x7f01000d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    iget-object v2, v2, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    :goto_1
    return-void
.end method
