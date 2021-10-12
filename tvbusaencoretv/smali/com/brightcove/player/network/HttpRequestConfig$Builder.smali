.class public Lcom/brightcove/player/network/HttpRequestConfig$Builder;
.super Ljava/lang/Object;
.source "HttpRequestConfig.java"


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
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Forwarded-For"

    const-string v2, "6.47.44.67"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/brightcove/player/drm/CustomerRightsTokenConfig;->empty()Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/network/HttpRequestConfig;)V
    .locals 3
    .param p1, "httpRequestConfig"    # Lcom/brightcove/player/network/HttpRequestConfig;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->access$400(Lcom/brightcove/player/network/HttpRequestConfig;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "X-Forwarded-For"

    const-string v2, "6.47.44.67"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->getQueryParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    .line 90
    invoke-static {p1}, Lcom/brightcove/player/network/HttpRequestConfig;->access$500(Lcom/brightcove/player/network/HttpRequestConfig;)Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    .line 65
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    .line 65
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    .line 65
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brightcove/player/network/HttpRequestConfig$Builder;)Lcom/brightcove/player/drm/CustomerRightsTokenConfig;
    .locals 1
    .param p0, "x0"    # Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    .line 65
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    return-object v0
.end method


# virtual methods
.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 1
    .param p1, "queryParameterKey"    # Ljava/lang/String;
    .param p2, "queryParameterValue"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-object p0
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

    .line 145
    .local p1, "queryParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->queryParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 148
    :cond_0
    return-object p0
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 1
    .param p1, "headerKey"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p0
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

    .line 119
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    :cond_0
    return-object p0
.end method

.method public build()Lcom/brightcove/player/network/HttpRequestConfig;
    .locals 2

    .line 168
    new-instance v0, Lcom/brightcove/player/network/HttpRequestConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/network/HttpRequestConfig;-><init>(Lcom/brightcove/player/network/HttpRequestConfig$Builder;Lcom/brightcove/player/network/HttpRequestConfig$1;)V

    return-object v0
.end method

.method public setBrightcoveAuthorizationToken(Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 0
    .param p1, "brightcoveAuthorizationToken"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->brightcoveAuthorizationToken:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setCustomerRightsTokenConfig(Lcom/brightcove/player/drm/CustomerRightsTokenConfig;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;
    .locals 0
    .param p1, "customerRightsTokenConfig"    # Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    .line 108
    iput-object p1, p0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->customerRightsTokenConfig:Lcom/brightcove/player/drm/CustomerRightsTokenConfig;

    .line 109
    return-object p0
.end method
