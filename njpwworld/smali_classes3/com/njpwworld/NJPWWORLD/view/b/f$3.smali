.class Lcom/njpwworld/NJPWWORLD/view/b/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/f;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/SearchEditText;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/f;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f;Landroid/support/v17/leanback/widget/SearchEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$3;->b:Lcom/njpwworld/NJPWWORLD/view/b/f;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$3;->a:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$3;->a:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string p2, "\u691c\u7d22"

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
