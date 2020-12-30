.class Lcom/njpwworld/NJPWWORLD/view/b/e$d;
.super Landroid/media/session/MediaController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e$d;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;J)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->o(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;

    invoke-direct {v1, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$d;Landroid/media/session/PlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
