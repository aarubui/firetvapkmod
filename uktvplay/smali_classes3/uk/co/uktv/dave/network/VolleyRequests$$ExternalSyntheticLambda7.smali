.class public final synthetic Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$Listener;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$Listener;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda7;->f$0:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda7;->f$0:Lcom/android/volley/Response$Listener;

    iget-object v1, p0, Luk/co/uktv/dave/network/VolleyRequests$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Luk/co/uktv/dave/network/VolleyRequests;->lambda$anInBackgroundListener$0(Lcom/android/volley/Response$Listener;Ljava/lang/Object;)V

    return-void
.end method
