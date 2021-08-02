.class public final synthetic Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$rI1zFrDLHkN1wmeqJy1z99r85hE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field public final synthetic f$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

.field public final synthetic f$1:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$rI1zFrDLHkN1wmeqJy1z99r85hE;->f$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iput-object p2, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$rI1zFrDLHkN1wmeqJy1z99r85hE;->f$1:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-void
.end method


# virtual methods
.method public final processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$rI1zFrDLHkN1wmeqJy1z99r85hE;->f$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$rI1zFrDLHkN1wmeqJy1z99r85hE;->f$1:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0, v1, p1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->lambda$setupIMA$4$BCOVPlayerActivity(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Lcom/brightcove/player/event/Event;)V

    return-void
.end method
