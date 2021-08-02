.class Lcom/njpwworld/NJPWWORLD/view/b/e$g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/a/g$a;


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

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$g$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$g;

    iget-object v1, v1, Lcom/njpwworld/NJPWWORLD/view/b/e$g;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->i(Lcom/njpwworld/NJPWWORLD/view/b/e;)Lcom/njpwworld/NJPWWORLD/b/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/view/b/e;->b(Lcom/njpwworld/NJPWWORLD/view/b/e;Lcom/njpwworld/NJPWWORLD/b/f;)Lcom/njpwworld/NJPWWORLD/b/f;

    return-void
.end method
