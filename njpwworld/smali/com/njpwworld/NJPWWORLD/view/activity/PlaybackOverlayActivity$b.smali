.class public Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->a:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->a:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    new-instance p3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$4;

    invoke-direct {p3, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;)V

    invoke-static {p2, p1, p3}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/a/c;

    new-instance p2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$3;

    invoke-direct {p2, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;)V

    invoke-direct {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/a/c;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/c$a;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/a/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/a/g;

    new-instance p2, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$2;

    invoke-direct {p2, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;)V

    invoke-direct {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/a/g;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/g$a;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/a/g;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/f;->b(Landroid/content/Context;)Z

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const-class p3, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const p3, 0x7f0f003c

    invoke-virtual {p2, p3}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c()Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/a/f$a;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p2, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    const p2, 0x7f01000c

    const p3, 0x7f01000d

    invoke-virtual {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;->b:Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->finish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/njpwworld/NJPWWORLD/a/g;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c()Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/g;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d()Landroid/widget/VideoView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setFocusable(Z)V

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->d()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->e()Lcom/njpwworld/NJPWWORLD/c/e;

    move-result-object p1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->c()Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity$b;)V

    invoke-virtual {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/c/e;->a(Lcom/njpwworld/NJPWWORLD/a/f;Lcom/njpwworld/NJPWWORLD/c/e$b;)V

    return-void
.end method
