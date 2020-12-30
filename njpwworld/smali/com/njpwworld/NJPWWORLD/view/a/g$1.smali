.class Lcom/njpwworld/NJPWWORLD/view/a/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/g;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/g;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/g;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/g;->dismiss()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/g$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/g;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/g;->a(Lcom/njpwworld/NJPWWORLD/view/a/g;)Lcom/njpwworld/NJPWWORLD/view/a/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/g$a;->a()V

    return-void
.end method
