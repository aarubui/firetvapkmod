.class Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->I:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    const-class v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    const v3, 0x7f0f003c

    invoke-virtual {v2, v3}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    const v3, 0x7f0f0037

    invoke-virtual {v2, v3}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-virtual {v2, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    const v2, 0x7f01000c

    const v3, 0x7f01000d

    invoke-virtual {v0, v2, v3}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$2;->b:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
