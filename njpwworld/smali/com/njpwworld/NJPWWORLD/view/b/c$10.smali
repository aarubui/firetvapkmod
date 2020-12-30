.class Lcom/njpwworld/NJPWWORLD/view/b/c$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/c;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$10;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$10;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->b(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$10;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->f(Lcom/njpwworld/NJPWWORLD/view/b/c;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$10;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->g(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$10;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->g(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/support/v17/leanback/widget/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
