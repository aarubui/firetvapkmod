.class final Lcom/njpwworld/NJPWWORLD/view/b/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$c;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/view/b/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e$c;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$c;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->p(Lcom/njpwworld/NJPWWORLD/view/b/e;)J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p3, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$c;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Lcom/njpwworld/NJPWWORLD/view/b/e;J)J

    instance-of p1, p2, Lcom/njpwworld/NJPWWORLD/b/e;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$c;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$c;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->h(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/b/f;)Lcom/njpwworld/NJPWWORLD/b/f;

    check-cast p2, Lcom/njpwworld/NJPWWORLD/b/e;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$c;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/b/e;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->a(Lcom/njpwworld/NJPWWORLD/view/b/e;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/bj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/e$c;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V

    return-void
.end method
