.class public Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;
.super Lcom/amazon/android/activity/AmazonActivity;


# static fields
.field public static a:Z


# instance fields
.field private b:I

.field private c:Lcom/njpwworld/NJPWWORLD/view/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/activity/AmazonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f01000d

    const v3, 0x7f01000c

    if-nez v1, :cond_0

    const-string v1, "SearchActivity"

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

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->overridePendingTransition(II)V

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->finish()V

    invoke-virtual {p0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->setContentView(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->c:Lcom/njpwworld/NJPWWORLD/view/b/f;

    if-nez p1, :cond_0

    const p1, 0x7f0f00bd

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->b:I

    const p1, 0x7f0a0130

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-direct {v2}, Lcom/njpwworld/NJPWWORLD/view/b/f;-><init>()V

    iput-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->c:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->c:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->a:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/view/b/f;

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->j()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->k()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->a:Z

    return-void
.end method
