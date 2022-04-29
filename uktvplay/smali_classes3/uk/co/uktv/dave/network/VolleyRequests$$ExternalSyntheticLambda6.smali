.class public final synthetic Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$ErrorListener;

.field public final synthetic f$1:Lcom/android/volley/VolleyError;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda6;->f$0:Lcom/android/volley/Response$ErrorListener;

    iput-object p2, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda6;->f$1:Lcom/android/volley/VolleyError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda6;->f$0:Lcom/android/volley/Response$ErrorListener;

    iget-object v1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda6;->f$1:Lcom/android/volley/VolleyError;

    invoke-static {v0, v1}, Luk/co/uktv/dave/network/VolleyRequests;->lambda$anInBackgroundErrorListener$2(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method
