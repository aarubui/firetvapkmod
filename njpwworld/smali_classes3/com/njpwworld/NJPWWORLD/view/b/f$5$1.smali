.class Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/f$5;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/f$5;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f$5;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/f$5;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/f$5;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/f$5;->b:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->l()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/f$5;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/f$5;->b:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Lcom/njpwworld/NJPWWORLD/view/b/f;)Landroid/support/v17/leanback/widget/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/b;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/f$5;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/f$5;->b:Lcom/njpwworld/NJPWWORLD/view/b/f;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/f$5;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/f$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$5$1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/njpwworld/NJPWWORLD/b/h;

    invoke-static {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/b/f;->a(Lcom/njpwworld/NJPWWORLD/view/b/f;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/b/h;)V

    :cond_0
    return-void
.end method
