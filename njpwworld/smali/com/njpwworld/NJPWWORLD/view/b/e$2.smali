.class Lcom/njpwworld/NJPWWORLD/view/b/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    sget-object p3, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-static {p1, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$e;)Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    instance-of p1, p2, Lcom/njpwworld/NJPWWORLD/a/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Z)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Z)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Z)V

    instance-of p1, p2, Landroid/support/v17/leanback/widget/ba$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    sget-object p2, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    :goto_0
    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$e;)Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    goto :goto_1

    :cond_1
    instance-of p1, p2, Landroid/support/v17/leanback/widget/ba$f;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    sget-object p2, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->c:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/bj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/e$2;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V

    return-void
.end method
