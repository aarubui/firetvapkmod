.class final Lcom/njpwworld/NJPWWORLD/view/b/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/f;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$b;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f;Lcom/njpwworld/NJPWWORLD/view/b/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/f$b;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V
    .locals 0

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/e;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$b;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->b(Lcom/njpwworld/NJPWWORLD/view/b/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$b;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->c(Lcom/njpwworld/NJPWWORLD/view/b/f;)Landroid/support/v17/leanback/widget/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result p1

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->r()I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$b;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$b;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/f;->d(Lcom/njpwworld/NJPWWORLD/view/b/f;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$b;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {p3}, Lcom/njpwworld/NJPWWORLD/view/b/f;->c(Lcom/njpwworld/NJPWWORLD/view/b/f;)Landroid/support/v17/leanback/widget/b;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Lcom/njpwworld/NJPWWORLD/view/b/f;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/bj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/njpwworld/NJPWWORLD/view/b/f$b;->a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;Landroid/support/v17/leanback/widget/bm$b;Landroid/support/v17/leanback/widget/bj;)V

    return-void
.end method
