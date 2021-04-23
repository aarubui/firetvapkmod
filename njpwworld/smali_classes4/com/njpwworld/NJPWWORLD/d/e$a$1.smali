.class Lcom/njpwworld/NJPWWORLD/d/e$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/d/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/d/e$a;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/d/e$a;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/d/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/d/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/d/e$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/d/e;J)J

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/d/e$a;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->d(Lcom/njpwworld/NJPWWORLD/d/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/d/e$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->e(Lcom/njpwworld/NJPWWORLD/d/e;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/b/f$a;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/d/e$a;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->e()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/d/e$a;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/d/e$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/d/e$a;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/e;->f(Lcom/njpwworld/NJPWWORLD/d/e;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Z)V

    return-void
.end method
