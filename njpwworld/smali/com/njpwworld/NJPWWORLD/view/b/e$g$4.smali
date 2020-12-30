.class Lcom/njpwworld/NJPWWORLD/view/b/e$g$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e$g;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e$g;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$4;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$4;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$4;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object p2, p2, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/a/f;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/a/f;)Lcom/njpwworld/NJPWWORLD/a/f;

    return-void
.end method
