.class Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;
.super Lcom/brightcove/player/edge/VideoListener;
.source "BCOVLivePlayerActivity.java"


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

    .line 214
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {p0}, Lcom/brightcove/player/edge/VideoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCOVLive"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 4
    .param p1, "video"    # Lcom/brightcove/player/model/Video;

    .line 219
    sget-object v0, Lcom/brightcove/player/model/DeliveryType;->HLS:Lcom/brightcove/player/model/DeliveryType;

    invoke-virtual {p1, v0}, Lcom/brightcove/player/model/Video;->getSourceCollectionByDeliveryType(Lcom/brightcove/player/model/DeliveryType;)Lcom/brightcove/player/model/SourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/model/SourceCollection;->getSources()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 220
    .local v0, "source":Lcom/brightcove/player/model/Source;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$000(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 222
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$100(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 224
    return-void
.end method
