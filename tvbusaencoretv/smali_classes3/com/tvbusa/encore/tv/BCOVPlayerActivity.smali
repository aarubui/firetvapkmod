.class public Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

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

.field private googleIMAComponent:Lcom/brightcove/ima/GoogleIMAComponent;

.field hasHistory:Ljava/lang/Boolean;

.field historyTime:I

.field id:Ljava/lang/String;

.field mApp:Lcom/tvbusa/encore/tv/MainApplication;

.field private mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

.field private mAudioManager:Landroid/media/AudioManager;

.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field mIsAdPlaying:Z

.field mIsAdShowing:Z

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

    .line 56
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdShowing:Z

    .line 63
    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->trackss:Ljava/util/List;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->id:Ljava/lang/String;

    .line 69
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    .line 70
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->banner:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 74
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->historyTime:I

    .line 76
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    .line 77
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prevousTime:I

    .line 78
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prTime:I

    .line 80
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->numOfPod:I

    .line 86
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 90
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "mAudionManager is null in abandonAudioFocus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v1

    .line 675
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 676
    .local v0, "focus":Z
    if-eqz v0, :cond_2

    .line 677
    sget-object v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 679
    :cond_2
    return v0
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->requestAds()V

    return-void
.end method

.method static synthetic access$400(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
    .param p1, "x1"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 56
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    return-object p1
.end method

.method static synthetic lambda$setupIMA$0(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .param p0, "event"    # Lcom/brightcove/player/event/Event;

    .line 350
    invoke-virtual {p0}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestIMA"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestAds()V
    .locals 2

    .line 469
    const-string v0, "TestIMA"

    const-string v1, "Request Ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 625
    const-string v0, "CheckAudio"

    const-string v1, "Run Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudionManager is null in requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 630
    :cond_0
    const-string v1, "Running Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 637
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 638
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 639
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 635
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 641
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$13;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$13;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    .line 642
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 667
    :goto_0
    return-void
.end method

.method private setupIMA()V
    .locals 4

    .line 344
    const-string v0, "TestIMA"

    const-string v1, "Setup IMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    .line 350
    .local v0, "sdkFactory":Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    sget-object v2, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$Aun3e1YAATgE6MA__N8IB1NTrPU;->INSTANCE:Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$Aun3e1YAATgE6MA__N8IB1NTrPU;

    const-string v3, "didFailToPlayAd"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 352
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$R8XjhJtCHg9SPQlShNE1g4DiR4s;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$R8XjhJtCHg9SPQlShNE1g4DiR4s;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v3, "adStarted"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 362
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$m6Kect7hp_nwOzCEX01Dg1LFjPA;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$m6Kect7hp_nwOzCEX01Dg1LFjPA;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v3, "adBreakStarted"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 367
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$sS3SlC4WtqoCjPmi3C75Ndk5tjU;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$sS3SlC4WtqoCjPmi3C75Ndk5tjU;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v3, "adCompleted"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 376
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$rI1zFrDLHkN1wmeqJy1z99r85hE;

    invoke-direct {v2, p0, v0}, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVPlayerActivity$rI1zFrDLHkN1wmeqJy1z99r85hE;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;)V

    const-string v3, "adsRequestForVideo"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 392
    new-instance v1, Lcom/brightcove/ima/GoogleIMAComponent$Builder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-direct {v1, v2, v3}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;-><init>(Lcom/brightcove/player/view/BaseVideoView;Lcom/brightcove/player/event/EventEmitter;)V

    .line 393
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;->setUseAdRules(Z)Lcom/brightcove/ima/GoogleIMAComponent$Builder;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;->build()Lcom/brightcove/ima/GoogleIMAComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->googleIMAComponent:Lcom/brightcove/ima/GoogleIMAComponent;

    .line 398
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 420
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 423
    :sswitch_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->googleIMAComponent:Lcom/brightcove/ima/GoogleIMAComponent;

    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAComponent;->getVideoAdPlayer()Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 424
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdShowing:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pressed Is Skippable- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TestIMA"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pressed Skip Offset- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v3}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getSkipTimeOffset()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pressed CT - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v3}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 431
    .local v0, "ct":I
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-double v2, v0

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v4}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getSkipTimeOffset()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 432
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v1}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->skipAd()V

    goto :goto_0

    .line 433
    :cond_0
    iget-boolean v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdPlaying:Z

    if-eqz v2, :cond_1

    .line 434
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 435
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v1}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentAdMediaInfo()Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->pauseAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 437
    :cond_1
    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 438
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v1}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentAdMediaInfo()Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->playAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    .line 440
    .end local v0    # "ct":I
    :goto_0
    goto :goto_1

    .line 443
    :sswitch_1
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->finish()V

    .line 444
    goto :goto_1

    .line 446
    :sswitch_2
    const-string v0, "HOMEBTN"

    const-string v1, "YES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public initMediaController(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 2
    .param p1, "brightcoveVideoView"    # Lcom/brightcove/player/view/BaseVideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "brightcoveVideoView"
        }
    .end annotation

    .line 453
    invoke-static {p0}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;->checkTvMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;

    const v1, 0x7f0d00ff

    invoke-direct {v0, p1, v1}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;-><init>(Lcom/brightcove/player/view/BaseVideoView;I)V

    invoke-virtual {p1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setMediaController(Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;)V

    .line 457
    :cond_0
    return-void
.end method

.method public synthetic lambda$setupIMA$1$BCOVPlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 353
    const-string v0, "TestIMA"

    const-string v1, "Ad Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdShowing:Z

    .line 355
    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v0, "AiParams":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "AdImpression"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 360
    return-void
.end method

.method public synthetic lambda$setupIMA$2$BCOVPlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 363
    const-string v0, "TestIMA"

    const-string v1, "Ad Break Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->getDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordAR(II)V

    .line 365
    return-void
.end method

.method public synthetic lambda$setupIMA$3$BCOVPlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 368
    const-string v0, "TestIMA"

    const-string v1, "Ad Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdShowing:Z

    .line 370
    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 371
    return-void
.end method

.method public synthetic lambda$setupIMA$4$BCOVPlayerActivity(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Lcom/brightcove/player/event/Event;)V
    .locals 4
    .param p1, "sdkFactory"    # Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .param p2, "event"    # Lcom/brightcove/player/event/Event;

    .line 379
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v0

    .line 380
    .local v0, "adsRequest":Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v1, "adsRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/ads/interactivemedia/v3/api/AdsRequest;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v2, p2, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v3, "adsRequests"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v2, p2}, Lcom/brightcove/player/event/EventEmitter;->respond(Lcom/brightcove/player/event/Event;)V

    .line 388
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 689
    :pswitch_1
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 690
    goto :goto_0

    .line 693
    :pswitch_2
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 694
    goto :goto_0

    .line 696
    :pswitch_3
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 697
    nop

    .line 700
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 110
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->setContentView(I)V

    .line 111
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 113
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 116
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    .line 118
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getVideoAdRule()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getNumOfAdsInPod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->numOfPod:I

    .line 122
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    const-string v1, "AdRule1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 127
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 128
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->id:Ljava/lang/String;

    .line 129
    const-string v2, "pid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    .line 130
    const-string v2, "episodes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    .line 131
    const-string v2, "parent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    .line 132
    const-string v2, "banner"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->banner:Ljava/lang/String;

    .line 133
    const-string v2, "selectedIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    .line 134
    const-string v2, "hasHistory"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 135
    const-string v2, "historyTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->historyTime:I

    .line 138
    :cond_1
    const v2, 0x7f0a0074

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 139
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->initMediaController(Lcom/brightcove/player/view/BaseVideoView;)V

    .line 141
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 143
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->setupIMA()V

    .line 145
    new-instance v2, Lcom/brightcove/player/edge/Catalog;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v4, 0x7f110028

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11002a

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
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

    .line 161
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v3, "params":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
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

    .line 164
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v5, "ProgramViews"

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 166
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v6, "completed"

    invoke-interface {v4, v6, v5}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 184
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$3;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v6, "progress"

    invoke-interface {v4, v6, v5}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 218
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$4;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$4;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v6, "didSetVideo"

    invoke-interface {v4, v6, v5}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 231
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v5, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$5;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$5;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    const-string v6, "audioTracks"

    invoke-interface {v4, v6, v5}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 252
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 100
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 402
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 413
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYUP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-super {p0, p1, p2}, Lcom/brightcove/player/view/BrightcovePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 409
    :sswitch_0
    return v0

    .line 411
    :sswitch_1
    return v0

    .line 407
    :sswitch_2
    return v0

    .line 404
    :sswitch_3
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->finish()V

    .line 405
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x55 -> :sswitch_2
        0x59 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .line 461
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onPause()V

    .line 462
    const-string v0, "HOMEBTN"

    const-string v1, "This is On Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 465
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 301
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 302
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->requestAudioFocus()V

    .line 303
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 307
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 308
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->abandonAudioFocus()Z

    .line 309
    return-void
.end method

.method public playThisVideo(I)V
    .locals 4
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "TestIMA"

    const-string v1, "Play This Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play This Video - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCOV."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
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

    .line 316
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 317
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

    .line 320
    add-int/lit8 p1, p1, -0x1

    .line 321
    iget v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    .line 323
    :cond_0
    new-instance v0, Lcom/brightcove/player/edge/Catalog;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v2, 0x7f110028

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11002a

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v0, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$8;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 335
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v1, "params":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
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

    .line 338
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v3, "ProgramViews"

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 339
    return-void
.end method

.method public recordAR(II)V
    .locals 8
    .param p1, "time"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "duration"
        }
    .end annotation

    .line 473
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 474
    .local v0, "percentage":I
    const-string v1, "TestIMA"

    const-string v2, "Record AR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; Duration - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; Percentage - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v2, "AdRequest"

    const-string v3, "name"

    const-string v4, "AR"

    const/16 v5, 0x2710

    if-ge p1, v5, :cond_0

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preroll - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v6, p1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordFirebaseAR()V

    .line 481
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v1, "adParams":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v3, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 484
    .end local v1    # "adParams":Landroid/os/Bundle;
    goto :goto_1

    .line 485
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->numOfPod:I

    if-ge v5, v6, :cond_1

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Midroll - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v7, p1, 0x3e8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v6, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v6, "adParams":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v7, v2, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->recordFirebaseAR()V

    .line 485
    .end local v6    # "adParams":Landroid/os/Bundle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 494
    .end local v5    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public recordEventMinute()V
    .locals 10

    .line 278
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "token":Ljava/lang/String;
    const-string v2, "firetv"

    .line 281
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

    .line 282
    .local v3, "params":Ljava/lang/String;
    const-string v4, "https://us-central1-encoretvb-faecb.cloudfunctions.net/fireTvEventMin"

    .line 283
    .local v4, "url":Ljava/lang/String;
    const-string v5, "application/x-www-form-urlencoded"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    .line 284
    .local v6, "mediaType":Lokhttp3/MediaType;
    invoke-static {v6, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 285
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

    .line 286
    .local v5, "request":Lokhttp3/Request;
    iget-object v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 297
    return-void
.end method

.method public recordFirebaseAR()V
    .locals 11

    .line 497
    const-string v0, "FirebaseAR"

    const-string v1, "Record Now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v1, "UserProfile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 499
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "token":Ljava/lang/String;
    if-nez v2, :cond_0

    return-void

    .line 501
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Now - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fireTvGenAdRequest"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 505
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 507
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v6, "plat"

    const-string v7, "firetv"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 512
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 514
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

    .line 516
    .local v0, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 518
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$9;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$9;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 525
    return-void
.end method

.method public recordHistory(I)V
    .locals 5
    .param p1, "time"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "SN - Record History - "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 563
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

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 565
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    .line 566
    .local v1, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v2, "episode":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    const-string v4, "pid"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "time"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v4, "p"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->banner:Ljava/lang/String;

    const-string v4, "b"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getImage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "t"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "n"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v3, "d"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
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

    .line 576
    return-void
.end method

.method public recordMemberHistory(II)V
    .locals 11
    .param p1, "time"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "duration"
        }
    .end annotation

    .line 528
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 529
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "token":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 531
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvRecordHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 533
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 535
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v6, "pid"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->pid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v6, "vid"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v6, "time"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 539
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    const-string v6, "img"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/Episode;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string v6, "n"

    iget-object v7, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/Episode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v6, "d"

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 545
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 547
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

    .line 549
    .local v3, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 551
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$10;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 558
    return-void
.end method

.method public recordMinutes()V
    .locals 7

    .line 579
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 581
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

    .line 582
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvTimePing"

    .line 583
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 584
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 585
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 586
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$11;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$11;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 599
    return-void
.end method

.method public recordRebateMin()V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SN - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RebateMin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"dsn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":30}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvRebateMin"

    .line 259
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 260
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 261
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 262
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$6;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$6;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 275
    return-void
.end method

.method public snPing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sn",
            "type"
        }
    .end annotation

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 603
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

    .line 604
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 605
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 606
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 607
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 608
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 609
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$12;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$12;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 622
    return-void
.end method
