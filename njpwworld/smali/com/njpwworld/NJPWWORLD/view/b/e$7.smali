.class Lcom/njpwworld/NJPWWORLD/view/b/e$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$7;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$7;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->b()V

    return-void
.end method
