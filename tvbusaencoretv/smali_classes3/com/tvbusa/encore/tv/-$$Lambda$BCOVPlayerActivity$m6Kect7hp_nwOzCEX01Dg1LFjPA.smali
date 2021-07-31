.class public final synthetic Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$m6Kect7hp_nwOzCEX01Dg1LFjPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field public final synthetic f$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$m6Kect7hp_nwOzCEX01Dg1LFjPA;->f$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    return-void
.end method


# virtual methods
.method public final processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$m6Kect7hp_nwOzCEX01Dg1LFjPA;->f$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-virtual {v0, p1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->lambda$setupIMA$2$BCOVPlayerActivity(Lcom/brightcove/player/event/Event;)V

    return-void
.end method
