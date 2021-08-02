.class Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;
.super Ljava/lang/Object;
.source "BCOVLivePlayerActivity.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->playThisChannel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 7
    .param p1, "event"    # Lcom/brightcove/player/event/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$700(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getVideoDisplay()Lcom/brightcove/player/display/VideoDisplayComponent;

    move-result-object v0

    .line 254
    .local v0, "videoDisplayComponent":Lcom/brightcove/player/display/VideoDisplayComponent;
    instance-of v1, v0, Lcom/brightcove/player/display/ExoPlayerVideoDisplayComponent;

    if-eqz v1, :cond_0

    .line 256
    move-object v1, v0

    check-cast v1, Lcom/brightcove/player/display/ExoPlayerVideoDisplayComponent;

    invoke-virtual {v1}, Lcom/brightcove/player/display/ExoPlayerVideoDisplayComponent;->getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    .line 257
    .local v1, "exoPlayer":Lcom/google/android/exoplayer2/ExoPlayer;
    instance-of v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    .line 259
    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 260
    .local v2, "simpleExoPlayer":Lcom/google/android/exoplayer2/SimpleExoPlayer;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v3}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$800(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "READY TO PLAY - 2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "ua":Ljava/lang/String;
    const-string v4, "SSAI-UA"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget-object v5, v5, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v4

    .line 264
    .local v4, "source":Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 265
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 266
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v5}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$900(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 267
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v5}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$1000(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 268
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v5}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$1100(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v5

    const-string v6, "enterFullScreen"

    invoke-interface {v5, v6}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 272
    .end local v1    # "exoPlayer":Lcom/google/android/exoplayer2/ExoPlayer;
    .end local v2    # "simpleExoPlayer":Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .end local v3    # "ua":Ljava/lang/String;
    .end local v4    # "source":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_0
    return-void
.end method
