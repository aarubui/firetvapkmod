.class Lcom/njpwworld/NJPWWORLD/view/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/c;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/c;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/c$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/c$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/c;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/c;->dismiss()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/c$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/c;->a(Lcom/njpwworld/NJPWWORLD/view/a/c;)Lcom/njpwworld/NJPWWORLD/view/a/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/c$a;->a()V

    return-void
.end method
