.class Lcom/njpwworld/NJPWWORLD/view/b/c$12;
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/c$12$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/c$12$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c$12;)V

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p1, Lcom/njpwworld/NJPWWORLD/b/h;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/c;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/c;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/b;->a(ILjava/util/Collection;)V

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0092

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$12;->a:Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->c(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    return-void
.end method