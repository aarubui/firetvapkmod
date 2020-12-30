.class public Lcom/njpwworld/NJPWWORLD/b/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a(Z)V

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/b/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->b()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/njpwworld/NJPWWORLD/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v6

    move-object v3, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/njpwworld/NJPWWORLD/b/a;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a(Z)V

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/b/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->b()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v0

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/njpwworld/NJPWWORLD/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v7

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v7}, Lcom/njpwworld/NJPWWORLD/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method
