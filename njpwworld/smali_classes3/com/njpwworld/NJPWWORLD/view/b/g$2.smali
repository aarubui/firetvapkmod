.class Lcom/njpwworld/NJPWWORLD/view/b/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/g;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/g;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
    .locals 6

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p3, 0x7f0a00df

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Lcom/njpwworld/NJPWWORLD/view/b/g;J)J

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->c(Lcom/njpwworld/NJPWWORLD/view/b/g;)J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p3, v0

    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Lcom/njpwworld/NJPWWORLD/view/b/g;J)J

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/njpwworld/NJPWWORLD/b/e;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p1, "1"

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/e;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "1"

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/b/e;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class p3, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class p3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    move-object v3, p1

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/njpwworld/NJPWWORLD/view/b/g$2$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g$2;Landroid/os/Handler;Landroid/content/Intent;Lcom/njpwworld/NJPWWORLD/b/e;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/bj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/g$2;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V

    return-void
.end method
