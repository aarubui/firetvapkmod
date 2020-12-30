.class public Lcom/njpwworld/NJPWWORLD/view/c/e;
.super Lcom/njpwworld/NJPWWORLD/view/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/ac;

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/j;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ac;->setTitleText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/j;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/a/j;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/j;->a()Lcom/njpwworld/NJPWWORLD/a/j$a;

    move-result-object v2

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/j;->b()Ljava/lang/String;

    move-result-object p2

    iget v3, p0, Lcom/njpwworld/NJPWWORLD/view/c/e;->m:I

    invoke-direct {v1, v2, p2, v3}, Lcom/njpwworld/NJPWWORLD/a/j;-><init>(Lcom/njpwworld/NJPWWORLD/a/j$a;Ljava/lang/String;I)V

    move-object p2, v1

    :cond_0
    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/e;->c(Landroid/content/Context;)Lcom/a/a/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/j;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/a/a/h;->a(Ljava/lang/Integer;)Lcom/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/a/a/b;->a()Lcom/a/a/a;

    move-result-object p1

    iget p2, p0, Lcom/njpwworld/NJPWWORLD/view/c/e;->m:I

    invoke-virtual {p1, p2}, Lcom/a/a/a;->a(I)Lcom/a/a/a;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ac;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/a/a/a;->a(Landroid/widget/ImageView;)Lcom/a/a/g/b/j;

    return-void
.end method
