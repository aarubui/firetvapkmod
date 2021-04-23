.class public Lcom/njpwworld/NJPWWORLD/c/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 6

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/njpwworld/NJPWWORLD/c/a;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method
