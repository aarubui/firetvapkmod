.class public final synthetic Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda2;->f$1:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda2;->f$1:Lcom/android/volley/Response$ErrorListener;

    invoke-static {v0, v1, p1}, Luk/co/uktv/dave/network/VolleyRequests;->lambda$requestForString$5(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method
