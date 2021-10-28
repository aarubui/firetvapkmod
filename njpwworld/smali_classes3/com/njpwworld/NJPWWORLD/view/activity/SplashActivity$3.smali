.class Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->finish()V

    return-void
.end method
