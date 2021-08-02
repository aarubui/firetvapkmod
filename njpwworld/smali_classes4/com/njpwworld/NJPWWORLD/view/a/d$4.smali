.class Lcom/njpwworld/NJPWWORLD/view/a/d$4;
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$4;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$4;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->dismiss()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d$4;->a:Lcom/njpwworld/NJPWWORLD/view/a/d;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->g(Lcom/njpwworld/NJPWWORLD/view/a/d;)Lcom/njpwworld/NJPWWORLD/view/a/d$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d$b;->b()V

    return-void
.end method
