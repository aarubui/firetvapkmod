.class public Lcom/njpwworld/NJPWWORLD/view/b/a;
.super Lcom/njpwworld/NJPWWORLD/view/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/b/a$a;
    }
.end annotation


# instance fields
.field private d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/t$a;
    .locals 4

    const p1, 0x7f0f00c4

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/a;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00c5

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/t$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Landroid/support/v17/leanback/widget/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public a(Landroid/support/v17/leanback/widget/u;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/u;->a()J

    move-result-wide v0

    long-to-int p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/a;->d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/a;->d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/b/a$a;->c()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/a;->d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/a;->d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/b/a$a;->b()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/a;->d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/a;->d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/b/a$a;->a()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/njpwworld/NJPWWORLD/view/b/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/a;->d:Lcom/njpwworld/NJPWWORLD/view/b/a$a;

    return-void
.end method

.method public a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/u;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/u$a;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/u$a;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/u$a;->a(J)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/u$a;->a(I)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/u$a;->b(I)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/u$a;->a()Landroid/support/v17/leanback/widget/u;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/support/v17/leanback/widget/u$a;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/u$a;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/u$a;->a(J)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    const v1, 0x7f0f00ac

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/u$a;->a(I)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/u$a;->b(I)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/u$a;->a()Landroid/support/v17/leanback/widget/u;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/support/v17/leanback/widget/u$a;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/u$a;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/u$a;->a(J)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/u$a;->a(I)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    const v1, 0x7f0f008f

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/u$a;->b(I)Landroid/support/v17/leanback/widget/u$b;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/u$a;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/u$a;->a()Landroid/support/v17/leanback/widget/u;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
