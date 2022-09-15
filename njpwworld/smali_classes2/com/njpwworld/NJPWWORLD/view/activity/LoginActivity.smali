.class public Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;
.super Lcom/amazon/android/activity/AmazonActivity;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/activity/AmazonActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0f0037

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f0f003c

    invoke-virtual {p0, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v3}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/e;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/e;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/e$b;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/a/e;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->setContentView(I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->b()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;)V

    invoke-static {p0, v0}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->finish()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/njpwworld/NJPWWORLD/manager/receiver/LocaleChangedReceiver;->a:Z

    :cond_3
    return-void
.end method
