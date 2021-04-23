.class public Lcom/njpwworld/NJPWWORLD/view/b/e;
.super Landroid/support/v17/leanback/app/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/b/e$a;,
        Lcom/njpwworld/NJPWWORLD/view/b/e$b;,
        Lcom/njpwworld/NJPWWORLD/view/b/e$g;,
        Lcom/njpwworld/NJPWWORLD/view/b/e$f;,
        Lcom/njpwworld/NJPWWORLD/view/b/e$e;,
        Lcom/njpwworld/NJPWWORLD/view/b/e$d;,
        Lcom/njpwworld/NJPWWORLD/view/b/e$c;
    }
.end annotation


# static fields
.field public static I:Z

.field private static final J:Ljava/lang/String;

.field private static aj:Ljava/util/Timer;


# instance fields
.field private K:Landroid/content/Context;

.field private L:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

.field private M:Lcom/njpwworld/NJPWWORLD/d/e;

.field private N:Landroid/support/v17/leanback/widget/ba;

.field private O:Landroid/support/v17/leanback/widget/b;

.field private P:Landroid/support/v17/leanback/widget/b;

.field private Q:Landroid/os/Handler;

.field private R:Ljava/lang/Runnable;

.field private S:Landroid/support/v17/leanback/widget/b;

.field private T:Lcom/njpwworld/NJPWWORLD/b/f;

.field private U:Lcom/njpwworld/NJPWWORLD/b/f;

.field private V:Landroid/view/View;

.field private W:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

.field private X:Landroid/support/v17/leanback/widget/ba$e;

.field private Y:Landroid/support/v17/leanback/widget/ba$g;

.field private Z:Landroid/support/v17/leanback/widget/ba$h;

.field private aa:Landroid/support/v17/leanback/widget/ba$a;

.field private ab:Landroid/support/v17/leanback/widget/ba$f;

.field private ac:Landroid/support/v17/leanback/widget/bb;

.field private ad:Landroid/media/session/MediaController;

.field private ae:Landroid/media/session/MediaController$Callback;

.field private af:J

.field private ag:J

.field private ah:Z

.field private ai:Lb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/njpwworld/NJPWWORLD/manager/b/b;

.field private al:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->J:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->I:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/o;-><init>()V

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->W:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e$d;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$1;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ae:Landroid/media/session/MediaController$Callback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ah:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->al:Z

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->af:J

    return-wide p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lb/b;)Lb/b;
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ai:Lb/b;

    return-object p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/b/f;)Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->U:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$e;)Lcom/njpwworld/NJPWWORLD/view/b/e$e;
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->W:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    return-object p1
.end method

.method static synthetic a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    return-object p0
.end method

.method private a(Landroid/support/v17/leanback/widget/a;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/b;->a(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/b;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/b;->a(II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v17/leanback/widget/bb;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f060088

    const v2, 0x7f060027

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/bb;->a(I)V

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/bb;->b(I)V

    return-void
.end method

.method private a(Lcom/njpwworld/NJPWWORLD/b/f;)V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ba;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/b;->a(II)V

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(J)V

    const-string p1, "1"

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ba;->a(I)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->v()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->n()V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/support/v17/leanback/widget/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Landroid/support/v17/leanback/widget/a;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Ljava/lang/String;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/d/f;->v(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/d/f;->u(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    aget-object v4, v2, v1

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-direct {v3, p0, v0, v4, v6}, Lcom/njpwworld/NJPWWORLD/view/b/e$f;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v2, v1

    aget-object v1, v2, v5

    invoke-static {p1, v0, v1, v3}, Lcom/njpwworld/NJPWWORLD/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/e$f;

    invoke-direct {v2, p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e$f;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ba;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ba;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->a(Ljava/lang/String;)V

    :cond_0
    const-string p1, "1"

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ba;->a(I)V

    :cond_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ba;->b(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ba;->c(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/b;->a(II)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    invoke-direct {v0, p0, p2}, Lcom/njpwworld/NJPWWORLD/view/b/e$g;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/njpwworld/NJPWWORLD/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/c/a/c;->a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    invoke-direct {v0, p0, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e$g;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;)V

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v0}, Lcom/njpwworld/NJPWWORLD/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ah:Z

    return p1
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ag:J

    return-wide p1
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/b/f;)Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object p1
.end method

.method private b(Landroid/support/v17/leanback/widget/bb;)V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$5;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/bb;->a(Landroid/support/v17/leanback/widget/ap;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->o()V

    return-void
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/njpwworld/NJPWWORLD/view/b/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->af:J

    return-wide v0
.end method

.method static synthetic e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->X:Landroid/support/v17/leanback/widget/ba$e;

    return-object p0
.end method

.method static synthetic f(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/media/session/MediaController;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ad:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic g(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$g;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Y:Landroid/support/v17/leanback/widget/ba$g;

    return-object p0
.end method

.method static synthetic h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object p0
.end method

.method static synthetic i(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->U:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object p0
.end method

.method static synthetic j(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$h;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Z:Landroid/support/v17/leanback/widget/ba$h;

    return-object p0
.end method

.method static synthetic k(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$a;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aa:Landroid/support/v17/leanback/widget/ba$a;

    return-object p0
.end method

.method static synthetic l(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$f;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ab:Landroid/support/v17/leanback/widget/ba$f;

    return-object p0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/d/e;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    return-object p0
.end method

.method static synthetic m()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic n(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    return-object p0
.end method

.method private n()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ad:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ad:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ae:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ad:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ae:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    return-void
.end method

.method static synthetic o(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Q:Landroid/os/Handler;

    return-object p0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->L:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a()Lcom/njpwworld/NJPWWORLD/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/b/f;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(I)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->q()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->r()V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$2;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Landroid/support/v17/leanback/widget/f;)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e$c;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$1;)V

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Landroid/support/v17/leanback/widget/e;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ad:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->p()V

    return-void
.end method

.method static synthetic p(Lcom/njpwworld/NJPWWORLD/view/b/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ag:J

    return-wide v0
.end method

.method private p()V
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$3;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ak:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->x()V

    return-void
.end method

.method private q()V
    .locals 5

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "1"

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/b/e$4;

    invoke-direct {v3, p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->V:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->V:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Z)V

    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->u()V

    return-void
.end method

.method private r()V
    .locals 3

    new-instance v0, Landroid/support/v17/leanback/widget/g;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/g;-><init>()V

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/c/d;

    invoke-direct {v1}, Lcom/njpwworld/NJPWWORLD/view/c/d;-><init>()V

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/c/d;->b()V

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/c/d;->a()V

    new-instance v2, Landroid/support/v17/leanback/widget/bb;

    invoke-direct {v2, v1}, Landroid/support/v17/leanback/widget/bb;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ac:Landroid/support/v17/leanback/widget/bb;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ac:Landroid/support/v17/leanback/widget/bb;

    invoke-direct {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Landroid/support/v17/leanback/widget/bb;)V

    const-class v1, Landroid/support/v17/leanback/widget/ba;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ac:Landroid/support/v17/leanback/widget/bb;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/g;->a(Ljava/lang/Class;Landroid/support/v17/leanback/widget/be;)Landroid/support/v17/leanback/widget/g;

    const-class v1, Landroid/support/v17/leanback/widget/ak;

    new-instance v2, Landroid/support/v17/leanback/widget/al;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/al;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/g;->a(Ljava/lang/Class;Landroid/support/v17/leanback/widget/be;)Landroid/support/v17/leanback/widget/g;

    new-instance v1, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/bf;)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->s()V

    const-string v0, "1"

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->t()V

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ac:Landroid/support/v17/leanback/widget/bb;

    invoke-direct {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Landroid/support/v17/leanback/widget/bb;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Landroid/support/v17/leanback/widget/ao;)V

    return-void
.end method

.method static synthetic r(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->w()V

    return-void
.end method

.method static synthetic s(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->L:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    return-object p0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/ba;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ba;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v17/leanback/widget/i;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/i;-><init>()V

    new-instance v1, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/bf;)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ba;->a(Landroid/support/v17/leanback/widget/ao;)V

    new-instance v0, Landroid/support/v17/leanback/widget/ba$e;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ba$e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->X:Landroid/support/v17/leanback/widget/ba$e;

    new-instance v0, Landroid/support/v17/leanback/widget/ba$g;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ba$g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Y:Landroid/support/v17/leanback/widget/ba$g;

    new-instance v0, Landroid/support/v17/leanback/widget/ba$h;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ba$h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Z:Landroid/support/v17/leanback/widget/ba$h;

    new-instance v0, Landroid/support/v17/leanback/widget/ba$a;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ba$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aa:Landroid/support/v17/leanback/widget/ba$a;

    new-instance v0, Landroid/support/v17/leanback/widget/ba$f;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ba$f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ab:Landroid/support/v17/leanback/widget/ba$f;

    const-string v0, "1"

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Z:Landroid/support/v17/leanback/widget/ba$h;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ab:Landroid/support/v17/leanback/widget/ba$f;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->X:Landroid/support/v17/leanback/widget/ba$e;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aa:Landroid/support/v17/leanback/widget/ba$a;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->O:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Y:Landroid/support/v17/leanback/widget/ba$g;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->a()Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/b/f;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->e()V

    return-void
.end method

.method static synthetic t(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->V:Landroid/view/View;

    return-object p0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->P:Landroid/support/v17/leanback/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->P:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/aa;

    const-wide/16 v1, 0x0

    const v3, 0x7f0f00b8

    invoke-virtual {p0, v3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/support/v17/leanback/widget/b;

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/c/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/njpwworld/NJPWWORLD/view/c/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->P:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/njpwworld/NJPWWORLD/b/e;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->P:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    new-instance v2, Landroid/support/v17/leanback/widget/ak;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->P:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v2, v0, v3}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic u(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/manager/b/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ak:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    return-object p0
.end method

.method private u()V
    .locals 4

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->J:Ljava/lang/String;

    const-string v1, "startProgressAutomation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->R:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/e$6;

    invoke-direct {v1, p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e$6;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;I)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->R:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->R:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lb/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ai:Lb/b;

    return-object p0
.end method

.method private v()V
    .locals 9

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/d/f;->o(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/f$a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v1, v2, v7

    if-nez v1, :cond_1

    :cond_0
    move-wide v2, v5

    :cond_1
    cmp-long v1, v2, v5

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v0

    :cond_2
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->i()Landroid/widget/VideoView;

    move-result-object v0

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ba;->b(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->N:Landroid/support/v17/leanback/widget/ba;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->M:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v2, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ba;->c(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    return-void
.end method

.method private w()V
    .locals 3

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/e$7;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$7;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    const v2, 0x7f0f00a2

    invoke-static {v0, v2, v1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private x()V
    .locals 6

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/njpwworld/NJPWWORLD/view/b/e$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3a98

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/njpwworld/NJPWWORLD/view/b/e$b;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ad:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->J:Ljava/lang/String;

    const-string v1, "unregister callback of mediaController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ad:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ae:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e$b;->a()V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->R:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->R:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->ah:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->W:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->J:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/o;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->J:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/o;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->K:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->L:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->Q:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f0f003d

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/f;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->T:Lcom/njpwworld/NJPWWORLD/b/f;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/o;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->V:Landroid/view/View;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->V:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->V:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->V:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->aj:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->I:Z

    invoke-super {p0}, Landroid/support/v17/leanback/app/o;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v17/leanback/app/o;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/o;->onStart()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->I:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e;->S:Landroid/support/v17/leanback/widget/b;

    invoke-super {p0}, Landroid/support/v17/leanback/app/o;->onStop()V

    return-void
.end method
