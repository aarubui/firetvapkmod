.class Lcom/njpwworld/NJPWWORLD/view/a/d$5;
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->f(Lcom/njpwworld/NJPWWORLD/view/a/d;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1, v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Lcom/njpwworld/NJPWWORLD/view/a/d;I)I

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$5;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->f(Lcom/njpwworld/NJPWWORLD/view/a/d;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->b(Lcom/njpwworld/NJPWWORLD/view/a/d;I)V

    return-void
.end method
