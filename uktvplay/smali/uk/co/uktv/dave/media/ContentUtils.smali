.class public final Luk/co/uktv/dave/media/ContentUtils;
.super Ljava/lang/Object;
.source "ContentUtils.java"


# static fields
.field private static final MIME_TYPE_DASH:Ljava/lang/String; = "application/dash+xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDrmSessionManager(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 48
    new-instance p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;-><init>()V

    sget-object p1, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    sget-object v1, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    .line 49
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->build(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    invoke-static {}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p0

    return-object p0
.end method

.method public static prepareMediaSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    const v0, 0x7f0d001f

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {p3, v0}, Luk/co/uktv/dave/media/ContentUtils;->buildDrmSessionManager(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p0

    const-string p3, "application/dash+xml"

    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 40
    :goto_0
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p0

    .line 41
    const-string v0, "http://cdn.http.anno.channel4.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :goto_1

    const-wide/16 v0, 0x0

    new-instance p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;-><init>(J)V

    return-object p0

    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0
.end method
