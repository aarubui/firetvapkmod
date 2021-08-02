.class public Lcom/njpwworld/NJPWWORLD/view/b/e$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->a:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->r(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/njpwworld/NJPWWORLD/view/b/e$g$4;

    invoke-direct {p3, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$g$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$g;)V

    invoke-static {p2, p1, p3}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/a/c;

    new-instance p2, Lcom/njpwworld/NJPWWORLD/view/b/e$g$3;

    invoke-direct {p2, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$g$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$g;)V

    invoke-direct {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/a/c;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/c$a;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/b/e;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/a/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/a/g;

    new-instance p2, Lcom/njpwworld/NJPWWORLD/view/b/e$g$2;

    invoke-direct {p2, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$g$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$g;)V

    invoke-direct {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/a/g;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/g$a;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/b/e;->l()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/a/g;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->b(Landroid/content/Context;)Z

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class p3, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    const p3, 0x7f0f003c

    invoke-virtual {p2, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/b/f$a;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p2, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f01000c

    const p3, 0x7f01000d

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/g;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/g;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->s(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/b/f;)V

    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;

    invoke-direct {p1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$g$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$g;)V

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;->a(Lcom/njpwworld/NJPWWORLD/d/e$b;)V

    return-void
.end method
