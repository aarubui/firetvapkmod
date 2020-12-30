.class Lcom/njpwworld/NJPWWORLD/c/e$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/c/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/c/e$a;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/c/e$a;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/c/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/c/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/c/e$a;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/e;->a(Lcom/njpwworld/NJPWWORLD/c/e;J)J

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/c/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$a;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/c/e$a;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/e;->d(Lcom/njpwworld/NJPWWORLD/c/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/c/e$a;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/e;->e(Lcom/njpwworld/NJPWWORLD/c/e;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/a/f$a;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/c/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$a;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/c/e$a;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/c/e;->e()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/c/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$a;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/c/e$a;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/c/e$a;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/e;->f(Lcom/njpwworld/NJPWWORLD/c/e;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/njpwworld/NJPWWORLD/c/e;->a(Z)V

    return-void
.end method
