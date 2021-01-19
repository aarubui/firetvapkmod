.class public Luk/co/uktv/dave/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDrmSessionManager(Ljava/lang/String;Ljava/util/UUID;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 8
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p3, "licenseUrl"    # Ljava/lang/String;
    .param p4, "keyRequestPropertiesArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 89
    :goto_0
    return-object v4

    .line 82
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p0, v4}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v3, p3, v0}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 83
    .local v3, "drmCallback":Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;
    if-eqz p4, :cond_1

    .line 84
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_1

    .line 85
    aget-object v0, p4, v7

    add-int/lit8 v1, v7, 0x1

    aget-object v1, p4, v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 89
    .end local v7    # "i":I
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    move-object v1, p1

    move-object v5, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V

    move-object v4, v0

    goto :goto_0
.end method

.method public static createExoPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "licenseAcquisitionUrl"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 43
    .local v0, "bandwidthMeter":Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    new-instance v7, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 44
    .local v7, "videoTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 45
    .local v6, "trackSelector":Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    new-instance v5, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 47
    .local v5, "loadControl":Lcom/google/android/exoplayer2/LoadControl;
    const/4 v1, 0x0

    .line 48
    .local v1, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v8, 0x0

    new-array v4, v8, [Ljava/lang/String;

    .line 50
    .local v4, "keyRequestPropertiesArray":[Ljava/lang/String;
    :try_start_0
    sget-object v8, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {p2, v8, p3, p1, v4}, Luk/co/uktv/dave/media/Utils;->buildDrmSessionManager(Ljava/lang/String;Ljava/util/UUID;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    :goto_0
    const/4 v8, 0x2

    invoke-static {p0, v6, v5, v1, v8}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    .line 56
    .local v3, "exoPlayer":Lcom/google/android/exoplayer2/SimpleExoPlayer;
    return-object v3

    .line 51
    .end local v3    # "exoPlayer":Lcom/google/android/exoplayer2/SimpleExoPlayer;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDashMediaSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v2, p0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .local v2, "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 70
    .local v3, "chunkSourceFactory":Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-object v0
.end method

.method public static getExtractorMediaSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v2, p0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .local v2, "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 63
    .local v3, "extractorsFactory":Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    return-object v0
.end method
