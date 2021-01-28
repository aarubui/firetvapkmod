.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;
.super Lcom/brightcove/player/edge/VideoListener;
.source "BCOVPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->playThisVideo(I)V
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

    .line 338
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {p0}, Lcom/brightcove/player/edge/VideoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 1
    .param p1, "video"    # Lcom/brightcove/player/model/Video;

    .line 343
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$600(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->clear()V

    .line 344
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$700(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 345
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$800(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 346
    return-void
.end method
