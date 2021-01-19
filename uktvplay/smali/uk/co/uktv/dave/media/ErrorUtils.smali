.class public Luk/co/uktv/dave/media/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMappedSourceError(Landroid/content/Context;Ljava/lang/Exception;)Luk/co/uktv/dave/media/Error;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/Exception;

    .prologue
    .line 11
    instance-of v3, p1, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v3, :cond_0

    .line 12
    sget-object v3, Luk/co/uktv/dave/media/Error;->Incompat:Luk/co/uktv/dave/media/Error;

    .line 24
    :goto_0
    return-object v3

    .line 14
    :cond_0
    instance-of v3, p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    .line 16
    sget-object v3, Luk/co/uktv/dave/media/Error;->Format:Luk/co/uktv/dave/media/Error;

    goto :goto_0

    .line 18
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 19
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 20
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 21
    .local v2, "isConnected":Z
    :goto_1
    if-nez v2, :cond_3

    .line 22
    sget-object v3, Luk/co/uktv/dave/media/Error;->Network:Luk/co/uktv/dave/media/Error;

    goto :goto_0

    .line 20
    .end local v2    # "isConnected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 24
    .restart local v2    # "isConnected":Z
    :cond_3
    sget-object v3, Luk/co/uktv/dave/media/Error;->Generic:Luk/co/uktv/dave/media/Error;

    goto :goto_0
.end method
