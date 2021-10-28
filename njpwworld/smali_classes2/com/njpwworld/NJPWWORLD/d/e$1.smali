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
    .locals 3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$1;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/d/e;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    const-string p1, "error"

    const-string v0, "what: %d, extra: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e$1;->a:Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-static {p1, v2}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Lcom/njpwworld/NJPWWORLD/d/e;I)I

    return v2
.end method
