.class public Lcom/njpwworld/NJPWWORLD/b/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 3

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a()Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/b/a;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/c/b;->a()I

    move-result v2

    invoke-interface {v0, v1, p0, p1, v2}, Lcom/njpwworld/NJPWWORLD/b/a;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Lb/b;

    move-result-object p0

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-virtual {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-interface {p0, p1}, Lb/b;->a(Lb/d;)V

    return-void
.end method
