.class Lcom/njpwworld/NJPWWORLD/view/c/a$1;
.super Landroid/support/v17/leanback/widget/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/c/a;->a(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/be$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/njpwworld/NJPWWORLD/view/c/a;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/c/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a$1;->g:Lcom/njpwworld/NJPWWORLD/view/c/a;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/ac;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a$1;->g:Lcom/njpwworld/NJPWWORLD/view/c/a;

    invoke-static {v0, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/c/a;->a(Lcom/njpwworld/NJPWWORLD/view/c/a;Landroid/support/v17/leanback/widget/ac;Z)V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/ac;->setSelected(Z)V

    return-void
.end method
