.class public Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;
.super Landroid/support/v4/app/FragmentActivity;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/b/d;

    invoke-direct {p1}, Lcom/njpwworld/NJPWWORLD/view/b/d;-><init>()V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;)V

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/d;->a(Lcom/njpwworld/NJPWWORLD/view/b/d$a;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v17/leanback/app/j;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v17/leanback/app/j;)I

    return-void
.end method
