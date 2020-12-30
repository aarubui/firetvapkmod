.class Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/c/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e$g;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e$g;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->f(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->c(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->t(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->t(Lcom/njpwworld/NJPWWORLD/view/b/e;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
