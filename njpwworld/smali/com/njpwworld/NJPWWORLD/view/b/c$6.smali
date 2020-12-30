.class Lcom/njpwworld/NJPWWORLD/view/b/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/c;->c(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/c;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/c$6$2;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/c$6$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c$6;)V

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ak;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ak;->b()Landroid/support/v17/leanback/widget/ao;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/b;->a()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/a/h;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ak;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ak;->b()Landroid/support/v17/leanback/widget/ao;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/a/h;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v17/leanback/widget/b;->a(ILjava/util/Collection;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/a/h;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ak;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ak;->b()Landroid/support/v17/leanback/widget/ao;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/h;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v5}, Lcom/njpwworld/NJPWWORLD/a/h;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v6, v4, v5}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$6;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/c$6$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/c$6$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c$6;)V

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/c/g;->a(Landroid/app/Activity;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
