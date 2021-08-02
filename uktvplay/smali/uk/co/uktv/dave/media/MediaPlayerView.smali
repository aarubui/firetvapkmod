.class public Luk/co/uktv/dave/media/MediaPlayerView;
.super Landroid/view/SurfaceView;
.source "MediaPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;,
        Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackPositionChangeHandler;,
        Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;
    }
.end annotation


# static fields
.field private static final PLAYBACK_POSITION_SAMPLE_INTERVAL_MS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "MediaPlayerView"


# instance fields
.field private exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private exoPlayerEventListener:Lcom/google/android/exoplayer2/Player$EventListener;

.field private onPlaybackErrorHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;

.field private onPlaybackPositionChangeHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackPositionChangeHandler;

.field private onPlaybackStateChangeHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;

.field private playbackId:Ljava/lang/String;

.field private playbackPosition:J

.field private playbackPositionSampler:Landroid/os/Handler;

.field private playbackSourceBuilder:Lj$/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/Function<",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->init()V

    return-void
.end method

.method static synthetic access$000(Luk/co/uktv/dave/media/MediaPlayerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->startSamplingPlaybackPosition()V

    return-void
.end method

.method static synthetic access$100(Luk/co/uktv/dave/media/MediaPlayerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->stopSamplingPlaybackPosition()V

    return-void
.end method

.method static synthetic access$200(Luk/co/uktv/dave/media/MediaPlayerView;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Luk/co/uktv/dave/media/MediaPlayerView;)Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->onPlaybackStateChangeHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;

    return-object p0
.end method

.method static synthetic access$400(Luk/co/uktv/dave/media/MediaPlayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 23
    iget-object p0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$500(Luk/co/uktv/dave/media/MediaPlayerView;)Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->onPlaybackErrorHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;

    return-object p0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x4

    .line 73
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->setKeepScreenOn(Z)V

    .line 75
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->setZOrderMediaOverlay(Z)V

    .line 76
    invoke-virtual {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 78
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayerView$1;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/media/MediaPlayerView$1;-><init>(Luk/co/uktv/dave/media/MediaPlayerView;)V

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayerEventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    return-void
.end method

.method private isActivePlayback(Ljava/lang/String;)Z
    .locals 1

    .line 198
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

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

.method public static synthetic lambda$4MoL1ylYb21CsEqcKrFlEp8f9LE(Luk/co/uktv/dave/media/MediaPlayerView;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Luk/co/uktv/dave/media/MediaPlayerView;->samplePlaybackPosition(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private samplePlaybackPosition(Landroid/os/Message;)Z
    .locals 3

    .line 218
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 220
    :cond_0
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->updatePlaybackPosition()V

    .line 227
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1

    .line 221
    :cond_2
    :goto_0
    sget-object p1, Luk/co/uktv/dave/media/MediaPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "Could not sample current position of not active player"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->stopSamplingPlaybackPosition()V

    return v0
.end method

.method private startSamplingPlaybackPosition()V
    .locals 3

    .line 202
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerView$4MoL1ylYb21CsEqcKrFlEp8f9LE;

    invoke-direct {v2, p0}, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerView$4MoL1ylYb21CsEqcKrFlEp8f9LE;-><init>(Luk/co/uktv/dave/media/MediaPlayerView;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private stopSamplingPlaybackPosition()V
    .locals 2

    .line 211
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPositionSampler:Landroid/os/Handler;

    return-void
.end method

.method private updatePlaybackPosition()V
    .locals 4

    .line 232
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPosition:J

    .line 236
    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Luk/co/uktv/dave/media/MediaPlayerView;->onPlaybackPositionChangeHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackPositionChangeHandler;

    if-nez v3, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    invoke-interface {v3, v2, v0, v1}, Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackPositionChangeHandler;->onPlaybackPositionChange(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 193
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->dismissPlayback(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->unregisterExoPlayer()V

    return-void
.end method

.method public dismissPlayback(Ljava/lang/String;)V
    .locals 2

    .line 154
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackSourceBuilder:Lj$/util/function/Function;

    const-wide/16 v0, 0x0

    .line 160
    iput-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPosition:J

    :cond_1
    return-void
.end method

.method public pausePlayback(Ljava/lang/String;)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Luk/co/uktv/dave/media/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->updatePlaybackPosition()V

    .line 143
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public registerExoPlayer()V
    .locals 5

    .line 165
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-virtual {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 168
    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayerEventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 169
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 170
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 171
    invoke-virtual {p0, v1}, Luk/co/uktv/dave/media/MediaPlayerView;->setVisibility(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackSourceBuilder:Lj$/util/function/Function;

    invoke-virtual {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 175
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-wide v2, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 176
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public resumePlayback(Ljava/lang/String;JLj$/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lj$/util/function/Function<",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Luk/co/uktv/dave/media/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide p1

    iput-wide p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPosition:J

    .line 134
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Luk/co/uktv/dave/media/MediaPlayerView;->startPlayback(Ljava/lang/String;JLj$/util/function/Function;)V

    :goto_0
    return-void
.end method

.method public setOnPlaybackErrorHandler(Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;)V
    .locals 0

    .line 112
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->onPlaybackErrorHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;

    return-void
.end method

.method public setOnPlaybackPositionChangeHandler(Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackPositionChangeHandler;)V
    .locals 0

    .line 108
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->onPlaybackPositionChangeHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackPositionChangeHandler;

    return-void
.end method

.method public setOnPlaybackStateChangeHandler(Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;)V
    .locals 0

    .line 104
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->onPlaybackStateChangeHandler:Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;

    return-void
.end method

.method public startPlayback(Ljava/lang/String;JLj$/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lj$/util/function/Function<",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Luk/co/uktv/dave/media/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackId:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackSourceBuilder:Lj$/util/function/Function;

    .line 119
    invoke-virtual {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->registerExoPlayer()V

    .line 121
    :cond_0
    iput-wide p2, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPosition:J

    .line 122
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide p1

    iget-wide p3, p0, Luk/co/uktv/dave/media/MediaPlayerView;->playbackPosition:J

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    .line 123
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 125
    :cond_1
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public stopPlayback(Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Luk/co/uktv/dave/media/MediaPlayerView;->isActivePlayback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public unregisterExoPlayer()V
    .locals 2

    .line 182
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayerView;->stopSamplingPlaybackPosition()V

    .line 183
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 184
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    .line 186
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayerEventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 187
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_0
    return-void
.end method
