.class public interface abstract Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;
.super Ljava/lang/Object;
.source "MediaPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/browser/web/MediaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlaybackStateChangeHandler"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onPlaybackStateChange(Ljava/lang/String;IZJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "state",
            "isPlaying",
            "duration"
        }
    .end annotation
.end method
