.class public final synthetic Lcom/tvbusa/encore/tv/-$$Lambda$BCOVLivePlayerActivity$wgbIluLALrMPqOUX0XJwnN94JgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field public final synthetic f$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVLivePlayerActivity$wgbIluLALrMPqOUX0XJwnN94JgU;->f$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    return-void
.end method


# virtual methods
.method public final processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVLivePlayerActivity$wgbIluLALrMPqOUX0XJwnN94JgU;->f$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-virtual {v0, p1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->lambda$registerErrorEventHandler$0$BCOVLivePlayerActivity(Lcom/brightcove/player/event/Event;)V

    return-void
.end method
