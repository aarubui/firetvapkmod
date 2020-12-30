.class public Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "LoginActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/d;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/d$b;)V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/a/d;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onCreateLoginActivity(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->setContentView(I)V

    return-void
.end method

.method private onResumeLoginActivity()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/c/f;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/c/f;->c(Landroid/content/Context;)Z

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

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->f(Landroid/content/Context;)Z

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;)V

    invoke-static {p0, v0}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

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


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/android/Kiwi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->onCreateLoginActivity(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->onResumeLoginActivity()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    return-void
.end method
