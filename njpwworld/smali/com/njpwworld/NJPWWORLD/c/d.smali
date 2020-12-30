.class public Lcom/njpwworld/NJPWWORLD/c/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "static:isConnected()"

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/c;->b(Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u306e\u30b9\u30c6\u30fc\u30bf\u30b9\u3092\u53d6\u5f97\u3059\u308b\u3053\u3068\u304c\u51fa\u6765\u306a\u3044"

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/c/c;->a(Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0
.end method
