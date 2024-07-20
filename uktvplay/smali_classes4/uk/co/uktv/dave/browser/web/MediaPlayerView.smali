.class public Luk/co/uktv/dave/browser/web/MediaPlayerView;
.super Landroid/view/SurfaceView;
.source "MediaPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;,
        Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;,
        Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;
    }
.end annotation


# static fields
.field private static final PLAYBACK_POSITION_SAMPLE_INTERVAL_MS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "MediaPlayerView"


# instance fields
.field private exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field private exoPlayerListener:Landroidx/media3/common/Player$Listener;

.field private onPlaybackErrorHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

.field private onPlaybackPositionChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;

.field private onPlaybackStateChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

.field private playbackId:Ljava/lang/String;

.field private playbackMediaItem:Landroidx/media3/common/MediaItem;

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

    .line 61
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 62
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

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->init()V

    return-void
.end method

.method static synthetic access$000(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->stopSamplingPlaybackPosition()V

    return-void
.end method

.method static synthetic access$100(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 21
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackStateChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    return-object p0
.end method

.method static synthetic access$400(Luk/co/uktv/dave/browser/web/MediaPlayerView;)J
    .locals 2

    .line 21
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->getDurationSafely()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->startSamplingPlaybackPosition()V

    return-void
.end method

.method static synthetic access$600(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackErrorHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

    return-object p0
.end method

.method private getDurationSafely()J
    .locals 5

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 228
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x4

    .line 71
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setKeepScreenOn(Z)V

    .line 73
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setZOrderMediaOverlay(Z)V

    .line 74
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 76
    new-instance v0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayerListener:Landroidx/media3/common/Player$Listener;

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

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 224
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->updatePlaybackPosition()V

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    .line 258
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    sget-object p1, Luk/co/uktv/dave/browser/web/MediaPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "Could not sample current position of not active player"

    .line 252
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->stopSamplingPlaybackPosition()V

    return v0
.end method

.method private startSamplingPlaybackPosition()V
    .locals 3

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Luk/co/uktv/dave/browser/web/MediaPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private stopSamplingPlaybackPosition()V
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    return-void
.end method

.method private updatePlaybackPosition()V
    .locals 4

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    iget-object v2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackPositionChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;

    if-nez v3, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    invoke-interface {v3, v2, v0, v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;->onPlaybackPositionChange(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 219
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->dismissPlayback(Ljava/lang/String;)V

    .line 220
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

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 172
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 175
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->clearMediaItems()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackMediaItem:Landroidx/media3/common/MediaItem;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    :cond_1
    return-void
.end method

.method public pauseExoPlayer()V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->pausePlayback(Ljava/lang/String;)V

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

    .line 159
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->updatePlaybackPosition()V

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x0

    .line 161
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public registerExoPlayer()V
    .locals 5

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayerListener:Landroidx/media3/common/Player$Listener;

    .line 191
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    .line 192
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 193
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/ExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 194
    invoke-virtual {p0, v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackMediaItem:Landroidx/media3/common/MediaItem;

    .line 197
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 198
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 199
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-wide v2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 200
    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    iget-wide v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    iget-object v3, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackMediaItem:Landroidx/media3/common/MediaItem;

    .line 202
    invoke-virtual {p0, v0, v1, v2, v3}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->resumePlayback(Ljava/lang/String;JLandroidx/media3/common/MediaItem;)V

    :cond_2
    return-void
.end method

.method public resumePlayback(Ljava/lang/String;JLandroidx/media3/common/MediaItem;)V
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

    .line 143
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 147
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide p1

    iput-wide p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 p2, 0x1

    .line 148
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->startPlayback(Ljava/lang/String;JLandroidx/media3/common/MediaItem;)V

    :goto_0
    return-void
.end method

.method public setOnErrorHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onPlaybackErrorHandler"
        }
    .end annotation

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackErrorHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

    return-void
.end method

.method public setOnStateChangeHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onPlaybackStateChangeHandler"
        }
    .end annotation

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackStateChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    return-void
.end method

.method public setOnTimeUpdateHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onPlaybackPositionChangeHandler"
        }
    .end annotation

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->onPlaybackPositionChangeHandler:Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;

    return-void
.end method

.method public startPlayback(Ljava/lang/String;JLandroidx/media3/common/MediaItem;)V
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

    .line 129
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackId:Ljava/lang/String;

    iput-object p4, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackMediaItem:Landroidx/media3/common/MediaItem;

    .line 132
    invoke-virtual {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->registerExoPlayer()V

    :cond_0
    iput-wide p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 135
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide p1

    iget-wide p3, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->playbackPosition:J

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 136
    invoke-interface {p1, p3, p4}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    .line 137
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->updatePlaybackPosition()V

    :cond_1
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 p2, 0x1

    .line 139
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

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

    .line 166
    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 167
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public unregisterExoPlayer()V
    .locals 2

    .line 207
    invoke-direct {p0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->stopSamplingPlaybackPosition()V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 209
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setVisibility(I)V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 210
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 211
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->clearMediaItems()V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayerListener:Landroidx/media3/common/Player$Listener;

    .line 212
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 213
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    :cond_0
    return-void
.end method
