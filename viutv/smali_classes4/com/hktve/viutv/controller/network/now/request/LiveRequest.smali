.class public final Lcom/hktve/viutv/controller/network/now/request/LiveRequest;
.super Ljava/lang/Object;
.source "LiveRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hktve/viutv/controller/network/now/request/LiveRequest;",
        "",
        "context",
        "Landroid/content/Context;",
        "channelNo",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "getChannelNo",
        "()Ljava/lang/String;",
        "client",
        "Lcom/squareup/okhttp/OkHttpClient;",
        "getClient",
        "()Lcom/squareup/okhttp/OkHttpClient;",
        "getContext",
        "()Landroid/content/Context;",
        "request",
        "Lrx/Single;",
        "Lcom/hktve/viutv/model/now/network/VideoResp;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final channelNo:Ljava/lang/String;

.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$cuuCXAdf2f9_xtyZ0K8C16GEO3I(Lcom/hktve/viutv/controller/network/now/request/LiveRequest;Lcom/squareup/okhttp/Request;Lrx/SingleSubscriber;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->request$lambda$0(Lcom/hktve/viutv/controller/network/now/request/LiveRequest;Lcom/squareup/okhttp/Request;Lrx/SingleSubscriber;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelNo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->channelNo:Ljava/lang/String;

    .line 19
    new-instance p1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {p1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-void
.end method

.method private static final request$lambda$0(Lcom/hktve/viutv/controller/network/now/request/LiveRequest;Lcom/squareup/okhttp/Request;Lrx/SingleSubscriber;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_4

    .line 54
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    sget-object v1, Lcom/hktve/viutv/util/NowCheckoutConfig;->instance:Lcom/hktve/viutv/util/NowCheckoutConfig;

    invoke-virtual {v1}, Lcom/hktve/viutv/util/NowCheckoutConfig;->getEnableDrm()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-class p0, Lcom/hktve/viutv/model/now/network/DRMVideoResp;

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hktve/viutv/model/now/network/VideoResp;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-class p0, Lcom/hktve/viutv/model/now/network/NormalVideoResp;

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hktve/viutv/model/now/network/VideoResp;

    .line 63
    :goto_0
    invoke-interface {p0}, Lcom/hktve/viutv/model/now/network/VideoResp;->streamUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "Request Live Fail"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {p2, p0}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getChannelNo()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->channelNo:Ljava/lang/String;

    return-object v0
.end method

.method public final getClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final request()Lrx/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single<",
            "Lcom/hktve/viutv/model/now/network/VideoResp;",
            ">;"
        }
    .end annotation

    const-string v0, "application/json; charset=utf-8"

    .line 22
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"callerReferenceNo\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {}, Lcom/hktve/viutv/util/Util;->getCallReferenceNumber()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"channelno\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v4, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->channelNo:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"mode\":\"prod\",\"deviceType\":\"b\",\"deviceId\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v4, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/hktve/viutv/util/Util;->getSession(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"format\":\"HLS\"}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    sget-object v5, Lcom/hktve/viutv/util/NowCheckoutConfig;->instance:Lcom/hktve/viutv/util/NowCheckoutConfig;

    invoke-virtual {v5}, Lcom/hktve/viutv/util/NowCheckoutConfig;->getEnableDrm()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Lcom/hktve/viutv/util/Util;->getCallReferenceNumber()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v2, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->channelNo:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"contentId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v2, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->channelNo:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"contentType\":\"Channel\",\"mode\":\"prod\",\"deviceType\":\"ANDROID_TV\",\"deviceId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/hktve/viutv/util/Util;->getSession(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 47
    sget-object v2, Lcom/hktve/viutv/util/NowCheckoutConfig;->instance:Lcom/hktve/viutv/util/NowCheckoutConfig;

    invoke-virtual {v2}, Lcom/hktve/viutv/util/NowCheckoutConfig;->getLiveUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/hktve/viutv/controller/network/now/request/LiveRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest$$ExternalSyntheticLambda0;-><init>(Lcom/hktve/viutv/controller/network/now/request/LiveRequest;Lcom/squareup/okhttp/Request;)V

    invoke-static {v1}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    const-string v1, "create<VideoResp> {\n    \u2026y()?.string()))\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method