.class public Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field private a:Lcom/njpwworld/NJPWWORLD/view/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c001b

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    if-nez p1, :cond_0

    const p1, 0x7f0f0032

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-direct {v2}, Lcom/njpwworld/NJPWWORLD/view/b/c;-><init>()V

    iput-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity$1;

    invoke-direct {p1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;)V

    invoke-static {p0, p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v3, 0x17

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
