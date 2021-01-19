.class public Luk/co/uktv/dave/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;,
        Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field private static sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mError:Luk/co/uktv/dave/media/Error;

.field private mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private mId:Ljava/lang/String;

.field private mMediaPlayerListener:Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

.field private mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private mPlayheadPositionHandler:Luk/co/uktv/dave/media/PlayheadPositionHandler;

.field private mPosition:J

.field private mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field private mStoredPlayhead:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "exoPlayer"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p4, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 45
    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Luk/co/uktv/dave/media/MediaPlayer;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;J)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "exoPlayer"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p4, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p5, "initialPosition"    # J

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mStoredPlayhead:J

    .line 48
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 50
    iput-object p4, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 51
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->IDLE:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 52
    iput-object p2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 53
    iput-wide p5, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPosition:J

    .line 54
    new-instance v0, Luk/co/uktv/dave/media/PlayheadPositionHandler;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {v0, v1, p0}, Luk/co/uktv/dave/media/PlayheadPositionHandler;-><init>(Lcom/google/android/exoplayer2/ExoPlayer;Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;)V

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPlayheadPositionHandler:Luk/co/uktv/dave/media/PlayheadPositionHandler;

    .line 55
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 56
    return-void
.end method

.method private notifyPlayheadUpdate()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaPlayerListener:Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaPlayerListener:Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

    iget-wide v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPosition:J

    invoke-interface {v0, p0, v2, v3}, Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;->onPlayheadUpdate(Luk/co/uktv/dave/media/MediaPlayer;J)V

    .line 216
    :cond_0
    return-void
.end method

.method private notifyState()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaPlayerListener:Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaPlayerListener:Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-interface {v0, p0, v1}, Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;->onPlaybackStateChange(Luk/co/uktv/dave/media/MediaPlayer;Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    .line 211
    :cond_0
    return-void
.end method

.method private setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V
    .locals 1
    .param p1, "newState"    # Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .prologue
    .line 197
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PLAYING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPlayheadPositionHandler:Luk/co/uktv/dave/media/PlayheadPositionHandler;

    invoke-virtual {v0}, Luk/co/uktv/dave/media/PlayheadPositionHandler;->start()V

    .line 202
    :goto_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 204
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayer;->notifyState()V

    .line 206
    :cond_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPlayheadPositionHandler:Luk/co/uktv/dave/media/PlayheadPositionHandler;

    invoke-virtual {v0}, Luk/co/uktv/dave/media/PlayheadPositionHandler;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer;->sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;

    if-ne v0, p0, :cond_0

    .line 179
    sput-object v1, Luk/co/uktv/dave/media/MediaPlayer;->sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;

    .line 181
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPlayheadPositionHandler:Luk/co/uktv/dave/media/PlayheadPositionHandler;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPlayheadPositionHandler:Luk/co/uktv/dave/media/PlayheadPositionHandler;

    invoke-virtual {v0}, Luk/co/uktv/dave/media/PlayheadPositionHandler;->cleanup()V

    .line 183
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPlayheadPositionHandler:Luk/co/uktv/dave/media/PlayheadPositionHandler;

    .line 185
    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 187
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 189
    :cond_2
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 191
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaPlayerListener:Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

    .line 192
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 193
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 194
    iput-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mError:Luk/co/uktv/dave/media/Error;

    .line 195
    return-void
.end method

.method public getError()Luk/co/uktv/dave/media/Error;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mError:Luk/co/uktv/dave/media/Error;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPosition:J

    return-wide v0
.end method

.method public getState()Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    return-object v0
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    .line 104
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError: onPlayerError error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v0, :pswitch_data_0

    .line 115
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Luk/co/uktv/dave/media/Error;->Generic:Luk/co/uktv/dave/media/Error;

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mError:Luk/co/uktv/dave/media/Error;

    .line 118
    :goto_0
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->ERROR:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    .line 119
    return-void

    .line 107
    :pswitch_0
    sget-object v0, Luk/co/uktv/dave/media/Error;->Decode:Luk/co/uktv/dave/media/Error;

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mError:Luk/co/uktv/dave/media/Error;

    .line 108
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v1

    invoke-static {v0, v1}, Luk/co/uktv/dave/media/ErrorUtils;->getMappedSourceError(Landroid/content/Context;Ljava/lang/Exception;)Luk/co/uktv/dave/media/Error;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mError:Luk/co/uktv/dave/media/Error;

    .line 112
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mapped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mError:Luk/co/uktv/dave/media/Error;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 76
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer;->sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;

    if-eq v0, p0, :cond_0

    .line 77
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ignoring state change as not active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 80
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onPlayerStateChanged: Player is idle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :pswitch_1
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onPlayerStateChanged: Player is buffering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->IDLE:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PREPARING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->BUFFERING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Player is ready in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mState:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz p1, :cond_2

    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PLAYING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    :goto_1
    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    goto :goto_0

    :cond_2
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PAUSED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    goto :goto_1

    .line 97
    :pswitch_3
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onPlayerStateChanged: Player is ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->COMPLETED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 67
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 69
    return-void
.end method

.method public onUpdate(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 60
    iget-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPosition:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 61
    iput-wide p1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mPosition:J

    .line 62
    invoke-direct {p0}, Luk/co/uktv/dave/media/MediaPlayer;->notifyPlayheadUpdate()V

    .line 64
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mStoredPlayhead:J

    .line 153
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 154
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PAUSED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    .line 156
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Luk/co/uktv/dave/media/MediaPlayer;->playFrom(J)V

    .line 137
    return-void
.end method

.method public playFrom(J)V
    .locals 3
    .param p1, "from"    # J

    .prologue
    .line 139
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer;->sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;

    if-eq v0, p0, :cond_0

    .line 141
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": setting self as active and preparing media source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sput-object p0, Luk/co/uktv/dave/media/MediaPlayer;->sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;

    .line 143
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 145
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 146
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 148
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer;->sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;

    if-eq v0, p0, :cond_1

    .line 160
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 161
    iget-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mStoredPlayhead:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-wide v2, p0, Luk/co/uktv/dave/media/MediaPlayer;->mStoredPlayhead:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 164
    :cond_0
    sput-object p0, Luk/co/uktv/dave/media/MediaPlayer;->sActivePlayer:Luk/co/uktv/dave/media/MediaPlayer;

    .line 166
    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 167
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PLAYING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    .line 169
    :cond_2
    return-void
.end method

.method public setMediaPlayerListener(Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;)V
    .locals 0
    .param p1, "mediaPlayerListener"    # Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

    .prologue
    .line 127
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayer;->mMediaPlayerListener:Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;

    .line 128
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 173
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 174
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->STOPPED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/media/MediaPlayer;->setState(Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V

    .line 176
    :cond_0
    return-void
.end method
