.class public Lcom/utv/tv/EpgSyncJobService$1;
.super Ljava/lang/Object;
.source "EpgSyncJobService.java"

# interfaces
.implements Lcom/utv/http/RequestListener;


# instance fields
.field private mContext:Lcom/utv/tv/EpgSyncJobService;

.field private inputId:Ljava/lang/String;

.field private params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/utv/tv/EpgSyncJobService;Landroid/app/job/JobParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/utv/tv/EpgSyncJobService$1;->mContext:Lcom/utv/tv/EpgSyncJobService;

    iput-object p2, p0, Lcom/utv/tv/EpgSyncJobService$1;->params:Landroid/app/job/JobParameters;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    const-string p1, "utv.bundle_key_input_id"

    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/utv/tv/EpgSyncJobService$1;->inputId:Ljava/lang/String;

    new-instance p1, Lcom/utv/http/entity/StringReqEntity;

    const-string p2, "https://m-epg.cmishow.com:1443/?s=104&p=mLiveGroupChannels&k=1&v=1&c=1&a=852&i=3&groupId=1567741714880058006"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/utv/http/entity/StringReqEntity;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, ""

    const-string v0, "mLiveGroupChannels"

    invoke-static {p1, p0, p2, v0}, Lcom/utv/http/RequestManager;->postEPGDS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/utv/tv/EpgSyncJobService$1;->mContext:Lcom/utv/tv/EpgSyncJobService;

    iget-object p2, p0, Lcom/utv/tv/EpgSyncJobService$1;->params:Landroid/app/job/JobParameters;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/utv/tv/EpgSyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public requestFinish(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "channels"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/utv/tv/EpgSyncJobService$1;->inputId:Ljava/lang/String;

    invoke-static {v8}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/utv/tv/EpgSyncJobService$1;->mContext:Lcom/utv/tv/EpgSyncJobService;

    invoke-virtual {v0}, Lcom/utv/tv/EpgSyncJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "internal_provider_id"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    move-object v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/utv/bean/ChannelsBean;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/utv/bean/ChannelsBean;

    invoke-virtual {v7, v8}, Lcom/utv/bean/ChannelsBean;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v7}, Lcom/utv/bean/ChannelsBean;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    sget-object v4, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    const-string v4, "_id"

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v5, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v7}, Lcom/utv/bean/ChannelsBean;->getPlaying()Lcom/utv/bean/PlayingBean;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/utv/bean/PlayingBean;->toContentValues(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_5

    sget-object v4, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_1

    invoke-virtual {v2, p2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/utv/tv/EpgSyncJobService$1;->mContext:Lcom/utv/tv/EpgSyncJobService;

    iget-object p2, p0, Lcom/utv/tv/EpgSyncJobService$1;->params:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/utv/tv/EpgSyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public requestXmlSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
