.class public Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;
.super Lcom/amazon/android/activity/AmazonActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;,
        Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Landroid/widget/VideoView;

.field private static d:Lcom/njpwworld/NJPWWORLD/d/e;

.field private static e:Lcom/njpwworld/NJPWWORLD/b/f;

.field private static g:I


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/android/activity/AmazonActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 7

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f003c

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->u(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-direct {v2, p0, p1, v4, v6}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, v1, v3

    aget-object v1, v1, v5

    invoke-static {v0, p1, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    invoke-direct {v2, p0, p1, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/njpwworld/NJPWWORLD/b/f;)V
    .locals 0

    sput-object p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    return-void
.end method

.method public static a(Lcom/njpwworld/NJPWWORLD/d/e$b;)V
    .locals 2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Landroid/widget/VideoView;)V

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusable(Z)V

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0, v1, p0}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/b/f;Lcom/njpwworld/NJPWWORLD/d/e$b;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->b(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Ljava/lang/String;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private a(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;)V

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e$b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    const p1, 0x7f01000c

    const v0, 0x7f01000d

    invoke-virtual {p0, p1, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;

    invoke-direct {v0, p0, p2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;)V

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/njpwworld/NJPWWORLD/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

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

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;

    invoke-direct {v0, p0, p3}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;)V

    sget-object p3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v0}, Lcom/njpwworld/NJPWWORLD/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/b/f;)Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 0

    sput-object p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object p0
.end method

.method private b(Landroid/widget/FrameLayout;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$4;

    invoke-direct {p1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;)V

    invoke-static {p0, p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic c()Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object v0
.end method

.method static synthetic d()Landroid/widget/VideoView;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic e()Lcom/njpwworld/NJPWWORLD/d/e;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 5

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    new-instance v4, Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {v4}, Lcom/njpwworld/NJPWWORLD/view/b/e;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private h()V
    .locals 4

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0037

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f01000d

    const v3, 0x7f01000c

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ShowMoreActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    invoke-virtual {p0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SearchActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->a:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    invoke-virtual {p0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()Lcom/njpwworld/NJPWWORLD/d/e;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a:Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->h()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a:Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->g:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    invoke-direct {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    goto :goto_0

    :cond_1
    const-string v2, "1"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e()V

    invoke-virtual {v1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f00a1

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->g:I

    const/4 p1, 0x0

    sput-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->setContentView(I)V

    const p1, 0x7f0a00df

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/d/e;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->c()V

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->g:I

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/view/b/e;

    const/16 v2, 0x55

    if-eq p1, v2, :cond_8

    const/16 v2, 0x61

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    if-eqz v0, :cond_1

    const-string v2, "1"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->d()V

    :cond_1
    const-string v2, "1"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    rem-int/lit8 v2, v2, 0xa

    if-ne v2, v1, :cond_9

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    :pswitch_1
    if-eqz v0, :cond_3

    const-string v2, "1"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->d()V

    :cond_3
    const-string v2, "1"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    rem-int/lit8 v2, v2, 0xa

    if-eq v2, v1, :cond_9

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v1

    :pswitch_2
    sget-object v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "!"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->k()I

    move-result v2

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a()I

    move-result v3

    if-eq v2, v3, :cond_9

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    rem-int/lit8 v2, v2, 0x3

    if-ne v2, v1, :cond_9

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->k()I

    move-result v1

    sget-object v2, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->k()I

    move-result v0

    sget-object v1, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->c:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a()I

    move-result v1

    if-ne v0, v1, :cond_9

    goto :goto_1

    :pswitch_3
    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "1"

    sget-object v4, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    rem-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_0
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->g()V

    goto :goto_2

    :cond_6
    return v1

    :pswitch_4
    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "1"

    sget-object v4, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    rem-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->h()V

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    const-string v0, "1"

    sget-object v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    :goto_2
    :pswitch_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x59
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_8

    const/16 v0, 0x15

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->g:I

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/view/b/e;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->k()I

    move-result v0

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a()I

    move-result v3

    if-eq v0, v3, :cond_8

    sget-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "!"

    sget-object p2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iput v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    :cond_3
    return v1

    :cond_4
    :goto_0
    sget-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p1, "1"

    sget-object p2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iput v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    :cond_5
    return v1

    :cond_6
    :goto_1
    sget-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p1, "1"

    sget-object p2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iput v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f:I

    :cond_7
    return v1

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    const v1, 0x7f01000d

    const v2, 0x7f01000c

    if-eqz v0, :cond_3

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/njpwworld/NJPWWORLD/d/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "1"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/njpwworld/NJPWWORLD/d/f;->b(Landroid/content/Context;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    invoke-virtual {p0, v2, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    invoke-virtual {p0, v2, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    return-void

    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a:Z

    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->a()Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Z)V

    :cond_0
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->c()V

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    sput-boolean v1, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    return-void

    :cond_1
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->a()Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    :goto_0
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Z)V

    goto :goto_2

    :cond_2
    const-string v0, "1"

    sget-object v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$2;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;)V

    :goto_1
    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/d/e$b;)V

    :goto_2
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    sget-object v0, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/h;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/h;->dismiss()V

    :cond_0
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    const v1, 0x7f01000d

    const v2, 0x7f01000c

    if-eqz v0, :cond_3

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/njpwworld/NJPWWORLD/d/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "1"

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/njpwworld/NJPWWORLD/d/f;->b(Landroid/content/Context;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    invoke-virtual {p0, v2, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    goto :goto_0
.end method
