.class Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/d$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/d$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f002a

    const v2, 0x7f0f001d

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x0

    const/16 p3, 0x5e

    if-eq p1, p3, :cond_1

    const/16 p3, 0x5f

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->c(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/app/Dialog;

    move-result-object p1

    const p3, 0x7f0a00e5

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->b(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/TextView;

    move-result-object p1

    const p3, 0x7f0f007a

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->b(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/njpwworld/NJPWWORLD/a/a;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/njpwworld/NJPWWORLD/a/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/njpwworld/NJPWWORLD/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object v2, v2, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/njpwworld/NJPWWORLD/d/f;->h(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/njpwworld/NJPWWORLD/d/f;->i(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;->c:Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v0, p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;Ljava/lang/Object;)V

    return-void
.end method
