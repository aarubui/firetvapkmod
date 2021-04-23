.class Lcom/njpwworld/NJPWWORLD/view/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/d;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "r.kaneko@trifort.jp"

    const-string v0, "trifort01"

    const-string v1, "1"

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/d/f;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/a/d$1$1;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$1$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d$1;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
