.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;
.super Ljava/lang/Object;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->setupIMA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 387
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/brightcove/player/event/Event;
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .line 393
    :try_start_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "tracks"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 394
    .local v0, "tracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iput-object v0, v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->trackss:Ljava/util/List;

    .line 395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "yue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "track"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v3}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$500(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v3

    const-string v4, "selectAudioTrack"

    invoke-interface {v3, v4, v2}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v2    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "tracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$1100(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wrong type of TRACKS in AudioTracks event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :goto_1
    return-void
.end method
