.class public Lcom/njpwworld/NJPWWORLD/view/b/e$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field final synthetic f:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    const-string p1, ""

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->b:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->c:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->e:Z

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    const-string p1, ""

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->b:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->c:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->e:Z

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->r(Lcom/njpwworld/NJPWWORLD/view/b/e;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p3}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/njpwworld/NJPWWORLD/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$f;->f:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;

    invoke-direct {v1, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/e$f$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$f;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/c/g;->a(Landroid/app/Activity;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V

    return-void
.end method
