.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;
.super Lcom/brightcove/player/edge/VideoListener;
.source "BCOVPlayerActivity.java"


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

    .line 175
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {p0}, Lcom/brightcove/player/edge/VideoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/brightcove/player/model/Video;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$000(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 181
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$100(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 182
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v0, v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->historyTime:I

    if-lez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v1, v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->historyTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordHistory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$200(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v1, v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->historyTime:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->seekTo(I)V

    .line 186
    :cond_0
    return-void
.end method
