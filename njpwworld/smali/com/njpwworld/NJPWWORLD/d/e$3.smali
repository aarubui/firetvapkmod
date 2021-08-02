.class Lcom/njpwworld/NJPWWORLD/d/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/d/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/d/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$3;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$3;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->c(Lcom/njpwworld/NJPWWORLD/d/e;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->p(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$3;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->c(Lcom/njpwworld/NJPWWORLD/d/e;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->f(Landroid/content/Context;)Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/d/e$3$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/d/e$3$1;-><init>(Lcom/njpwworld/NJPWWORLD/d/e$3;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
