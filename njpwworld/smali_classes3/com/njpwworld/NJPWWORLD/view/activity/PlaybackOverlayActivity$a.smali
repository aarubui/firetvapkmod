.class public Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    const-string v0, ""

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    const-string v0, ""

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    new-instance p3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$2;

    invoke-direct {p3, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;)V

    invoke-static {p2, p1, p3}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;->e:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;

    invoke-direct {v1, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$a;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/g;->a(Landroid/app/Activity;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V

    return-void
.end method
