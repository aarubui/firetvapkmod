.class Lcom/njpwworld/NJPWWORLD/view/b/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/SearchBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/f;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/f;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchEditText;->clearFocus()V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nil"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Lcom/njpwworld/NJPWWORLD/view/b/f;)Landroid/support/v17/leanback/widget/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->a()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Lcom/njpwworld/NJPWWORLD/view/b/f;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
