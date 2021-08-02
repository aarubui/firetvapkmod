.class Lcom/njpwworld/NJPWWORLD/view/b/g$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/g;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/g;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$9;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$9;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$9;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$9;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/g$9;->a:Lcom/njpwworld/NJPWWORLD/view/b/g;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/g$9$1;

    invoke-direct {v1, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/g$9$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/g$9;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/g;->a(Landroid/app/Activity;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V

    return-void
.end method
