.class public final Luk/co/uktv/dave/network/VolleyRequests;
.super Ljava/lang/Object;
.source "VolleyRequests.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VolleyRequests"

.field private static instance:Luk/co/uktv/dave/network/VolleyRequests;


# instance fields
.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/network/VolleyRequests;->requestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static anInBackgroundListener(Lcom/android/volley/Response$Listener;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;)",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda3;-><init>(Lcom/android/volley/Response$Listener;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Luk/co/uktv/dave/network/VolleyRequests;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Luk/co/uktv/dave/network/VolleyRequests;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Luk/co/uktv/dave/network/VolleyRequests;->instance:Luk/co/uktv/dave/network/VolleyRequests;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Luk/co/uktv/dave/network/VolleyRequests;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Luk/co/uktv/dave/network/VolleyRequests;-><init>(Landroid/content/Context;)V

    sput-object v1, Luk/co/uktv/dave/network/VolleyRequests;->instance:Luk/co/uktv/dave/network/VolleyRequests;

    .line 34
    :cond_0
    sget-object p0, Luk/co/uktv/dave/network/VolleyRequests;->instance:Luk/co/uktv/dave/network/VolleyRequests;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$anInBackgroundErrorListener$2(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 54
    invoke-interface {p0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic lambda$anInBackgroundErrorListener$3(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda6;-><init>(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$anInBackgroundListener$0(Lcom/android/volley/Response$Listener;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-interface {p0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$anInBackgroundListener$1(Lcom/android/volley/Response$Listener;Ljava/lang/Object;)V
    .locals 2

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda7;-><init>(Lcom/android/volley/Response$Listener;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$requestForJsonArray$6(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lorg/json/JSONArray;)V
    .locals 3

    .line 85
    sget-object v0, Luk/co/uktv/dave/network/VolleyRequests;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully parsed JSONArray, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {p1, p2}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$requestForJsonArray$7(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 89
    sget-object v0, Luk/co/uktv/dave/network/VolleyRequests;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure while requesting JSONArray, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", response="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_1

    .line 91
    invoke-interface {p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$requestForString$4(Ljava/lang/String;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 3

    .line 65
    sget-object v0, Luk/co/uktv/dave/network/VolleyRequests;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully fetched, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {p1, p2}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$requestForString$5(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 69
    sget-object v0, Luk/co/uktv/dave/network/VolleyRequests;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure while requesting, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", response="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public anInBackgroundErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Response$ErrorListener;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorListener"
        }
    .end annotation

    .line 54
    new-instance v0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda0;-><init>(Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method public requestForImage(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, p2, v0}, Luk/co/uktv/dave/network/VolleyRequests;->requestForImage(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public requestForImage(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "listener",
            "errorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v9, Lcom/android/volley/toolbox/ImageRequest;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v9}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public requestForJsonArray(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Luk/co/uktv/dave/network/VolleyRequests;->requestForJsonArray(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public requestForJsonArray(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "listener",
            "errorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/JsonArrayRequest;

    new-instance v2, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p2}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    new-instance p2, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p3}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {v1, p1, v2, p2}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public requestForString(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Luk/co/uktv/dave/network/VolleyRequests;->requestForString(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public requestForString(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "listener",
            "errorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    new-instance v2, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    new-instance p2, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1, p3}, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {v1, p1, v2, p2}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
