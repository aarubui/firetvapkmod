.class Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/c/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->onResume()V
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$2;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c()Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$2;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$2;->a:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c()Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method
