.class Lcom/njpwworld/NJPWWORLD/view/a/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/f;->b()V
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->b(Lcom/njpwworld/NJPWWORLD/view/a/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/b;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/view/a/b;-><init>()V

    iput-object v0, p1, Lcom/njpwworld/NJPWWORLD/view/a/f;->a:Lcom/njpwworld/NJPWWORLD/view/a/b;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/a/f;->a:Lcom/njpwworld/NJPWWORLD/view/a/b;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->c(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$3;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->d(Lcom/njpwworld/NJPWWORLD/view/a/f;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
