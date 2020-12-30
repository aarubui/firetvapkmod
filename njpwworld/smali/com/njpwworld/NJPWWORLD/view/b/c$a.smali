.class final Lcom/njpwworld/NJPWWORLD/view/b/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/c;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/c;Lcom/njpwworld/NJPWWORLD/view/b/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
    .locals 6

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    const p3, 0x7f0a00df

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;J)J

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->e(Lcom/njpwworld/NJPWWORLD/view/b/c;)J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p3, v0

    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;J)J

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    instance-of p1, p2, Lcom/njpwworld/NJPWWORLD/a/j;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/j;

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;Lcom/njpwworld/NJPWWORLD/a/j;)V

    goto/16 :goto_4

    :cond_2
    instance-of p1, p2, Lcom/njpwworld/NJPWWORLD/a/e;

    const p3, 0x7f0f003f

    const p4, 0x7f0f0035

    const v0, 0x7f0f003a

    if-eqz p1, :cond_6

    move-object v4, p2

    check-cast v4, Lcom/njpwworld/NJPWWORLD/a/e;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    invoke-virtual {v5, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p1, "1"

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/e;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "1"

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/e;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p2

    const-class p3, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p2

    const-class p3, Lcom/njpwworld/NJPWWORLD/view/activity/PlaybackOverlayActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    move-object v3, p1

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/njpwworld/NJPWWORLD/view/b/c$a$1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/njpwworld/NJPWWORLD/view/b/c$a$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/c$a;Landroid/os/Handler;Landroid/content/Intent;Lcom/njpwworld/NJPWWORLD/a/e;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_5
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/e;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/e;->t()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-virtual {p2, p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_6
    instance-of p1, p2, Lcom/njpwworld/NJPWWORLD/a/b;

    if-eqz p1, :cond_9

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/b;

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x1

    invoke-virtual {p1, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p4, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p4}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p4

    const v1, 0x7f0f0034

    invoke-virtual {p4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p4, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p4}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->e()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p3

    const p4, 0x7f0f0033

    invoke-virtual {p3, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->d()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :goto_3
    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/bj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/c$a;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V

    return-void
.end method
