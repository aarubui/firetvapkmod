.class Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->d:Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->b:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/b/e;->I:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->d:Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->d:Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    const v2, 0x7f0f003c

    invoke-virtual {v1, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->d:Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    invoke-virtual {v1, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->d:Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    const v1, 0x7f01000c

    const v2, 0x7f01000d

    invoke-virtual {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity$1;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
