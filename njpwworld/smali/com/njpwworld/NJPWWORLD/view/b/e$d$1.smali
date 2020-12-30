.class Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e$d;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/session/PlaybackState;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e$d;Landroid/media/session/PlaybackState;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->a:Landroid/media/session/PlaybackState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/c/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->a:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->q(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/c/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/c/e;->a(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/widget/ba$e;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ba$e;->c(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/widget/ba$e;->b:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ba$e;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ba$e;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/support/v17/leanback/widget/a;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->a:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/c/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/c/e;->a(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/widget/ba$e;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ba$e;->c(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->e(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba$e;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/widget/ba$e;->a:I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->a:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->n(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ba;->b(I)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->n(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/support/v17/leanback/widget/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$d$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$d;

    iget-object v2, v2, Lcom/njpwworld/NJPWWORLD/view/b/e$d;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/c/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/njpwworld/NJPWWORLD/c/e;->c(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ba;->c(I)V

    :cond_2
    return-void
.end method
