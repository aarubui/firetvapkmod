.class Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/b/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const v2, 0x7f0f0037

    invoke-virtual {v1, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f01000d

    const v3, 0x7f01000c

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ShowMoreActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const-class v4, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SearchActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->a:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const-class v4, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const-class v4, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v1, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->r(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$3;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0, v3, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    :goto_2
    return-void
.end method
