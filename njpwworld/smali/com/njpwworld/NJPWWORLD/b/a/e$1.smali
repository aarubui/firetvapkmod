.class final Lcom/njpwworld/NJPWWORLD/b/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/c/f;


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
        "Ljava/lang/Object;",
        "Lrx/c/f<",
        "Lcom/njpwworld/NJPWWORLD/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/njpwworld/NJPWWORLD/a/h;
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    move-object v5, v4

    check-cast v5, Lcom/njpwworld/NJPWWORLD/a/a;

    if-nez v5, :cond_0

    iget-object v4, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/njpwworld/NJPWWORLD/a/h;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcom/njpwworld/NJPWWORLD/a/h;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Lcom/njpwworld/NJPWWORLD/a/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/njpwworld/NJPWWORLD/a/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/njpwworld/NJPWWORLD/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/njpwworld/NJPWWORLD/c/g$a;

    move-result-object v5

    sput-object v5, Lcom/njpwworld/NJPWWORLD/manager/b/a;->d:Lcom/njpwworld/NJPWWORLD/c/g$a;

    check-cast v4, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/h;->h()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/njpwworld/NJPWWORLD/a/e;

    iget-object v7, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v7}, Lcom/njpwworld/NJPWWORLD/a/h;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/njpwworld/NJPWWORLD/a/e;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v4}, Lcom/njpwworld/NJPWWORLD/a/h;->h()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/njpwworld/NJPWWORLD/a/h;->a(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/b/a/e$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/a/h;

    return-object p1
.end method

.method public synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/b/a/e$1;->a([Ljava/lang/Object;)Lcom/njpwworld/NJPWWORLD/a/h;

    move-result-object p1

    return-object p1
.end method
