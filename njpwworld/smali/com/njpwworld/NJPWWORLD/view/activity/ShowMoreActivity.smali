.class public Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;
.super Lcom/amazon/android/activity/AmazonActivity;


# static fields
.field public static a:Z

.field private static b:Z

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Lcom/njpwworld/NJPWWORLD/view/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->a:Z

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->b:Z

    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/activity/AmazonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x3

    if-lt p1, v2, :cond_1

    sget-boolean p1, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->b:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->b:Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->d:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$2;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    :cond_1
    sget-boolean p1, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->b:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    sput-boolean p1, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->b:Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->d:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$3;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f01000d

    const v3, 0x7f01000c

    if-nez v1, :cond_0

    const-string v1, "ShowMoreActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->overridePendingTransition(II)V

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->finish()V

    invoke-virtual {p0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->setContentView(I)V

    const p1, 0x7f0a0160

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f003a

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->e:Lcom/njpwworld/NJPWWORLD/view/b/g;

    if-nez p1, :cond_0

    const p1, 0x7f0f00ce

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-direct {v2}, Lcom/njpwworld/NJPWWORLD/view/b/g;-><init>()V

    iput-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->e:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->e:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->a:Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->finish()V

    sput-boolean v1, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    return-void

    :cond_0
    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0a00df

    invoke-virtual {p0, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->a:Z

    return-void
.end method
