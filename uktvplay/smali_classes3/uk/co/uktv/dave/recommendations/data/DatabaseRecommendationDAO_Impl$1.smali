.class Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "DatabaseRecommendationDAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Luk/co/uktv/dave/recommendations/data/Recommendation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$1;->this$0:Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 33
    check-cast p2, Luk/co/uktv/dave/recommendations/data/Recommendation;

    invoke-virtual {p0, p1, p2}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getPmrId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 42
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 53
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :goto_2
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `recommendations` (`pmrId`,`house_number`,`title`,`description`,`image_url`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
