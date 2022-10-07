.class public Luk/co/uktv/dave/browser/web/MediaPlayerView;
.super Landroid/view/SurfaceView;
.source "MediaPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;,
        Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;,
        Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;
    }
.end annotation


# static fields
.field private static final PLAYBACK_POSITION_SAMPLE_INTERVAL_MS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "MediaPlayerView"


# instance fields
.field private exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private exoPlayerListener:Lcom/google/android/exoplayer2/Player$Listener;

.field private onPlaybackErrorHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

.field private onPlaybackPositionChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;

.field private onPlaybackStateChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

.field private playbackId:Ljava/lang/String;

.field private playbackMediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private playbackPosition:J

.field private playbackPositionSampler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$rTNzR4SDLtTw3E1alk_CSU-TVEI(Luk/co/uktv/dave/browser/web/MediaPlayerView;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->samplePlaybackPosition(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->init()V

    return-void
.end method

.method static synthetic access$000(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->stopSamplingPlaybackPosition()V

    return-void
.end method

.method static synthetic access$100(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 27
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;
    .locals 0

    .line 27
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackStateChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    return-object p0
.end method

.method static synthetic access$400(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->startSamplingPlaybackPosition()V

    return-void
.end method

.method static synthetic access$500(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;
    .locals 0

    .line 27
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackErrorHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

    return-object p0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setKeepScreenOn(Z)V

    .line 79
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setZOrderMediaOverlay(Z)V

    .line 80
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 82
    new-instance v0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayerListener:Lcom/google/android/exoplayer2/Player$Listener;

    return-void
.end method

.method private isActivePlayback(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private samplePlaybackPosition(Landroid/os/Message;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 252
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 254
    :cond_0
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->updatePlaybackPosition()V

    .line 261
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1

    .line 255
    :cond_2
    :goto_0
    sget-object p1, Luk/co/uktv/dave/browser/web/MediaPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "Could not sample current position of not active player"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->stopSamplingPlaybackPosition()V

    return v0
.end method

.method private startSamplingPlaybackPosition()V
    .locals 3

    .line 236
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Luk/co/uktv/dave/browser/web/MediaPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private stopSamplingPlaybackPosition()V
    .locals 2

    .line 245
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    return-void
.end method

.method private updatePlaybackPosition()V
    .locals 4

    .line 266
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    .line 270
    iget-object v2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackPositionChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;

    if-nez v3, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {v3, v2, v0, v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;->onPlaybackPositionChange(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 227
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->dismissPlayback(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->unregisterExoPlayer()V

    return-void
.end method

.method public dismissPlayback(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_0

    .line 176
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 177
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->clearMediaItems()V

    :cond_0
    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 180
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackMediaItem:Lcom/google/android/exoplayer2/MediaItem;

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    :cond_1
    return-void
.end method

.method public pausePlayback(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->updatePlaybackPosition()V

    .line 163
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public registerExoPlayer()V
    .locals 5

    .line 186
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v1, :cond_0

    const v1, 0x7f11001e

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 194
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v1

    .line 196
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 197
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 200
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayerListener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 201
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 202
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 203
    invoke-virtual {p0, v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setVisibility(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackMediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 207
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 208
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-wide v2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 209
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public resumePlayback(Ljava/lang/String;JLcom/google/android/exoplayer2/MediaItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "position",
            "mediaItem"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide p1

    iput-wide p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    .line 154
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->startPlayback(Ljava/lang/String;JLcom/google/android/exoplayer2/MediaItem;)V

    :goto_0
    return-void
.end method

.method public setOnPlaybackErrorHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onPlaybackErrorHandler"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackErrorHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

    return-void
.end method

.method public setOnPlaybackPositionChangeHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onPlaybackPositionChangeHandler"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackPositionChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;

    return-void
.end method

.method public setOnPlaybackStateChangeHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onPlaybackStateChangeHandler"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackStateChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    return-void
.end method

.method public startPlayback(Ljava/lang/String;JLcom/google/android/exoplayer2/MediaItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "position",
            "mediaItem"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackMediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 138
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->registerExoPlayer()V

    .line 140
    :cond_0
    iput-wide p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    .line 141
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide p1

    iget-wide p3, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    .line 142
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 143
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->updatePlaybackPosition()V

    .line 145
    :cond_1
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public stopPlayback(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public unregisterExoPlayer()V
    .locals 2

    .line 215
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->stopSamplingPlaybackPosition()V

    .line 216
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 217
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 219
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->clearMediaItems()V

    .line 220
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayerListener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 221
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    :cond_0
    return-void
.end method
