.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;
.super Ljava/lang/Object;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->requestAds()V
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

    .line 509
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 5

    .line 512
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$1200(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v3}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$1300(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brightcove/player/view/BaseVideoView;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v0
.end method
