.class Lcom/njpwworld/NJPWWORLD/view/a/f$4;
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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$4;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$4;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->dismiss()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$4;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->e(Lcom/njpwworld/NJPWWORLD/view/a/f;)Lcom/njpwworld/NJPWWORLD/view/a/f$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f$b;->b()V

    return-void
.end method
