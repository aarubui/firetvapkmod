.class Lcom/njpwworld/NJPWWORLD/view/b/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/ap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Landroid/support/v17/leanback/widget/bb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/a;)V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->c(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->c(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->d(Lcom/njpwworld/NJPWWORLD/view/b/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;J)J

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ba$e;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ba$e;->f()I

    move-result p1

    sget v0, Landroid/support/v17/leanback/widget/ba$e;->a:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/widget/ba$e;->b:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ba$e;->c(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->f(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ba$e;->f()I

    move-result p1

    sget v0, Landroid/support/v17/leanback/widget/ba$e;->b:I

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/widget/ba$e;->a:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ba$e;->c(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->f(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->g(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$g;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ba$g;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/a/f;)Lcom/njpwworld/NJPWWORLD/a/f;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f$a;->p()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->j(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ba$h;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/a/f;)Lcom/njpwworld/NJPWWORLD/a/f;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f$a;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->k(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ba$a;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->f(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/a;->a()J

    move-result-wide v0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->l(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ba$f;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$5;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->f(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    :cond_9
    :goto_1
    return-void
.end method
