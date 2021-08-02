.class Luk/co/uktv/dave/media/MediaPlayerView$1;
.super Ljava/lang/Object;
.source "MediaPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/media/MediaPlayerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/media/MediaPlayerView;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/media/MediaPlayerView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 94
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$100(Luk/co/uktv/dave/media/MediaPlayerView;)V

    .line 96
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$200(Luk/co/uktv/dave/media/MediaPlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$500(Luk/co/uktv/dave/media/MediaPlayerView;)Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$500(Luk/co/uktv/dave/media/MediaPlayerView;)Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;

    move-result-object v0

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v1}, Luk/co/uktv/dave/media/MediaPlayerView;->access$200(Luk/co/uktv/dave/media/MediaPlayerView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;->onError(Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 82
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$000(Luk/co/uktv/dave/media/MediaPlayerView;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$100(Luk/co/uktv/dave/media/MediaPlayerView;)V

    .line 87
    :goto_0
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$200(Luk/co/uktv/dave/media/MediaPlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$300(Luk/co/uktv/dave/media/MediaPlayerView;)Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$300(Luk/co/uktv/dave/media/MediaPlayerView;)Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;

    move-result-object v1

    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$200(Luk/co/uktv/dave/media/MediaPlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerView$1;->this$0:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-static {v0}, Luk/co/uktv/dave/media/MediaPlayerView;->access$400(Luk/co/uktv/dave/media/MediaPlayerView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    move v3, p2

    move v4, p1

    invoke-interface/range {v1 .. v6}, Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;->onStateChange(Ljava/lang/String;IZJ)V

    :cond_2
    :goto_1
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
