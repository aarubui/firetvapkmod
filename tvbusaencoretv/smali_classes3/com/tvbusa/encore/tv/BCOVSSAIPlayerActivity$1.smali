.class Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;
.super Lcom/brightcove/player/edge/VideoListener;
.source "BCOVSSAIPlayerActivity.java"


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

.field final synthetic val$plugin:Lcom/brightcove/ssai/SSAIComponent;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;Lcom/brightcove/ssai/SSAIComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$plugin"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iput-object p2, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->val$plugin:Lcom/brightcove/ssai/SSAIComponent;

    invoke-direct {p0}, Lcom/brightcove/player/edge/VideoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 3
    .param p1, "video"    # Lcom/brightcove/player/model/Video;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->val$plugin:Lcom/brightcove/ssai/SSAIComponent;

    invoke-virtual {v0, p1}, Lcom/brightcove/ssai/SSAIComponent;->processVideo(Lcom/brightcove/player/model/Video;)V

    .line 207
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->access$000(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 208
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v0, v0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->historyTime:I

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->access$100(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getPlaybackController()Lcom/brightcove/player/controller/VideoPlaybackController;

    move-result-object v0

    .line 210
    .local v0, "playbackController":Lcom/brightcove/player/controller/VideoPlaybackController;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->setAdsDisabled(Z)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v2, v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->historyTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordHistory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->access$200(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v2, v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->historyTime:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/brightcove/player/view/BaseVideoView;->seekTo(I)V

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->setAdsDisabled(Z)V

    .line 215
    .end local v0    # "playbackController":Lcom/brightcove/player/controller/VideoPlaybackController;
    :cond_0
    return-void
.end method
