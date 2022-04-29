.class public final synthetic Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

.field public final synthetic f$1:Luk/co/uktv/dave/recommendations/data/Recommendation;

.field public final synthetic f$2:Lj$/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;Luk/co/uktv/dave/recommendations/data/Recommendation;Lj$/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    iput-object p2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;->f$1:Luk/co/uktv/dave/recommendations/data/Recommendation;

    iput-object p3, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;->f$2:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    iget-object v1, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;->f$1:Luk/co/uktv/dave/recommendations/data/Recommendation;

    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;->f$2:Lj$/util/function/Consumer;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->lambda$loadImage$0$uk-co-uktv-dave-recommendations-data-RecommendationImagesRepository(Luk/co/uktv/dave/recommendations/data/Recommendation;Lj$/util/function/Consumer;Landroid/graphics/Bitmap;)V

    return-void
.end method
