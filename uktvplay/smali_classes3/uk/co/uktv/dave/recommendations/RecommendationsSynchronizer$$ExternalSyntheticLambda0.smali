.class public final synthetic Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->lambda$fetchAndProcessRecommendations$0$uk-co-uktv-dave-recommendations-RecommendationsSynchronizer(Lorg/json/JSONArray;)V

    return-void
.end method
