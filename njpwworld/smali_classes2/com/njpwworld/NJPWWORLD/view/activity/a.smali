.class public abstract Lcom/njpwworld/NJPWWORLD/view/activity/a;
.super Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->c()V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/activity/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0f003b

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->g:Lcom/njpwworld/NJPWWORLD/b/j$a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->overridePendingTransition(II)V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0f003b

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->i:Lcom/njpwworld/NJPWWORLD/b/j$a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->a()V

    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/b/a;

    invoke-direct {p1}, Lcom/njpwworld/NJPWWORLD/view/b/a;-><init>()V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/a$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/a;)V

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/a;->a(Lcom/njpwworld/NJPWWORLD/view/b/a$a;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v17/leanback/app/j;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v17/leanback/app/j;)I

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/a;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/app/j;->a(Landroid/support/v4/app/FragmentManager;)Landroid/support/v17/leanback/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/j;->h()Landroid/support/v17/leanback/widget/t;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/t;->d()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/j;->h()Landroid/support/v17/leanback/widget/t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/t;->c()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method
