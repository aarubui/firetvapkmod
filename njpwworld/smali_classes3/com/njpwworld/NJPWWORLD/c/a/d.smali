.class public Lcom/njpwworld/NJPWWORLD/c/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/c/a/d$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;I)Lb/b;

    move-result-object v0

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {v1, p0}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {v0, p0}, Lb/b;->a(Lb/d;)V

    return-void
.end method

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

    invoke-interface/range {v1 .. v6}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

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

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/njpwworld/NJPWWORLD/c/a;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 8

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c()Lcom/njpwworld/NJPWWORLD/c/a;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->a:Lcom/njpwworld/NJPWWORLD/c/a/d$a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 7

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "s_"

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    const-string v2, ""

    goto :goto_0

    :goto_1
    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 8

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c()Lcom/njpwworld/NJPWWORLD/c/a;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->b:Lcom/njpwworld/NJPWWORLD/c/a/d$a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 6

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 8

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c()Lcom/njpwworld/NJPWWORLD/c/a;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->c:Lcom/njpwworld/NJPWWORLD/c/a/d$a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 11

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v2, p1

    move-object v3, p2

    move-object v7, p0

    invoke-interface/range {v0 .. v10}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p3}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 8

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c()Lcom/njpwworld/NJPWWORLD/c/a;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->d:Lcom/njpwworld/NJPWWORLD/c/a/d$a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 8

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c()Lcom/njpwworld/NJPWWORLD/c/a;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->e:Lcom/njpwworld/NJPWWORLD/c/a/d$a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 8

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c()Lcom/njpwworld/NJPWWORLD/c/a;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->f:Lcom/njpwworld/NJPWWORLD/c/a/d$a;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
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

    invoke-interface/range {v1 .. v6}, Lcom/njpwworld/NJPWWORLD/c/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/b;->a()I

    move-result v2

    invoke-interface {v0, v1, p0, p1, v2}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method
