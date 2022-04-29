.class Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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

    .line 75
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$3;->this$0:Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 75
    check-cast p2, Luk/co/uktv/dave/recommendations/data/Recommendation;

    invoke-virtual {p0, p1, p2}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Luk/co/uktv/dave/recommendations/data/Recommendation;)V

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

    .line 83
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getPmrId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 84
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :goto_0
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :goto_1
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 95
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 99
    :goto_2
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 100
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 104
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getPmrId()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `recommendations` SET `pmrId` = ?,`house_number` = ?,`title` = ?,`description` = ?,`image_url` = ? WHERE `pmrId` = ?"

    return-object v0
.end method
