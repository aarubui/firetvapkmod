.class public Lcom/njpwworld/NJPWWORLD/view/b/g;
.super Landroid/support/v17/leanback/app/t;


# instance fields
.field private u:Landroid/support/v17/leanback/widget/b;

.field private v:J

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/t;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->w:Z

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->x:Z

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/g;J)J
    .locals 0

    iput-wide p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->v:J

    return-wide p1
.end method

.method private a(Lcom/njpwworld/NJPWWORLD/b/h;)V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/b;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/c/b;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/njpwworld/NJPWWORLD/view/c/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/njpwworld/NJPWWORLD/b/e;

    invoke-virtual {v2, v1}, Lcom/njpwworld/NJPWWORLD/b/e;->a(I)V

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "50"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->c(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Landroid/support/v17/leanback/widget/ao;)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->p()V

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/g;Lcom/njpwworld/NJPWWORLD/b/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->b(Lcom/njpwworld/NJPWWORLD/b/h;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "50"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/g$9;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$9;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-static {v0, p2, p1, v1}, Lcom/njpwworld/NJPWWORLD/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->x:Z

    return p0
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/g;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private b(Lcom/njpwworld/NJPWWORLD/b/h;)V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->d()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/njpwworld/NJPWWORLD/b/e;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/njpwworld/NJPWWORLD/b/e;->a(I)V

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "50"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->c(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->u:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->w:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/g;Lcom/njpwworld/NJPWWORLD/b/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Lcom/njpwworld/NJPWWORLD/b/h;)V

    return-void
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/b/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->v:J

    return-wide v0
.end method

.method private c(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->a(I)V

    return-void
.end method

.method private c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->x:Z

    return-void
.end method

.method private d(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g;->w:Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0040

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->f(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0035

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->e(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f003e

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f003a

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f008f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->k(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->j(I)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/njpwworld/NJPWWORLD/view/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->q()V

    return-void
.end method

.method private e(I)V
    .locals 3

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "50"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/g$3;

    invoke-direct {v2, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-static {v0, v1, p1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private f(I)V
    .locals 2

    const-string v0, "original_api"

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->g(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "o_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->h(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->i(I)V

    :goto_0
    return-void
.end method

.method private g(I)V
    .locals 2

    const-string v0, "50"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/g$4;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-static {v0, p1, v1}, Lcom/njpwworld/NJPWWORLD/c/a/d;->i(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private h(I)V
    .locals 3

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "50"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/g$5;

    invoke-direct {v2, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$5;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-static {v0, v1, p1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private i(I)V
    .locals 3

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "50"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/g$6;

    invoke-direct {v2, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$6;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-static {v0, v1, p1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private j(I)V
    .locals 2

    const-string v0, "50"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/g$7;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$7;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-static {v0, p1, v1}, Lcom/njpwworld/NJPWWORLD/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private k(I)V
    .locals 2

    const-string v0, "50"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/g$8;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$8;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-static {v0, p1, v1}, Lcom/njpwworld/NJPWWORLD/c/a/d;->h(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private o()V
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/ce;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ce;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ce;->a(I)V

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Landroid/support/v17/leanback/widget/ce;)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->r()V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->m()Landroid/support/v17/leanback/widget/ce;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/g$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ce;->a(Landroid/support/v17/leanback/widget/au;)V

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/g$2;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/g$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ce;->a(Landroid/support/v17/leanback/widget/at;)V

    return-void
.end method

.method private q()V
    .locals 5

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0035

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0f003a

    invoke-virtual {p0, v2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f0f0040

    invoke-virtual {p0, v3}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {p0, v4}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/njpwworld/NJPWWORLD/d/f;->a(Landroid/content/Context;Z)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/f;->e(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/njpwworld/NJPWWORLD/d/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->d(I)V

    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0034

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private t()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0040

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/t;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
