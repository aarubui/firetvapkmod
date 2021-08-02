.class public Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adRulesURL:Ljava/lang/String;

.field banner:Ljava/lang/String;

.field client:Lokhttp3/OkHttpClient;

.field episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Episode;",
            ">;"
        }
    .end annotation
.end field

.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field hasHistory:Ljava/lang/Boolean;

.field historyTime:I

.field id:Ljava/lang/String;

.field private mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field mApp:Lcom/tvbusa/encore/tv/MainApplication;

.field private mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

.field private mAudioManager:Landroid/media/AudioManager;

.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field mIsAdDisplayed:Z

.field mIsAdSkippable:Z

.field private mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field numOfPod:I

.field parent:Ljava/lang/String;

.field pid:Ljava/lang/String;

.field prTime:I

.field prevousTime:I

.field selectedIndex:I

.field sss:Ljava/lang/String;

.field trackss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;-><init>()V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->trackss:Ljava/util/List;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->id:Ljava/lang/String;

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    .line 89
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->banner:Ljava/lang/String;

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 93
    iput v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->historyTime:I

    .line 95
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prevousTime:I

    .line 97
    iput v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prTime:I

    .line 102
    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdDisplayed:Z

    .line 103
    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdSkippable:Z

    .line 104
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    .line 107
    const/4 v1, 0x3

    iput v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->numOfPod:I

    .line 110
    sget-object v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 114
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "mAudionManager is null in abandonAudioFocus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v1

    .line 720
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 721
    .local v0, "focus":Z
    if-eqz v0, :cond_2

    .line 722
    sget-object v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 724
    :cond_2
    return v0
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
    .param p1, "x1"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 80
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->requestAds()V

    return-void
.end method

.method static synthetic access$500(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
    .param p1, "x1"    # Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 80
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 80
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object v0
.end method

.method private requestAds()V
    .locals 2

    .line 506
    const-string v0, "TestIMA"

    const-string v1, "Request Ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v0

    .line 508
    .local v0, "request":Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    .line 509
    new-instance v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    .line 515
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    .line 516
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 670
    const-string v0, "CheckAudio"

    const-string v1, "Run Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 672
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudionManager is null in requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void

    .line 675
    :cond_0
    const-string v1, "Running Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 679
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 682
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 683
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 684
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 680
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 686
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$15;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$15;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    .line 687
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 706
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 679
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 712
    :goto_0
    return-void
.end method

.method private setupIMA()V
    .locals 5

    .line 336
    const-string v0, "TestIMA"

    const-string v1, "Setup IMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 338
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    .line 339
    .local v0, "adDisplayContainer":Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V

    .line 340
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v1

    .line 342
    .local v1, "settings":Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v2, p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 343
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 350
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 364
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$9;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$9;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v4, "audioTracks"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 384
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 407
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TESTIMMMA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRESSED KEYPAD - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdDisplayed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TESTIMMA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdDisplayed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdSkippable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_1

    .line 412
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->skip()V

    goto :goto_0

    .line 413
    :cond_1
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdDisplayed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_4

    .line 414
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->finish()V

    .line 419
    goto :goto_0

    .line 421
    :cond_3
    const-string v0, "HOMEBTN"

    const-string v1, "YES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public initMediaController(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 2
    .param p1, "brightcoveVideoView"    # Lcom/brightcove/player/view/BaseVideoView;

    .line 428
    invoke-static {p0}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;->checkTvMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;

    const v1, 0x7f0d00cd

    invoke-direct {v0, p1, v1}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;-><init>(Lcom/brightcove/player/view/BaseVideoView;I)V

    invoke-virtual {p1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setMediaController(Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 2
    .param p1, "adErrorEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Error Event - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestIMA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 3
    .param p1, "adEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdEvent;

    .line 445
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$16;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "TestIMA"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 489
    :pswitch_0
    const-string v0, "Ad Started"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, "AiParams":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "AdImpression"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 494
    goto/16 :goto_0

    .line 486
    .end local v0    # "AiParams":Landroid/os/Bundle;
    :pswitch_1
    const-string v0, "Skipped"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    goto/16 :goto_0

    .line 482
    :pswitch_2
    const-string v0, "Skip State Change"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdSkippable:Z

    .line 484
    goto :goto_0

    .line 475
    :pswitch_3
    const-string v0, "All Ads Completed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    goto :goto_0

    .line 469
    :pswitch_4
    const-string v0, "Content Resume Requested"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdDisplayed:Z

    .line 471
    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdSkippable:Z

    .line 472
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 473
    goto :goto_0

    .line 463
    :pswitch_5
    const-string v0, "Content Pause Requested"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdDisplayed:Z

    .line 465
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->pause()V

    .line 466
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->getDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordAR(II)V

    .line 467
    goto :goto_0

    .line 459
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Request - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    .line 461
    goto :goto_0

    .line 456
    :pswitch_7
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->pause()V

    .line 457
    goto :goto_0

    .line 452
    :pswitch_8
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->pause()V

    .line 453
    goto :goto_0

    .line 449
    :pswitch_9
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    .line 450
    nop

    .line 498
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .line 731
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 735
    goto :goto_0

    .line 738
    :cond_1
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 739
    goto :goto_0

    .line 741
    :cond_2
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 742
    nop

    .line 745
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 142
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->setContentView(I)V

    .line 143
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 145
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 148
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    .line 150
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getVideoAdRule()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getNumOfAdsInPod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->numOfPod:I

    .line 154
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 159
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 160
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->id:Ljava/lang/String;

    .line 161
    const-string v2, "pid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    .line 162
    const-string v2, "episodes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    .line 163
    const-string v2, "parent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    .line 164
    const-string v2, "banner"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->banner:Ljava/lang/String;

    .line 165
    const-string v2, "selectedIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    .line 166
    const-string v2, "hasHistory"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 167
    const-string v2, "historyTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->historyTime:I

    .line 170
    :cond_1
    const v2, 0x7f0a0063

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 171
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->initMediaController(Lcom/brightcove/player/view/BaseVideoView;)V

    .line 173
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 175
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->setupIMA()V

    .line 177
    new-instance v2, Lcom/brightcove/player/edge/Catalog;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v4, 0x7f110026

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f110028

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v2, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;

    invoke-direct {v4, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$1;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 193
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v3, "params":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Program View - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Analytics"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v5, "ProgramViews"

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v6, "completed"

    invoke-interface {v4, v6, v5}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 219
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v6, "progress"

    invoke-interface {v4, v6, v5}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 252
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$4;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$4;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v6, "didSetVideo"

    invoke-interface {v4, v6, v5}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 261
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdDisplayed:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    .line 128
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 130
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 132
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 388
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x59

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    .line 400
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYUP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-super {p0, p1, p2}, Lcom/brightcove/player/view/BrightcovePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 396
    :cond_0
    return v1

    .line 398
    :cond_1
    return v1

    .line 393
    :cond_2
    return v1

    .line 390
    :cond_3
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->finish()V

    .line 391
    return v1
.end method

.method public onPause()V
    .locals 2

    .line 436
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onPause()V

    .line 437
    const-string v0, "HOMEBTN"

    const-string v1, "This is On Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    .line 441
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 289
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 290
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->requestAudioFocus()V

    .line 291
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 295
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 296
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->abandonAudioFocus()Z

    .line 297
    return-void
.end method

.method public playThisVideo(I)V
    .locals 5
    .param p1, "p"    # I

    .line 300
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "TestIMA"

    const-string v1, "Play This Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play This Video - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCOV."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max # Video - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continue to Loop - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    add-int/lit8 p1, p1, -0x1

    .line 309
    iget v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    .line 311
    :cond_0
    new-instance v0, Lcom/brightcove/player/edge/Catalog;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v2, 0x7f110026

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110028

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v0, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$6;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$6;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 323
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v1, "params":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Program View - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Analytics"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v3, "ProgramViews"

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "volume"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v4, "setVolume"

    invoke-interface {v3, v4, v2}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    return-void
.end method

.method public recordAR(II)V
    .locals 8
    .param p1, "time"    # I
    .param p2, "duration"    # I

    .line 519
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 520
    .local v0, "percentage":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; Duration - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; Percentage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestIMA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v1, "AdRequest"

    const-string v3, "name"

    const-string v4, "AR"

    const/16 v5, 0x2710

    if-ge p1, v5, :cond_0

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preroll - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v6, p1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordFirebaseAR()V

    .line 526
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 527
    .local v2, "adParams":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 529
    .end local v2    # "adParams":Landroid/os/Bundle;
    goto :goto_1

    .line 530
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->numOfPod:I

    if-ge v5, v6, :cond_1

    .line 531
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Midroll - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v7, p1, 0x3e8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v6, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 534
    .local v6, "adParams":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v7, v1, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 536
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordFirebaseAR()V

    .line 530
    .end local v6    # "adParams":Landroid/os/Bundle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 539
    .end local v5    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public recordEventMinute()V
    .locals 10

    .line 266
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "token":Ljava/lang/String;
    const-string v2, "firetv"

    .line 269
    .local v2, "ppp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&plat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "params":Ljava/lang/String;
    const-string v4, "https://us-central1-encoretvb-faecb.cloudfunctions.net/fireTvEventMin"

    .line 271
    .local v4, "url":Ljava/lang/String;
    const-string v5, "application/x-www-form-urlencoded"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    .line 272
    .local v6, "mediaType":Lokhttp3/MediaType;
    invoke-static {v6, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 273
    .local v7, "body":Lokhttp3/RequestBody;
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "POST"

    invoke-virtual {v8, v9, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "Content-Type"

    invoke-virtual {v8, v9, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 274
    .local v5, "request":Lokhttp3/Request;
    iget-object v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$5;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$5;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 285
    return-void
.end method

.method public recordFirebaseAR()V
    .locals 11

    .line 542
    const-string v0, "FirebaseAR"

    const-string v1, "Record Now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v1, "UserProfile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 544
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "token":Ljava/lang/String;
    if-nez v2, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Now - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fireTvGenAdRequest"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 550
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 552
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v6, "plat"

    const-string v7, "firetv"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 557
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 559
    .local v7, "body":Lokhttp3/RequestBody;
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "Content-Type"

    invoke-virtual {v8, v9, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v8, "POST"

    invoke-virtual {v0, v8, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 561
    .local v0, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 563
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$11;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$11;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 570
    return-void
.end method

.method public recordHistory(I)V
    .locals 5
    .param p1, "time"    # I

    .line 606
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "SN - Record History - "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordHistory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 610
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    .line 611
    .local v1, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 612
    .local v2, "episode":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    const-string v4, "pid"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "time"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v4, "p"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->banner:Ljava/lang/String;

    const-string v4, "b"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getImage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "t"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "n"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v3, "d"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v3, "user"

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v3

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    const-string v4, "history"

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v3

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 621
    return-void
.end method

.method public recordMemberHistory(II)V
    .locals 11
    .param p1, "time"    # I
    .param p2, "duration"    # I

    .line 573
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 574
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "token":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 576
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvRecordHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 578
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 580
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    const-string v6, "pid"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string v6, "vid"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string v6, "time"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 584
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v6, "img"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/Episode;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string v6, "n"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/Episode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string v6, "d"

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 590
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 592
    .local v7, "body":Lokhttp3/RequestBody;
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "Content-Type"

    invoke-virtual {v8, v9, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v8, "POST"

    invoke-virtual {v3, v8, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 594
    .local v3, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 596
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$12;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$12;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 603
    return-void
.end method

.method public recordMinutes()V
    .locals 7

    .line 624
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":30}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvTimePing"

    .line 628
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 629
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 630
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 631
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$13;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$13;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 644
    return-void
.end method

.method public snPing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"sn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 650
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 651
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 652
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 653
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 654
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$14;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$14;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 667
    return-void
.end method
