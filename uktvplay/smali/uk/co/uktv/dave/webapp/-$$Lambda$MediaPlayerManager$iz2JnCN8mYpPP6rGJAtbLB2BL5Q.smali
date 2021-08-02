.class public final synthetic Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$iz2JnCN8mYpPP6rGJAtbLB2BL5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/webapp/MediaPlayerManager;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/webapp/MediaPlayerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$iz2JnCN8mYpPP6rGJAtbLB2BL5Q;->f$0:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$iz2JnCN8mYpPP6rGJAtbLB2BL5Q;->f$0:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    invoke-static {v0, p1, p2}, Luk/co/uktv/dave/webapp/MediaPlayerManager;->lambda$iz2JnCN8mYpPP6rGJAtbLB2BL5Q(Luk/co/uktv/dave/webapp/MediaPlayerManager;Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method
