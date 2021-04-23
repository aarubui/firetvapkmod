.class Lcom/njpwworld/NJPWWORLD/view/b/e$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iput p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v0

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->a:I

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x3e7

    if-gt v1, v2, :cond_0

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->a:I

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x3e8

    :goto_0
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->n(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/d/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ba;->b(I)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->n(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/d/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ba;->c(I)V

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->a:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->o(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i()V

    :goto_1
    return-void
.end method
