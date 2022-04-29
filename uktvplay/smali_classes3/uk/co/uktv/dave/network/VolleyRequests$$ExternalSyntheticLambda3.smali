.class public final synthetic Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda3;->f$0:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda3;->f$0:Lcom/android/volley/Response$Listener;

    invoke-static {v0, p1}, Luk/co/uktv/dave/network/VolleyRequests;->lambda$anInBackgroundListener$1(Lcom/android/volley/Response$Listener;Ljava/lang/Object;)V

    return-void
.end method
