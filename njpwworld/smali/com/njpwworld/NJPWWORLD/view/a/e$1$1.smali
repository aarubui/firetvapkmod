.class Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/e$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/e$1;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/a/e;->b(Lcom/njpwworld/NJPWWORLD/view/a/e;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f002a

    const v2, 0x7f0f001d

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/16 p3, 0x5d

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->b(Lcom/njpwworld/NJPWWORLD/view/a/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->b(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->a(Lcom/njpwworld/NJPWWORLD/view/a/e;)Lcom/njpwworld/NJPWWORLD/view/a/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e$a;->a()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object p3, p3, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/a/e;->b(Lcom/njpwworld/NJPWWORLD/view/a/e;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object p2, p2, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/a/e;->b(Lcom/njpwworld/NJPWWORLD/view/a/e;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->a(Lcom/njpwworld/NJPWWORLD/view/a/e;)Lcom/njpwworld/NJPWWORLD/view/a/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e$a;->a()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->dismiss()V

    return-void
.end method
