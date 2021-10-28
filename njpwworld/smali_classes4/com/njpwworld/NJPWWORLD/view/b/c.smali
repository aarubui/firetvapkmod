.class public Lcom/njpwworld/NJPWWORLD/view/b/c;
.super Landroid/support/v17/leanback/app/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/b/c$a;
    }
.end annotation


# instance fields
.field private N:Landroid/support/v17/leanback/widget/b;

.field private O:Landroid/support/v17/leanback/widget/b;

.field private P:Landroid/support/v17/leanback/widget/b;

.field private Q:Landroid/support/v17/leanback/widget/b;

.field private R:Landroid/support/v17/leanback/widget/b;

.field private S:Landroid/support/v17/leanback/widget/b;

.field private T:Landroid/support/v17/leanback/widget/b;

.field private U:Landroid/support/v17/leanback/widget/b;

.field private V:Landroid/support/v17/leanback/widget/b;

.field private W:Landroid/support/v17/leanback/widget/b;

.field private X:Landroid/support/v17/leanback/widget/b;

.field private Y:Landroid/support/v17/leanback/widget/b;

.field private Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/ak;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/njpwworld/NJPWWORLD/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/njpwworld/NJPWWORLD/b/j;

.field private ac:J

.field private ad:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Z:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->aa:Ljava/util/ArrayList;

    return-void
.end method

.method private A()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->O:Landroid/support/v17/leanback/widget/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-boolean v2, Lcom/njpwworld/NJPWWORLD/a;->c:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/widget/FrameLayout;I)V

    :goto_0
    return-void
.end method

.method private B()V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->y()V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->f(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/b/j$a;->a:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v3, 0x7f0f00c3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080068

    invoke-direct {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/b/j$a;->b:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v3, 0x7f0f00c4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080069

    invoke-direct {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    return-void
.end method

.method private C()V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v1, 0x7f08007d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/c$4;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/c$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;)V

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/support/v17/leanback/widget/bf;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->h(I)V

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f060083

    const v2, 0x7f06002e

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->c(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->b(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->c(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private D()V
    .locals 2

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/c$5;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/b/c$5;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;)V

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/c$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Lcom/njpwworld/NJPWWORLD/view/b/c$1;)V

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/support/v17/leanback/widget/at;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ac:J

    return-wide p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const v0, 0x7f0f0033

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    new-instance p1, Lcom/njpwworld/NJPWWORLD/b/b;

    invoke-direct {p1}, Lcom/njpwworld/NJPWWORLD/b/b;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/b/b;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/b/b;->a(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/b/b;->c(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/b/b;->d(Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/njpwworld/NJPWWORLD/b/e;

    invoke-direct {p1}, Lcom/njpwworld/NJPWWORLD/b/e;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/njpwworld/NJPWWORLD/b/e;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/njpwworld/NJPWWORLD/b/e;->d(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/b/e;->c(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/b/e;->g(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/b/e;->h(Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/c;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/c$9;

    invoke-direct {v0, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$9;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/a/d;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private a(Landroid/widget/FrameLayout;I)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$10;

    invoke-direct {v2, p0, p2, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$10;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;ILandroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method private a(Lcom/njpwworld/NJPWWORLD/b/j;)V
    .locals 5

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:[I

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/j;->a()Lcom/njpwworld/NJPWWORLD/b/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/j$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f01000d

    const v2, 0x7f01000c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/njpwworld/NJPWWORLD/view/activity/WebViewActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x7f0f003b

    invoke-virtual {p0, v3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/j;->a()Lcom/njpwworld/NJPWWORLD/b/j$a;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v3, Lcom/njpwworld/NJPWWORLD/view/activity/AmazonPaymentActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v3, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :pswitch_3
    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/c$7;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/c$7;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;)V

    invoke-direct {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/e;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/e$a;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "HomeFragment"

    invoke-virtual {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/a/d;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/c$6;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/c$6;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;)V

    invoke-direct {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/d$b;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "HomeFragment"

    invoke-virtual {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->b(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/b/c;Lcom/njpwworld/NJPWWORLD/b/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/b/j;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->O:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private b(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$11;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$11;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->j(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->P:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private c(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$12;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$12;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->d(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic d(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Q:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private d(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$13;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$13;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->c(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic d(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->e(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic e(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->R:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private e(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$14;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$14;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->d(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic e(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->f(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic f(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->S:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private f(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$15;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$15;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->e(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic f(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->g(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private f(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/b/j$a;->d:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v3, 0x7f0f00c8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08005c

    invoke-direct {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/b/j$a;->c:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080065

    invoke-direct {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->y()V

    return-void
.end method

.method static synthetic g(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->T:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private g(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$16;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$16;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->f(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic g(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->h(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic h(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->U:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private h(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$2;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->g(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic h(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->i(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic i(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->V:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private i(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/b/c$3;

    invoke-direct {v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a/d;->h(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic j(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->W:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private j(Landroid/widget/FrameLayout;)V
    .locals 8

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Y:Landroid/support/v17/leanback/widget/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/njpwworld/NJPWWORLD/b/c;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/b/c;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/b/c;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    new-instance v6, Lcom/njpwworld/NJPWWORLD/b/b;

    invoke-direct {v6}, Lcom/njpwworld/NJPWWORLD/b/b;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/njpwworld/NJPWWORLD/b/b;->a(Ljava/lang/String;)V

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/njpwworld/NJPWWORLD/b/b;->c(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/njpwworld/NJPWWORLD/b/b;->e(Ljava/lang/String;)V

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/njpwworld/NJPWWORLD/b/b;->b(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/njpwworld/NJPWWORLD/b/b;->c(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/njpwworld/NJPWWORLD/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/c;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Y:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/b;->a()V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Y:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/support/v17/leanback/widget/b;->a(ILjava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->c(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic k(Lcom/njpwworld/NJPWWORLD/view/b/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ac:J

    return-wide v0
.end method

.method static synthetic l(Lcom/njpwworld/NJPWWORLD/view/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->B()V

    return-void
.end method

.method static synthetic m(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    return-object p0
.end method

.method private w()V
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/b;

    new-instance v1, Landroid/support/v17/leanback/widget/al;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/al;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->z()I

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->x()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Landroid/support/v17/leanback/widget/ao;)V

    return-void
.end method

.method private x()V
    .locals 6

    new-instance v0, Landroid/support/v17/leanback/widget/aa;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v3, v1

    const v1, 0x7f0f0093

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/c/e;

    invoke-direct {v1}, Lcom/njpwworld/NJPWWORLD/view/c/e;-><init>()V

    const/16 v3, 0x12c

    const/16 v4, 0xfa

    invoke-virtual {v1, v3, v4}, Lcom/njpwworld/NJPWWORLD/view/c/e;->a(II)V

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/c/e;->a()V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v1}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->t(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->y()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->f(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v3, Lcom/njpwworld/NJPWWORLD/b/j$a;->a:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v4, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v5, 0x7f0f00c3

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080068

    invoke-direct {v1, v3, v4, v5}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->f(Z)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->b:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f00c4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080069

    invoke-direct {v1, v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ab:Lcom/njpwworld/NJPWWORLD/b/j;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v2, Landroid/support/v17/leanback/widget/ak;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v2, v0, v3}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private y()V
    .locals 5

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->e:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f00cc

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08007e

    invoke-direct {v1, v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->f:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f00c2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080076

    invoke-direct {v1, v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->g:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f00ca

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08005e

    invoke-direct {v1, v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->h:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f00c5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08005f

    invoke-direct {v1, v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->i:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f00c7

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080075

    invoke-direct {v1, v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->X:Landroid/support/v17/leanback/widget/b;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/j;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/b/j$a;->j:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f00cb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08007c

    invoke-direct {v1, v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/j;-><init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private z()I
    .locals 7

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/c/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/c/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/c/b;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/njpwworld/NJPWWORLD/view/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/c/b;->a()V

    new-instance v2, Landroid/support/v17/leanback/widget/aa;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f0090

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->O:Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v4, Landroid/support/v17/leanback/widget/ak;

    iget-object v5, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->O:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v4, v2, v5}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v17/leanback/widget/aa;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f0091

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->P:Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v4, Landroid/support/v17/leanback/widget/ak;

    iget-object v5, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->P:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v4, v2, v5}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v17/leanback/widget/aa;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f0092

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x3

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v1}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Q:Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v4, Landroid/support/v17/leanback/widget/ak;

    iget-object v5, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Q:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v4, v2, v5}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v17/leanback/widget/aa;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f008b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x4

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->R:Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v4, Landroid/support/v17/leanback/widget/ak;

    iget-object v5, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->R:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v4, v2, v5}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v17/leanback/widget/aa;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f008e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->S:Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v4, Landroid/support/v17/leanback/widget/ak;

    iget-object v5, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->S:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v4, v2, v5}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v17/leanback/widget/aa;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f0095

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x6

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->T:Landroid/support/v17/leanback/widget/b;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v4, Landroid/support/v17/leanback/widget/ak;

    iget-object v5, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->T:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v4, v2, v5}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v17/leanback/widget/aa;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v4, 0x7f0f008c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7

    invoke-direct {v2, v4, v5, v3}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v3, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v1}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Y:Landroid/support/v17/leanback/widget/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v3, Landroid/support/v17/leanback/widget/ak;

    iget-object v4, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->Y:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v2, v4}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v1, Landroid/support/v17/leanback/widget/aa;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v3, 0x7f0f008d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x8

    invoke-direct {v1, v3, v4, v2}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v2, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v2, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->U:Landroid/support/v17/leanback/widget/b;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v5, Landroid/support/v17/leanback/widget/ak;

    iget-object v6, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->U:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v5, v1, v6}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v1, Landroid/support/v17/leanback/widget/aa;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v5, 0x7f0f0094

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v2, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v2, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->V:Landroid/support/v17/leanback/widget/b;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v3, Landroid/support/v17/leanback/widget/ak;

    iget-object v4, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->V:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v3, v1, v4}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    new-instance v1, Landroid/support/v17/leanback/widget/aa;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v3, 0x7f0f008f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x9

    invoke-direct {v1, v3, v4, v2}, Landroid/support/v17/leanback/widget/aa;-><init>(JLjava/lang/String;)V

    new-instance v2, Landroid/support/v17/leanback/widget/b;

    invoke-direct {v2, v0}, Landroid/support/v17/leanback/widget/b;-><init>(Landroid/support/v17/leanback/widget/be;)V

    iput-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->W:Landroid/support/v17/leanback/widget/b;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    new-instance v2, Landroid/support/v17/leanback/widget/ak;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->W:Landroid/support/v17/leanback/widget/b;

    invoke-direct {v2, v1, v3}, Landroid/support/v17/leanback/widget/ak;-><init>(Landroid/support/v17/leanback/widget/aa;Landroid/support/v17/leanback/widget/ao;)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->N:Landroid/support/v17/leanback/widget/b;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "HomeFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/h;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->C()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->w()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->D()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->g(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/h;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroid/support/v17/leanback/app/h;->onResume()V

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const-class v3, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sput-boolean v1, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    const v3, 0x7f0a00df

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/b/c$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/njpwworld/NJPWWORLD/view/b/c$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/os/Handler;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->B()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->A()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/h;->onStart()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method
