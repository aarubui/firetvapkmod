.class Lcom/njpwworld/NJPWWORLD/view/a/d$3;
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->d(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->e(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->d(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->e(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->f(Lcom/njpwworld/NJPWWORLD/view/a/d;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/c/f;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$3$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d$3;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
