.class final Lcom/njpwworld/NJPWWORLD/view/b/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/f;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f;Lcom/njpwworld/NJPWWORLD/view/b/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/f$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->e(Lcom/njpwworld/NJPWWORLD/view/b/f;)J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p3, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Lcom/njpwworld/NJPWWORLD/view/b/f;J)J

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->l()V

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/e;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "1"

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->j()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "1"

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-class p4, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-direct {p1, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-class p4, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p1, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    new-instance p3, Landroid/os/Handler;

    iget-object p4, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {p4}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/njpwworld/NJPWWORLD/view/b/f$a$1;

    invoke-direct {p4, p0, p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/f$a$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f$a;Landroid/os/Handler;Landroid/content/Intent;Lcom/njpwworld/NJPWWORLD/a/e;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/bj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/f$a;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V

    return-void
.end method
