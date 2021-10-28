.class Lcom/njpwworld/NJPWWORLD/d/e$a;
.super Landroid/media/session/MediaSession$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/d/e;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/d/e;Lcom/njpwworld/NJPWWORLD/d/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/d/e$a;-><init>(Lcom/njpwworld/NJPWWORLD/d/e;)V

    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->g()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Z)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Z)V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->d(Lcom/njpwworld/NJPWWORLD/d/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/d/e;->d(Lcom/njpwworld/NJPWWORLD/d/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object p2

    new-instance v0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/d/e$a$1;-><init>(Lcom/njpwworld/NJPWWORLD/d/e$a;)V

    invoke-virtual {p1, p2, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/b/f;Lcom/njpwworld/NJPWWORLD/d/e$b;)V

    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->h()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/d/e;->b(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/d/e;)Landroid/widget/VideoView;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/d/e;->g(Lcom/njpwworld/NJPWWORLD/d/e;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->h(Lcom/njpwworld/NJPWWORLD/d/e;)V

    return-void
.end method
