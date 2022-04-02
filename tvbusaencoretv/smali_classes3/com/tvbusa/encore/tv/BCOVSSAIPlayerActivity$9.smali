.class Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;
.super Ljava/lang/Object;
.source "BCOVSSAIPlayerActivity.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

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

    .line 301
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "playheadPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, "currentTime":I
    iget-object v1, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, "d":I
    const v2, 0x2bf20

    .line 306
    .local v2, "historyInterval":I
    div-int/lit16 v3, v0, 0x3e8

    .line 308
    .local v3, "currentMilliTime":I
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v4, v4, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prevousTime:I

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v4, v4, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prevousTime:I

    sub-int v4, v3, v4

    const/16 v5, 0x1d

    if-le v4, v5, :cond_0

    .line 309
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordMinutes()V

    .line 310
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iput v3, v4, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prevousTime:I

    .line 313
    :cond_0
    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v4, v4, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prTime:I

    sub-int v4, v3, v4

    const/16 v5, 0x3c

    if-le v4, v5, :cond_1

    .line 314
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iput v3, v4, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prTime:I

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pr Time - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v5, v5, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EventMinute"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordEventMinute()V

    .line 317
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordRebateMin()V

    .line 321
    :cond_1
    const v4, 0xea60

    if-le v0, v4, :cond_2

    const v4, 0xdbba0

    if-le v1, v4, :cond_2

    rem-int v4, v0, v2

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget-object v4, v4, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 322
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

    .line 323
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordHistory(I)V

    .line 324
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$9;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    div-int/lit16 v5, v0, 0x3e8

    div-int/lit16 v6, v1, 0x3e8

    invoke-virtual {v4, v5, v6}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordMemberHistory(II)V

    .line 326
    :cond_2
    return-void
.end method
