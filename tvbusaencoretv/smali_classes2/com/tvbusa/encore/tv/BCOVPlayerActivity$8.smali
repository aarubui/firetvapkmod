.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;
.super Ljava/lang/Object;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;


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

    .line 350
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2
    .param p1, "adsManagerLoadedEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;

    .line 353
    const-string v0, "TestIMA"

    const-string v1, "Ads Manager Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$802(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 355
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$800(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 356
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$800(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 357
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$900(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    .line 358
    .local v0, "renderingSettings":Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setFocusSkipButtonWhenAvailable(Z)V

    .line 359
    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setBitrateKbps(I)V

    .line 360
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->access$800(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 361
    return-void
.end method
