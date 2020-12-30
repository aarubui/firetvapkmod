.class Lcom/njpwworld/NJPWWORLD/c/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/c/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/c/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/c/e$2;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$2;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/e;->a(Lcom/njpwworld/NJPWWORLD/c/e;J)J

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$2;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/e;->b(Lcom/njpwworld/NJPWWORLD/c/e;)Lcom/njpwworld/NJPWWORLD/c/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$2;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/e;->b(Lcom/njpwworld/NJPWWORLD/c/e;)Lcom/njpwworld/NJPWWORLD/c/e$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/njpwworld/NJPWWORLD/c/e$b;->a(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
