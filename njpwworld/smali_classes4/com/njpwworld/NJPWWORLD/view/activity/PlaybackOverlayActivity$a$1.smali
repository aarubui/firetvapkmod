.class Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->b(Lcom/njpwworld/NJPWWORLD/b/f;)Lcom/njpwworld/NJPWWORLD/b/f;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v2, v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v2, v2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;

    iget-object v3, v3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    :goto_0
    return-void
.end method
