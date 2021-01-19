.class public Luk/co/uktv/dave/media/PlayheadPositionHandler;
.super Landroid/os/Handler;
.source "PlayheadPositionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayheadPositionHandler"

.field private static final UPDATE_INTERVAL_MS:J = 0xfaL


# instance fields
.field private isRunning:Z

.field private mOnUpdateListener:Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;

.field private mPlayer:Lcom/google/android/exoplayer2/ExoPlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer;Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;)V
    .locals 0
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "onUpdateListener"    # Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    iput-object p1, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 19
    iput-object p2, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mOnUpdateListener:Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;

    .line 20
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Luk/co/uktv/dave/media/PlayheadPositionHandler;->stop()V

    .line 48
    iput-object v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 49
    iput-object v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mOnUpdateListener:Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;

    .line 50
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    iget-boolean v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->isRunning:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mOnUpdateListener:Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mOnUpdateListener:Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;

    iget-object v1, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->mPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Luk/co/uktv/dave/media/PlayheadPositionHandler$OnUpdateListener;->onUpdate(J)V

    .line 30
    :goto_0
    const/4 v0, 0x0

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Luk/co/uktv/dave/media/PlayheadPositionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    :goto_1
    return-void

    .line 28
    :cond_0
    const-string v0, "PlayheadPositionHandler"

    const-string v1, "Is running but player is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "PlayheadPositionHandler"

    const-string v1, "Handling message when not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->isRunning:Z

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/media/PlayheadPositionHandler;->sendEmptyMessage(I)Z

    .line 39
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Luk/co/uktv/dave/media/PlayheadPositionHandler;->isRunning:Z

    .line 43
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/media/PlayheadPositionHandler;->removeMessages(I)V

    .line 44
    return-void
.end method
