.class public Lcom/njpwworld/NJPWWORLD/d/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/d/g$a;
    }
.end annotation


# static fields
.field public static a:Lcom/njpwworld/NJPWWORLD/view/a/h;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/njpwworld/NJPWWORLD/d/g$a;
    .locals 7

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/d/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/b;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-wide p0, v3

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_1
    cmp-long v2, p0, v3

    if-eqz v2, :cond_2

    cmp-long p0, v0, p0

    if-gez p0, :cond_2

    sget-object p0, Lcom/njpwworld/NJPWWORLD/d/g$a;->c:Lcom/njpwworld/NJPWWORLD/d/g$a;

    return-object p0

    :cond_2
    cmp-long p0, v5, v3

    if-eqz p0, :cond_3

    cmp-long p0, v0, v5

    if-gez p0, :cond_3

    sget-object p0, Lcom/njpwworld/NJPWWORLD/d/g$a;->b:Lcom/njpwworld/NJPWWORLD/d/g$a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/njpwworld/NJPWWORLD/d/g$a;->a:Lcom/njpwworld/NJPWWORLD/d/g$a;

    return-object p0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5"

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    int-to-double v1, v1

    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x408f400000000000L    # 1000.0

    int-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v5, v5, v7

    add-double/2addr v1, v5

    double-to-int v1, v1

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Activity;Lcom/njpwworld/NJPWWORLD/d/g$a;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/a/h;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/d/g$a;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    :cond_0
    sget-object p1, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->isHidden()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->isVisible()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lcom/njpwworld/NJPWWORLD/d/g;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "TAG"

    invoke-virtual {p1, p0, p2}, Lcom/njpwworld/NJPWWORLD/view/a/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V
    .locals 8

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->d:Lcom/njpwworld/NJPWWORLD/d/g$a;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/d/g$a;->a:Lcom/njpwworld/NJPWWORLD/d/g$a;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h$a;->a()V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/njpwworld/NJPWWORLD/d/g$a;->c:Lcom/njpwworld/NJPWWORLD/d/g$a;

    if-ne v0, v1, :cond_2

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/njpwworld/NJPWWORLD/d/g;->a(Landroid/app/Activity;Lcom/njpwworld/NJPWWORLD/d/g$a;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/njpwworld/NJPWWORLD/d/g$a;->b:Lcom/njpwworld/NJPWWORLD/d/g$a;

    if-ne v0, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Ljava/lang/Long;)J

    move-result-wide v1

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/d/f;->d(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    :cond_3
    const-string v1, "HomeActivity"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
