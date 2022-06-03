.class public Lcom/utv/tv/TvInputService$1;
.super Landroid/media/tv/TvInputService$Session;
.source "TvInputService.java"

# interfaces
.implements Lcom/arcvideo/MediaPlayer/ArcMediaPlayer$OnErrorListener;
.implements Lcom/arcvideo/MediaPlayer/ArcMediaPlayer$OnPreparedListener;
.implements Lcom/utv/http/RequestListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

.field private mSurface:Landroid/view/Surface;

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/utv/tv/TvInputService$1;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/utv/tv/TvInputService$1;->mVolume:F

    return-void
.end method

.method static synthetic access$000(Lcom/utv/tv/TvInputService$1;)V
    .locals 0

    invoke-virtual {p0}, Lcom/utv/tv/TvInputService$1;->notifyVideoAvailable()V

    return-void
.end method

.method static synthetic access$100(Lcom/utv/tv/TvInputService$1;)V
    .locals 1

    const/16 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/utv/tv/TvInputService$1;->notifyVideoUnavailable(I)V

    return-void
.end method

.method private initPlayer()Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/utv/tv/TvInputService$1;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MV3Plugin.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    invoke-direct {v0}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setOnPreparedListener(Lcom/arcvideo/MediaPlayer/ArcMediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setConfigFile(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/utv/util/Constant;->accessKey:Ljava/lang/String;

    sget-object v3, Lcom/utv/util/Constant;->secretKey:Ljava/lang/String;

    sget-object v4, Lcom/utv/util/Constant;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->validate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/utv/tv/TvInputService$2;

    invoke-direct {v1, p0}, Lcom/utv/tv/TvInputService$2;-><init>(Lcom/utv/tv/TvInputService$1;)V

    invoke-virtual {v0, v1}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setOnInfoListener(Lcom/arcvideo/MediaPlayer/ArcMediaPlayer$OnInfoListener;)V

    iget-object v1, p0, Lcom/utv/tv/TvInputService$1;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget v1, p0, Lcom/utv/tv/TvInputService$1;->mVolume:F

    invoke-virtual {v0, v1, v1}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setVolume(FF)V

    iput-object v0, p0, Lcom/utv/tv/TvInputService$1;->mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public onError(Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/utv/tv/TvInputService$1;->notifyVideoUnavailable(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/utv/tv/TvInputService$1;->mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    invoke-virtual {v0}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->start()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/utv/tv/TvInputService$1;->mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    invoke-virtual {v0}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->release()V

    return-void
.end method

.method public onSetCaptionEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onSetStreamVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/utv/tv/TvInputService$1;->mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p1}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setVolume(FF)V

    :cond_0
    iput p1, p0, Lcom/utv/tv/TvInputService$1;->mVolume:F

    return-void
.end method

.method public onSetSurface(Landroid/view/Surface;)Z
    .locals 1

    iget-object v0, p0, Lcom/utv/tv/TvInputService$1;->mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iput-object p1, p0, Lcom/utv/tv/TvInputService$1;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    return v0
.end method

.method public onTune(Landroid/net/Uri;)Z
    .locals 8

    iget-object v0, p0, Lcom/utv/tv/TvInputService$1;->mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->reset()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/utv/tv/TvInputService$1;->initPlayer()Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->reset()V

    iget-object v2, p0, Lcom/utv/tv/TvInputService$1;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "internal_provider_data"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lcom/utv/http/entity/StringReqEntity;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v2, v4}, Lcom/utv/http/entity/StringReqEntity;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, ""

    const-string v2, "mLiveChannel"

    invoke-static {v0, p0, v1, v2}, Lcom/utv/http/RequestManager;->postEPGDS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->notifyContentAllowed()V

    return v1
.end method

.method public requestError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/utv/tv/TvInputService$1;->notifyVideoUnavailable(I)V

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
    .locals 6

    const-string p1, "data"

    .line 1087
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1088
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 1089
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/utv/bean/MLiveChannelBean;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/utv/bean/MLiveChannelBean;

    invoke-virtual {p2}, Lcom/utv/bean/MLiveChannelBean;->getDetail()Lcom/utv/bean/MLiveChannelDetailBean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1116
    invoke-virtual {p2}, Lcom/utv/bean/MLiveChannelDetailBean;->getLivePlayurls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/utv/bean/LivePlayurlsBean;

    invoke-virtual {v0}, Lcom/utv/bean/LivePlayurlsBean;->getPlayurl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "User-Agent"

    const-string v4, "Arcvideo Player/3.5"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Referer"

    const-string v4, "Arcvideo Sample Player"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/utv/tv/TvInputService$1;->mPlayer:Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;

    invoke-virtual {p1, v1, v2}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const v1, 0x50000f9

    invoke-virtual {v0}, Lcom/utv/bean/LivePlayurlsBean;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setUserInfo(ILjava/lang/String;)V

    const v1, 0x50000fa

    invoke-virtual {v0}, Lcom/utv/bean/LivePlayurlsBean;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setUserInfo(ILjava/lang/String;)V

    const v1, 0x50000f4

    invoke-virtual {p2}, Lcom/utv/bean/MLiveChannelDetailBean;->getEncryptType()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->setConfig(II)V

    invoke-virtual {p1}, Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;->prepareAsync()V

    :cond_0
    return-void
.end method

.method public requestXmlSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
