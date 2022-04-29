.class public Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;
.super Ljava/lang/Object;
.source "RecommendationsRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendationsRepository"


# instance fields
.field private final recommendationImagesRepository:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

.field private final recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Luk/co/uktv/dave/recommendations/data/Database;->getInstance(Landroid/content/Context;)Luk/co/uktv/dave/recommendations/data/Database;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/uktv/dave/recommendations/data/Database;->recommendations()Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    .line 20
    new-instance v0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    invoke-direct {v0, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationImagesRepository:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    return-void
.end method


# virtual methods
.method public insertNew(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendationCandidates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;)",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/uktv/dave/recommendations/data/Recommendation;

    .line 71
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-virtual {v1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;->existsByHouseNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-interface {v2, v1}, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;->insert(Luk/co/uktv/dave/recommendations/data/Recommendation;)J

    move-result-wide v1

    .line 76
    iget-object v3, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-interface {v3, v1, v2}, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;->findByRowId(J)Luk/co/uktv/dave/recommendations/data/Recommendation;

    move-result-object v1

    .line 77
    sget-object v2, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public removeOutdated(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendationCandidates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;)",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v1, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository$$ExternalSyntheticLambda0;->INSTANCE:Luk/co/uktv/dave/recommendations/data/RecommendationsRepository$$ExternalSyntheticLambda0;

    .line 27
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 28
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 30
    iget-object v1, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-interface {v1, p1}, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;->findAllExcluding(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/uktv/dave/recommendations/data/Recommendation;

    .line 31
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-interface {v2, v1}, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;->delete(Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    .line 32
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationImagesRepository:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    invoke-virtual {v2, v1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->deleteImage(Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    .line 33
    sget-object v2, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateChanged(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendationCandidates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;)",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/uktv/dave/recommendations/data/Recommendation;

    .line 45
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-virtual {v1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;->findByHouseNumber(Ljava/lang/String;)Luk/co/uktv/dave/recommendations/data/Recommendation;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/uktv/dave/recommendations/data/Recommendation;->setTitle(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/uktv/dave/recommendations/data/Recommendation;->setDescription(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    iget-object v3, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationImagesRepository:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    invoke-virtual {v3, v2}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->deleteImage(Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v2, v3}, Luk/co/uktv/dave/recommendations/data/Recommendation;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {v1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->setImageUrl(Ljava/lang/String;)V

    .line 59
    :cond_1
    iget-object v1, p0, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->recommendationsDatabase:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-interface {v1, v2}, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;->update(Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    .line 60
    sget-object v1, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
