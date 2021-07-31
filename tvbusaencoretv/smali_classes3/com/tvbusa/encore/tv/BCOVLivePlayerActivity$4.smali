.class Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;
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

    .line 275
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .param p1, "event"    # Lcom/brightcove/player/event/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 278
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "playheadPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "currentTime":I
    div-int/lit16 v1, v0, 0x3e8

    .line 283
    .local v1, "currentMilliTime":I
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget v2, v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->prevousTime:I

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget v2, v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->prevousTime:I

    sub-int v2, v1, v2

    const/16 v3, 0x3b

    if-le v2, v3, :cond_0

    .line 284
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->recordLiveMinutes()V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecordTime"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iput v1, v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->prevousTime:I

    .line 288
    :cond_0
    return-void
.end method
