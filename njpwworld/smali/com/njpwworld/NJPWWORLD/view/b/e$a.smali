.class Lcom/njpwworld/NJPWWORLD/view/b/e$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/b/a;

    invoke-interface {v1, p1}, Lcom/njpwworld/NJPWWORLD/b/a;->a(Ljava/lang/String;)Lb/b;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lb/b;)Lb/b;

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->v(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lb/b;

    move-result-object p1

    sget-object p2, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p1, p2}, Lb/b;->a(Lb/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f$a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f$a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->u(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/manager/b/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Ljava/util/Timer;)Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/c/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->m(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/c/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/c/e;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/e$a$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$a$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
