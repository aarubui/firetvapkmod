.class Lcom/njpwworld/NJPWWORLD/view/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/e;->a(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/a/e$1$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/e$1;)V

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/b/a/f;->a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/e;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->b(Lcom/njpwworld/NJPWWORLD/view/a/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
