.class Lcom/njpwworld/NJPWWORLD/view/b/g$3$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/g$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/g$3;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/g$3;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$3$3;->a:Lcom/njpwworld/NJPWWORLD/view/b/g$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$3$3;->a:Lcom/njpwworld/NJPWWORLD/view/b/g$3;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/g$3;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$3$3;->a:Lcom/njpwworld/NJPWWORLD/view/b/g$3;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/g$3;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f01000c

    const v0, 0x7f01000d

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
