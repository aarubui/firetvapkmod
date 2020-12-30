.class Lcom/njpwworld/NJPWWORLD/view/b/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/c;->D()V
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->e(Lcom/njpwworld/NJPWWORLD/view/b/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;J)J

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$8;->a:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
