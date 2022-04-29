.class interface abstract Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;
.super Ljava/lang/Object;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/recommendations/data/Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RecommendationDAO"
.end annotation


# virtual methods
.method public abstract delete(Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendations"
        }
    .end annotation
.end method

.method public abstract existsByHouseNumber(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "houseNumber"
        }
    .end annotation
.end method

.method public abstract findAllExcluding(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "excludedHouseNumbers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findByHouseNumber(Ljava/lang/String;)Luk/co/uktv/dave/recommendations/data/Recommendation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "houseNumber"
        }
    .end annotation
.end method

.method public abstract findByRowId(J)Luk/co/uktv/dave/recommendations/data/Recommendation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rowId"
        }
    .end annotation
.end method

.method public abstract insert(Luk/co/uktv/dave/recommendations/data/Recommendation;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendation"
        }
    .end annotation
.end method

.method public abstract update(Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendations"
        }
    .end annotation
.end method
