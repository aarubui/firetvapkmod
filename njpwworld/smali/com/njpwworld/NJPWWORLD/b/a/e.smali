.class public Lcom/njpwworld/NJPWWORLD/b/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/ArrayList;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/njpwworld/NJPWWORLD/a/h;",
            ">;",
            "Lcom/njpwworld/NJPWWORLD/manager/b/b;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->b()Ljava/util/Map;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/a/h;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "original_api"

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/b/a;

    const-string v1, ""

    const-string v2, ""

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v3

    invoke-interface {v0, v11, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/b/a;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Lrx/d;

    move-result-object v0

    :goto_1
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/h;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "o_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/b/a;

    const-string v2, ""

    const-string v3, ""

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/h;->g()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v0, v1

    move-object v1, v11

    invoke-interface/range {v0 .. v10}, Lcom/njpwworld/NJPWWORLD/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/b/a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/h;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v5

    move-object v0, v1

    move-object v1, v11

    invoke-interface/range {v0 .. v5}, Lcom/njpwworld/NJPWWORLD/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lrx/d;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/njpwworld/NJPWWORLD/b/a/e$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/b/a/e$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v12, v0}, Lrx/d;->a(Ljava/lang/Iterable;Lrx/c/f;)Lrx/d;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/b/a/e$2;

    invoke-direct {v1, p1, p0}, Lcom/njpwworld/NJPWWORLD/b/a/e$2;-><init>(Lcom/njpwworld/NJPWWORLD/manager/b/b;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/j;)Lrx/k;

    return-void
.end method
