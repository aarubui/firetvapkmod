.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;
.super Ljava/lang/Object;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

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

    .line 216
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "playheadPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "currentTime":I
    iget-object v1, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, "d":I
    const v2, 0x2bf20

    .line 221
    .local v2, "historyInterval":I
    div-int/lit16 v3, v0, 0x3e8

    .line 223
    .local v3, "currentMilliTime":I
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v4, v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prevousTime:I

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v4, v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prevousTime:I

    sub-int v4, v3, v4

    const/16 v5, 0x1d

    if-le v4, v5, :cond_0

    .line 224
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordMinutes()V

    .line 225
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iput v3, v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prevousTime:I

    .line 228
    :cond_0
    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v4, v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prTime:I

    sub-int v4, v3, v4

    const/16 v5, 0x3c

    if-le v4, v5, :cond_1

    .line 229
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iput v3, v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prTime:I

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pr Time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v5, v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EventMinute"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordEventMinute()V

    .line 232
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordRebateMin()V

    .line 236
    :cond_1
    const v4, 0xea60

    if-le v0, v4, :cond_2

    const v4, 0xdbba0

    if-le v1, v4, :cond_2

    rem-int v4, v0, v2

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget-object v4, v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should Record ; Current Time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecordHistory"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordHistory(I)V

    .line 239
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    div-int/lit16 v5, v0, 0x3e8

    div-int/lit16 v6, v1, 0x3e8

    invoke-virtual {v4, v5, v6}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordMemberHistory(II)V

    .line 241
    :cond_2
    return-void
.end method
