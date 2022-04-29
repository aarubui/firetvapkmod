.class public final synthetic Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda0;->f$0:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda0;->f$0:Lcom/android/volley/Response$ErrorListener;

    invoke-static {v0, p1}, Luk/co/uktv/dave/network/VolleyRequests;->lambda$anInBackgroundErrorListener$3(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method
