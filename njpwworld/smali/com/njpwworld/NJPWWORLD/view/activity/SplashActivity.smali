.class public Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/njpwworld/NJPWWORLD/manager/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/manager/a;->a(Landroid/content/Context;)Lcom/njpwworld/NJPWWORLD/manager/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V

    invoke-static {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->f(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->p(Landroid/content/Context;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->b()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/a/i;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/a/i;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/c/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p4}, Lcom/njpwworld/NJPWWORLD/a/i;->f()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/c/f;->c(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p4}, Lcom/njpwworld/NJPWWORLD/a/i;->g()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/c/f;->b(Landroid/content/Context;Z)Z

    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0a0147

    const v2, 0x7f080076

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/a/a/e;->a(Landroid/app/Activity;)Lcom/a/a/h;

    move-result-object v0

    const-string v3, "http://njpwworld.com/njpw/images/firetv_splash.png"

    invoke-virtual {v0, v3}, Lcom/a/a/h;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v0

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$a;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V

    :goto_0
    invoke-virtual {v0, v3}, Lcom/a/a/b;->a(Lcom/a/a/g/d;)Lcom/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a;->a()Lcom/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/a;->a(I)Lcom/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/a/a/a;->a(Landroid/widget/ImageView;)Lcom/a/a/g/b/j;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/a/a/e;->a(Landroid/app/Activity;)Lcom/a/a/h;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/h;->a(Ljava/lang/Integer;)Lcom/a/a/b;

    move-result-object v0

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$a;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a()V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$4;

    invoke-direct {v2, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/manager/a/a;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/manager/a/a$b;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->b:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->b:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->b:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Z)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->b:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a/d;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Ljava/util/Set;)V

    return-void
.end method

.method private onCreateSplashActivity(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->setContentView(I)V

    const p1, 0x7f0a00df

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->d()V

    return-void
.end method

.method private onResumeSplashActivity()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->e()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->onCreateSplashActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->onResumeSplashActivity()V

    return-void
.end method
