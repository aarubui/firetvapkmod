.class Lcom/njpwworld/NJPWWORLD/c/e$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/c/e$3;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/c/e$3;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/c/e$3;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/c/e$3$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$3$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$3;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/c/e$3;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/c/e;->a(Lcom/njpwworld/NJPWWORLD/c/e;I)I

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/c/e$3$1;->a:Lcom/njpwworld/NJPWWORLD/c/e$3;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/c/e$3;->a:Lcom/njpwworld/NJPWWORLD/c/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/e;->c(Lcom/njpwworld/NJPWWORLD/c/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->b()V

    return-void
.end method
