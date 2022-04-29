.class public final Luk/co/uktv/dave/recommendations/data/Database_Impl;
.super Luk/co/uktv/dave/recommendations/data/Database;
.source "Database_Impl.java"


# instance fields
.field private volatile _recommendationDAO:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Luk/co/uktv/dave/recommendations/data/Database;-><init>()V

    return-void
.end method

.method static synthetic access$000(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Luk/co/uktv/dave/recommendations/data/Database_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 32
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Luk/co/uktv/dave/recommendations/data/Database_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/recommendations/data/Database_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Luk/co/uktv/dave/recommendations/data/Database_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 123
    invoke-super {p0}, Luk/co/uktv/dave/recommendations/data/Database;->assertNotMainThread()V

    .line 124
    invoke-super {p0}, Luk/co/uktv/dave/recommendations/data/Database;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 126
    :try_start_0
    invoke-super {p0}, Luk/co/uktv/dave/recommendations/data/Database;->beginTransaction()V

    const-string v3, "DELETE FROM `recommendations`"

    .line 127
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    invoke-super {p0}, Luk/co/uktv/dave/recommendations/data/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-super {p0}, Luk/co/uktv/dave/recommendations/data/Database;->endTransaction()V

    .line 131
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 130
    invoke-super {p0}, Luk/co/uktv/dave/recommendations/data/Database;->endTransaction()V

    .line 131
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 116
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "recommendations"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 37
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Luk/co/uktv/dave/recommendations/data/Database_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Luk/co/uktv/dave/recommendations/data/Database_Impl$1;-><init>(Luk/co/uktv/dave/recommendations/data/Database_Impl;I)V

    const-string v2, "2189e3c95d14079a31a5d8a80b67da08"

    const-string v3, "f05fcc528b42f8c726ee214bef1fa3ac"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 110
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMigrationSpecsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/room/migration/Migration;

    .line 154
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    const-class v1, Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    invoke-static {}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method recommendations()Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;
    .locals 1

    .line 159
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->_recommendationDAO:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->_recommendationDAO:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    return-object v0

    .line 162
    :cond_0
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->_recommendationDAO:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->_recommendationDAO:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    .line 166
    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Database_Impl;->_recommendationDAO:Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
