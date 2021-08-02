.class Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/njpwworld/NJPWWORLD/b/e;

.field final synthetic d:Landroid/widget/FrameLayout;

.field final synthetic e:Lcom/njpwworld/NJPWWORLD/view/b/g$2;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/g$2;Landroid/os/Handler;Landroid/content/Intent;Lcom/njpwworld/NJPWWORLD/b/e;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->e:Lcom/njpwworld/NJPWWORLD/view/b/g$2;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->c:Lcom/njpwworld/NJPWWORLD/b/e;

    iput-object p5, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->e:Lcom/njpwworld/NJPWWORLD/view/b/g$2;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    const v2, 0x7f0f003c

    invoke-virtual {v1, v2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->c:Lcom/njpwworld/NJPWWORLD/b/e;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->e:Lcom/njpwworld/NJPWWORLD/view/b/g$2;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->e:Lcom/njpwworld/NJPWWORLD/view/b/g$2;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f01000c

    const v2, 0x7f01000d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->e:Lcom/njpwworld/NJPWWORLD/view/b/g$2;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->d(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
