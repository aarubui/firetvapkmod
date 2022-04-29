.class Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$2;
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

    .line 64
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$2;->this$0:Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;

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

    .line 64
    check-cast p2, Luk/co/uktv/dave/recommendations/data/Recommendation;

    invoke-virtual {p0, p1, p2}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 2
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

    .line 72
    invoke-virtual {p2}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getPmrId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `recommendations` WHERE `pmrId` = ?"

    return-object v0
.end method
