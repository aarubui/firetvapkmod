.class public Lcom/utv/tv/EpgSyncJobService$1;
.super Ljava/lang/Object;
.source "EpgSyncJobService.java"

# interfaces
.implements Lcom/utv/http/RequestListener;


# instance fields
.field private channelMap:Landroid/util/LongSparseArray;

.field private inputId:Ljava/lang/String;

.field private pending:I

.field private mContext:Lcom/utv/tv/EpgSyncJobService;

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

    invoke-direct {p0}, Lcom/utv/tv/EpgSyncJobService$1;->buildChannelMap()V

    new-instance p1, Lcom/utv/http/entity/StringReqEntity;

    sget-object p2, Lcom/utv/http/RequestManager;->EPGDS_live_URL:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/utv/http/entity/StringReqEntity;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "mLiveHome"

    invoke-static {p1, p0, v0, v0}, Lcom/utv/http/RequestManager;->postEPGDS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadGroups(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "groups"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, p0, Lcom/utv/tv/EpgSyncJobService$1;->pending:I

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/utv/bean/GroupsBean;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/utv/bean/GroupsBean;

    invoke-virtual {v2}, Lcom/utv/bean/GroupsBean;->getJsonUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/utv/http/entity/StringReqEntity;

    invoke-direct {v4, v2, v3}, Lcom/utv/http/entity/StringReqEntity;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "mLiveGroupChannels"

    invoke-static {v4, p0, v3, v3}, Lcom/utv/http/RequestManager;->postEPGDS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildChannelMap()V
    .locals 6

    iget-object v0, p0, Lcom/utv/tv/EpgSyncJobService$1;->mContext:Lcom/utv/tv/EpgSyncJobService;

    invoke-virtual {v0}, Lcom/utv/tv/EpgSyncJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/utv/tv/EpgSyncJobService$1;->inputId:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id"

    const-string v3, "internal_provider_id"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    if-eqz v1, :cond_1

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
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iput-object v2, p0, Lcom/utv/tv/EpgSyncJobService$1;->channelMap:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
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
    .locals 10

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "mLiveHome"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p2}, Lcom/utv/tv/EpgSyncJobService$1;->loadGroups(Lorg/json/JSONObject;)V

    goto :goto_4

    :cond_6
    const-string p1, "channels"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/utv/tv/EpgSyncJobService$1;->mContext:Lcom/utv/tv/EpgSyncJobService;

    invoke-virtual {v0}, Lcom/utv/tv/EpgSyncJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/utv/tv/EpgSyncJobService$1;->inputId:Ljava/lang/String;

    iget-object v2, p0, Lcom/utv/tv/EpgSyncJobService$1;->channelMap:Landroid/util/LongSparseArray;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/utv/bean/ChannelsBean;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/utv/bean/ChannelsBean;

    invoke-virtual {v5, v1}, Lcom/utv/bean/ChannelsBean;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5}, Lcom/utv/bean/ChannelsBean;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    sget-object v7, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v7, v8}, Landroid/util/LongSparseArray;->remove(J)V

    const-string v7, "_id"

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v6, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v5}, Lcom/utv/bean/ChannelsBean;->getPlaying()Lcom/utv/bean/PlayingBean;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/utv/bean/PlayingBean;->toContentValues(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v8, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/utv/tv/EpgSyncJobService$1;->pending:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/utv/tv/EpgSyncJobService$1;->pending:I

    if-gtz p1, :goto_4

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_5

    invoke-virtual {v2, p2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/utv/tv/EpgSyncJobService$1;->mContext:Lcom/utv/tv/EpgSyncJobService;

    iget-object p2, p0, Lcom/utv/tv/EpgSyncJobService$1;->params:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/utv/tv/EpgSyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_4
    return-void
.end method

.method public requestXmlSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
