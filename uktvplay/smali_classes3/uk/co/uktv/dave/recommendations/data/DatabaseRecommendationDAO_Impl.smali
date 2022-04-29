.class public final Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;
.super Ljava/lang/Object;
.source "DatabaseRecommendationDAO_Impl.java"

# interfaces
.implements Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfRecommendation:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfRecommendation:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfRecommendation:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$1;-><init>(Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__insertionAdapterOfRecommendation:Landroidx/room/EntityInsertionAdapter;

    .line 64
    new-instance v0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$2;-><init>(Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__deletionAdapterOfRecommendation:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 75
    new-instance v0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl$3;-><init>(Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__updateAdapterOfRecommendation:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recommendations"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 125
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 127
    :try_start_0
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__deletionAdapterOfRecommendation:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 128
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 131
    throw p1
.end method

.method public existsByHouseNumber(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "houseNumber"
        }
    .end annotation

    const-string v0, "SELECT EXISTS (SELECT * FROM recommendations WHERE house_number = ?)"

    const/4 v1, 0x1

    .line 325
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 328
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 332
    :goto_0
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 333
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 336
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v3, v1

    .line 345
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 346
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v3

    :catchall_0
    move-exception v1

    .line 345
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 346
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 347
    throw v1
.end method

.method public findAllExcluding(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    move-object/from16 v1, p0

    .line 148
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SELECT * FROM recommendations WHERE house_number NOT IN ("

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 151
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    add-int/2addr v2, v3

    .line 155
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 157
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 159
    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, v1, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 166
    iget-object v0, v1, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "pmrId"

    .line 168
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "house_number"

    .line 169
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    .line 170
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "description"

    .line 171
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "image_url"

    .line 172
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 173
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 177
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 179
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v13, v4

    goto :goto_3

    .line 182
    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .line 185
    :goto_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v14, v4

    goto :goto_4

    .line 188
    :cond_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    .line 191
    :goto_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v15, v4

    goto :goto_5

    .line 194
    :cond_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 197
    :goto_5
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v16, v4

    goto :goto_6

    .line 200
    :cond_5
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 202
    :goto_6
    new-instance v10, Luk/co/uktv/dave/recommendations/data/Recommendation;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Luk/co/uktv/dave/recommendations/data/Recommendation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 207
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 208
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 207
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 208
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 209
    throw v0
.end method

.method public findByHouseNumber(Ljava/lang/String;)Luk/co/uktv/dave/recommendations/data/Recommendation;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "houseNumber"
        }
    .end annotation

    const-string v0, "SELECT * FROM recommendations WHERE house_number = ?"

    const/4 v1, 0x1

    .line 215
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 218
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 222
    :goto_0
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 223
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "pmrId"

    .line 225
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "house_number"

    .line 226
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    .line 227
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "description"

    .line 228
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "image_url"

    .line 229
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 231
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 233
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 235
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 241
    :goto_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    .line 244
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 247
    :goto_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    .line 250
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 253
    :goto_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_4
    move-object v13, v2

    goto :goto_5

    .line 256
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 258
    :goto_5
    new-instance v2, Luk/co/uktv/dave/recommendations/data/Recommendation;

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Luk/co/uktv/dave/recommendations/data/Recommendation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 265
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 264
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 265
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 266
    throw v1
.end method

.method public findByRowId(J)Luk/co/uktv/dave/recommendations/data/Recommendation;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rowId"
        }
    .end annotation

    const-string v0, "SELECT * FROM recommendations WHERE pmrId = ?"

    const/4 v1, 0x1

    .line 272
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 275
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 276
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "pmrId"

    .line 278
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v2, "house_number"

    .line 279
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    .line 280
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "description"

    .line 281
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "image_url"

    .line 282
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 284
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 286
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 288
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v9, v1

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v9, p2

    .line 294
    :goto_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object v10, v1

    goto :goto_1

    .line 297
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v10, p2

    .line 300
    :goto_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object v11, v1

    goto :goto_2

    .line 303
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v11, p2

    .line 306
    :goto_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_3
    move-object v12, v1

    goto :goto_4

    .line 309
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 311
    :goto_4
    new-instance v1, Luk/co/uktv/dave/recommendations/data/Recommendation;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Luk/co/uktv/dave/recommendations/data/Recommendation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 318
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 317
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 318
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 319
    throw p2
.end method

.method public insert(Luk/co/uktv/dave/recommendations/data/Recommendation;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recommendation"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 112
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 114
    :try_start_0
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__insertionAdapterOfRecommendation:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 115
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 119
    throw p1
.end method

.method public update(Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recommendations"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 137
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 139
    :try_start_0
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__updateAdapterOfRecommendation:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 140
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object p1, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/DatabaseRecommendationDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 143
    throw p1
.end method
