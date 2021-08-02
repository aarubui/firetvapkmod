.class public Lcom/njpwworld/NJPWWORLD/c/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2, v0, p0, p1}, Lcom/njpwworld/NJPWWORLD/c/a;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 6

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p4}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 12

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v2, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v2 .. v11}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object v0

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {v0, v1}, Lb/b;->a(Lb/d;)V

    return-void
.end method
