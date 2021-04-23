.class Lcom/njpwworld/NJPWWORLD/view/b/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/g;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/g;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
    .locals 0

    check-cast p2, Lcom/njpwworld/NJPWWORLD/b/e;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/e;->r()I

    move-result p3

    invoke-static {p1, p3}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Lcom/njpwworld/NJPWWORLD/view/b/g;I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Lcom/njpwworld/NJPWWORLD/view/b/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->b(Lcom/njpwworld/NJPWWORLD/view/b/g;)Landroid/support/v17/leanback/widget/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result p1

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/e;->r()I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->b(Lcom/njpwworld/NJPWWORLD/view/b/g;)Landroid/support/v17/leanback/widget/b;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result p2

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->b(Lcom/njpwworld/NJPWWORLD/view/b/g;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/bj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/g$1;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V

    return-void
.end method
