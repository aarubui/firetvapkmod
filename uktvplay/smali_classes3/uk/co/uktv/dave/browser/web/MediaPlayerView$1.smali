.class Luk/co/uktv/dave/browser/web/MediaPlayerView$1;
.super Ljava/lang/Object;
.source "MediaPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/browser/web/MediaPlayerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onExperimentalSleepingForOffloadChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalSleepingForOffloadChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPlaying"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$400(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$000(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    .line 107
    :goto_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$300(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$300(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    move-result-object v1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$100(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v3

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$100(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;->onPlaybackStateChange(Ljava/lang/String;IZJ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackState"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 89
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$000(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    const/4 v4, 0x0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$100(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$100(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackSuppressionReason()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v4, v0

    .line 94
    :goto_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$300(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$300(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;

    move-result-object v1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$100(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;->onPlaybackStateChange(Ljava/lang/String;IZJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$000(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    .line 116
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$500(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$500(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;

    move-result-object v0

    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-static {v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->access$200(Luk/co/uktv/dave/browser/web/MediaPlayerView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;->onPlaybackError(Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onStaticMetadataChanged(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onStaticMetadataChanged(Lcom/google/android/exoplayer2/Player$EventListener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method
