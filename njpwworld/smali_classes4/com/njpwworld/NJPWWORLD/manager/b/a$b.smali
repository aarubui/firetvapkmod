.class public Lcom/njpwworld/NJPWWORLD/manager/b/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/manager/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/njpwworld/NJPWWORLD/manager/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b;Lb/m;)V
    .locals 2

    invoke-virtual {p2}, Lb/m;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lb/b;->e()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "beacon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lb/m;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/njpwworld/NJPWWORLD/d/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/njpwworld/NJPWWORLD/d/g$a;

    move-result-object p1

    sput-object p1, Lcom/njpwworld/NJPWWORLD/manager/b/a;->d:Lcom/njpwworld/NJPWWORLD/d/g$a;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-virtual {p2}, Lb/m;->d()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    const-string p2, ""

    :goto_0
    invoke-interface {p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lb/b;->e()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "beacon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    :try_start_0
    invoke-virtual {p2}, Lb/m;->e()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/njpwworld/NJPWWORLD/b/a;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/a;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a()V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    const/4 p2, -0x1

    const-string v0, ""

    const-string v1, ""

    invoke-interface {p1, p2, v0, v1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a(Lb/b;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/manager/b/b;->a()V

    return-void
.end method

.method public a(Lcom/njpwworld/NJPWWORLD/manager/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;->a:Lcom/njpwworld/NJPWWORLD/manager/b/b;

    return-void
.end method
