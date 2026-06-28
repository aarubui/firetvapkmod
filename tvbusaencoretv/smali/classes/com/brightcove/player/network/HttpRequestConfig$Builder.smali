.class public Lcom/brightcove/player/network/HttpRequestConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/network/HttpRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private brightcoveAuthorizationToken:Ljava/lang/String;

.field private customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

.field private queryParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    .line 5
    invoke-static {}, Lcom/brightcove/player/drm/CustomerRightsTokenConfig;->empty()Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/network/HttpRequestConfig;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->access$400(Lcom/brightcove/player/network/HttpRequestConfig;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->getQueryParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    .line 10
    invoke-static {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->access$500(Lcom/brightcove/player/network/HttpRequestConfig;)Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    return-void
.end method

.method public static synthetic access$000(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Lcom/brightcove/player/drm/CustomerRightsTokenConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-object p0
    .line 7
.end method

.method public addQueryParameters(Ljava/util/Map;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/brightcove/player/network/HttpRequestConfig$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    :cond_0
    return-object p0
    .line 9
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-object p0
    .line 7
.end method

.method public addRequestHeaders(Ljava/util/Map;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/brightcove/player/network/HttpRequestConfig$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    :cond_0
    return-object p0
    .line 9
.end method

.method public build()Lcom/brightcove/player/network/HttpRequestConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/brightcove/player/network/HttpRequestConfig;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/network/HttpRequestConfig;-><init>(Lcom/brightcove/player/network/HttpRequestConfig$Builder;Lcom/brightcove/player/network/HttpRequestConfig$1;)V

    .line 5
    return-object v0
    .line 8
.end method

.method public setBrightcoveAuthorizationToken(Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public setCustomerRightsTokenConfig(Lcom/brightcove/player/drm/CustomerRightsTokenConfig;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    .line 2
    return-object p0
    .line 4
.end method
