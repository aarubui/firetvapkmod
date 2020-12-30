.class final Lcom/njpwworld/NJPWWORLD/b/a/e$2;
.super Lrx/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/b/a/e;->a(Ljava/util/ArrayList;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j<",
        "Lcom/njpwworld/NJPWWORLD/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/manager/b/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$2;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$2;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$2;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/njpwworld/NJPWWORLD/a/h;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$2;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a()V

    return-void
.end method

.method public synthetic a_(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/b/a/e$2;->a(Lcom/njpwworld/NJPWWORLD/a/h;)V

    return-void
.end method
