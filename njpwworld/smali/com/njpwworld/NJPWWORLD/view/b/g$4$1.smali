.class Lcom/njpwworld/NJPWWORLD/view/b/g$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/g$4;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/g$4;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/g$4;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$4$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/g$4;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$4$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$4$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/njpwworld/NJPWWORLD/b/h;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$4$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/g$4;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/g$4;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->b(Lcom/njpwworld/NJPWWORLD/view/b/g;)Landroid/support/v17/leanback/widget/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$4$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/g$4;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/g$4;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {v1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Lcom/njpwworld/NJPWWORLD/view/b/g;Lcom/njpwworld/NJPWWORLD/b/h;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$4$1;->b:Lcom/njpwworld/NJPWWORLD/view/b/g$4;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/g$4;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-static {v1, v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->b(Lcom/njpwworld/NJPWWORLD/view/b/g;Lcom/njpwworld/NJPWWORLD/b/h;)V

    :goto_0
    return-void
.end method
