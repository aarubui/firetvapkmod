.class public final synthetic Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda5;->f$1:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda5;->f$1:Lcom/android/volley/Response$Listener;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {v0, v1, p1}, Luk/co/uktv/dave/network/VolleyRequests;->lambda$requestForJsonArray$6(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lorg/json/JSONArray;)V

    return-void
.end method
