.class public Lcom/njpwworld/NJPWWORLD/c/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 7

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c()Lcom/njpwworld/NJPWWORLD/c/a;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    const/4 v3, 0x1

    aput-object p1, v0, v3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/njpwworld/NJPWWORLD/c/a;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method
