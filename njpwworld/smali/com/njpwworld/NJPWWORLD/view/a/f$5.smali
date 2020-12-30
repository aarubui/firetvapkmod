.class Lcom/njpwworld/NJPWWORLD/view/a/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/f;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/a/f;->a:Lcom/njpwworld/NJPWWORLD/view/a/b;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/b;->dismiss()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-static {p1, p3}, Lcom/njpwworld/NJPWWORLD/view/a/f;->b(Lcom/njpwworld/NJPWWORLD/view/a/f;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/f;->a:Lcom/njpwworld/NJPWWORLD/view/a/b;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/b;->dismiss()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->f(Lcom/njpwworld/NJPWWORLD/view/a/f;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/c/f;->b(Landroid/content/Context;Z)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->e(Lcom/njpwworld/NJPWWORLD/view/a/f;)Lcom/njpwworld/NJPWWORLD/view/a/f$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f$b;->a()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/f;->a:Lcom/njpwworld/NJPWWORLD/view/a/b;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/b;->dismiss()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->dismiss()V

    return-void
.end method
