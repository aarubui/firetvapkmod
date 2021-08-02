.class public Lcom/njpwworld/NJPWWORLD/view/b/f;
.super Landroid/support/v17/leanback/app/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/b/f$a;
    }
.end annotation


# instance fields
.field private n:Landroid/support/v17/leanback/widget/b;

.field private o:Landroid/support/v17/leanback/widget/b;

.field private p:Landroid/support/v17/leanback/widget/ak;

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->q:Z

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->s:Z

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/f;J)J
    .locals 0

    iput-wide p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/f;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/f;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/f;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/b/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/b/h;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->s:Z

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->m()V

    const-string v0, "10"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/f$5;

    invoke-direct {v1, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/f$5;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;Ljava/lang/String;)V

    invoke-static {v0, p2, p1, v1}, Lcom/njpwworld/NJPWWORLD/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/b/h;)V
    .locals 6

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/b;

    new-instance v1, Landroid/support/v17/leanback/widget/al;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/al;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    :goto_0
    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/c/b;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/c/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->o:Landroid/support/v17/leanback/widget/b;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->o:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_2

    const v0, 0x7f0f00be

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-boolean v4, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->q:Z

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/njpwworld/NJPWWORLD/b/e;

    invoke-virtual {v4, v0}, Lcom/njpwworld/NJPWWORLD/b/e;->a(I)V

    iget-object v4, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->o:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/h;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->o:Landroid/support/v17/leanback/widget/b;

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->d(Ljava/lang/String;)Lcom/njpwworld/NJPWWORLD/b/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance p2, Landroid/support/v17/leanback/widget/ak;

    new-instance v0, Landroid/support/v17/leanback/widget/aa;

    invoke-direct {v0, v1, v2, p1}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->o:Landroid/support/v17/leanback/widget/b;

    invoke-direct {p2, v0, p1}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    goto :goto_2

    :cond_2
    const p1, 0x7f0f00bf

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/support/v17/leanback/widget/ak;

    new-instance v0, Landroid/support/v17/leanback/widget/aa;

    invoke-direct {v0, v1, v2, p1}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->o:Landroid/support/v17/leanback/widget/b;

    invoke-direct {p2, v0, p1}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    :goto_2
    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->p:Landroid/support/v17/leanback/widget/ak;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->p:Landroid/support/v17/leanback/widget/ak;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    iput-boolean v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->s:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0a00df

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->r:J

    return-wide v0
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/b/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->u:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/njpwworld/NJPWWORLD/b/e;
    .locals 2

    new-instance v0, Lcom/njpwworld/NJPWWORLD/b/e;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/b/e;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/b/e;->b(Ljava/lang/String;)V

    const-string v1, "\u3082\u3063\u3068\u898b\u308b"

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/b/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/b/e;->d(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/b/e;->c(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/b/e;->g(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/b/e;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method private n()V
    .locals 6

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SearchOrbView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SearchOrbView;->b(Z)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    const v4, 0x106000d

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    :goto_0
    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_0

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SearchOrbView;

    return-void
.end method


# virtual methods
.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchEditText;->requestFocus()Z

    return-void
.end method

.method public l()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public m()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/s;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/support/v17/leanback/widget/b;

    new-instance v0, Landroid/support/v17/leanback/widget/al;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/al;-><init>()V

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/b/f$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/f$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;Lcom/njpwworld/NJPWWORLD/view/b/f$1;)V

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Landroid/support/v17/leanback/widget/at;)V

    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/b/f$1;

    invoke-direct {p1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/f$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Landroid/support/v17/leanback/widget/bw;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v17/leanback/app/s;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/support/v17/leanback/app/s;->onResume()V

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sput-boolean v1, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a00df

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/b/f$4;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/njpwworld/NJPWWORLD/view/b/f$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v17/leanback/app/s;->onStart()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->n()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a00d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f0a00cf

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/SearchBar;

    const p2, 0x7f0a00d4

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/SearchEditText;

    const-string v0, "\u691c\u7d22"

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/f$2;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/f$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchBarListener(Landroid/support/v17/leanback/widget/SearchBar$a;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a()Landroid/support/v17/leanback/app/q;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f;->n:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/q;->a(Landroid/support/v17/leanback/widget/ao;)V

    const v0, 0x7f0a00d2

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/f$3;

    invoke-direct {v0, p0, p2}, Lcom/njpwworld/NJPWWORLD/view/b/f$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;Landroid/support/v17/leanback/widget/SearchEditText;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
