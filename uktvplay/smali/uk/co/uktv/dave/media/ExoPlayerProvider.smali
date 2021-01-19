.class public Luk/co/uktv/dave/media/ExoPlayerProvider;
.super Ljava/lang/Object;
.source "ExoPlayerProvider.java"


# instance fields
.field private mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "laUrl"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1, p2, p3, p4}, Luk/co/uktv/dave/media/Utils;->createExoPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/media/ExoPlayerProvider;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 11
    iget-object v0, p0, Luk/co/uktv/dave/media/ExoPlayerProvider;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 12
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Luk/co/uktv/dave/media/ExoPlayerProvider;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Luk/co/uktv/dave/media/ExoPlayerProvider;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 19
    iget-object v0, p0, Luk/co/uktv/dave/media/ExoPlayerProvider;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/uktv/dave/media/ExoPlayerProvider;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 22
    :cond_0
    return-void
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Luk/co/uktv/dave/media/ExoPlayerProvider;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method
