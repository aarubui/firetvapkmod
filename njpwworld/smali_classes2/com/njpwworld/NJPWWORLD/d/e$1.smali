.class Lcom/njpwworld/NJPWWORLD/d/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$1;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$1;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/d/e;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$1;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/d/e;I)I

    return p2
.end method
