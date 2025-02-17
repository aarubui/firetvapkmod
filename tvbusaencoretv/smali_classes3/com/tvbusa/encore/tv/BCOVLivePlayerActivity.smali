.class public Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "BCOVLivePlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;,
        Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;,
        Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adRulesURL:Ljava/lang/String;

.field ad_config_value:Ljava/lang/String;

.field advertisingID:Ljava/lang/String;

.field channelUrl:Ljava/lang/String;

.field client:Lokhttp3/OkHttpClient;

.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field id:Ljava/lang/String;

.field private mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

.field private mAudioManager:Landroid/media/AudioManager;

.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private plugin:Lcom/brightcove/ssai/SSAIComponent;

.field prevousTime:I

.field sss:Ljava/lang/String;

.field thumb:Ljava/lang/String;

.field url:Ljava/lang/String;

.field uuid:Ljava/lang/String;

.field videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->id:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->uuid:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->advertisingID:Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->prevousTime:I

    .line 81
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->client:Lokhttp3/OkHttpClient;

    .line 84
    sget-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 88
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->adRulesURL:Ljava/lang/String;

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "mAudionManager is null in abandonAudioFocus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v1

    .line 494
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 495
    .local v0, "focus":Z
    if-eqz v0, :cond_2

    .line 496
    sget-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 498
    :cond_2
    return v0
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;Lcom/brightcove/player/model/Video;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
    .param p1, "x1"    # Lcom/brightcove/player/model/Video;
    .param p2, "x2"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->selectCaption(Lcom/brightcove/player/model/Video;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
    .param p1, "x1"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 63
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method private getCaptionsForLanguageCode(Lcom/brightcove/player/model/Video;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p1, "video"    # Lcom/brightcove/player/model/Video;
    .param p2, "languageCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/model/Video;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;",
            ">;"
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string v2, "captionSources"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, "payload":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 331
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 334
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 335
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;

    invoke-virtual {v5}, Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;->language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 336
    return-object v4

    .line 338
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;"
    :cond_1
    goto :goto_1

    .line 340
    .end local v2    # "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;>;"
    :cond_2
    return-object v0
.end method

.method private registerErrorEventHandler()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 346
    .local v0, "eventEmitter":Lcom/brightcove/player/event/EventEmitter;
    new-instance v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 347
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 444
    const-string v0, "CheckAudio"

    const-string v1, "Run Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudionManager is null in requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 449
    :cond_0
    const-string v1, "Running Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 456
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 457
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 460
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$8;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$8;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    .line 461
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 486
    :goto_0
    return-void
.end method

.method private selectCaption(Lcom/brightcove/player/model/Video;Ljava/lang/String;)V
    .locals 4
    .param p1, "video"    # Lcom/brightcove/player/model/Video;
    .param p2, "language"    # Ljava/lang/String;

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getCaptionsForLanguageCode(Lcom/brightcove/player/model/Video;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 314
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;"
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brightcove://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->getClosedCaptioningController()Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->getLoadCaptionsService()Lcom/brightcove/player/captioning/LoadCaptionsService;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;

    invoke-virtual {v3}, Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/brightcove/player/captioning/LoadCaptionsService;->loadCaptions(Landroid/net/Uri;Ljava/lang/String;)V

    .line 319
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "captionFormat"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "captionUri"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string v3, "selectClosedCaptionTrack"

    invoke-interface {v2, v3, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public initMediaController(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 2
    .param p1, "brightcoveVideoView"    # Lcom/brightcove/player/view/BaseVideoView;

    .line 144
    invoke-static {p0}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;->checkTvMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;

    const v1, 0x7f0e00a9

    invoke-direct {v0, p1, v1}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;-><init>(Lcom/brightcove/player/view/BaseVideoView;I)V

    invoke-virtual {p1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setMediaController(Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;)V

    .line 148
    :cond_0
    return-void
.end method

.method public synthetic lambda$registerErrorEventHandler$0$com-tvbusa-encore-tv-BCOVLivePlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 346
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .line 505
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 508
    :pswitch_1
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 509
    goto :goto_0

    .line 512
    :pswitch_2
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 513
    goto :goto_0

    .line 515
    :pswitch_3
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 516
    nop

    .line 519
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

    .line 108
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->setContentView(I)V

    .line 109
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 111
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    const-string v0, "generalInfo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    .local v0, "generalInfo":Landroid/content/SharedPreferences;
    const-string v2, "deviceNumber"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    .line 120
    const v2, 0x7f0b0075

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 121
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 123
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 124
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 125
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 127
    const-string v4, "img"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    .line 128
    const-string v4, "adConfigId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    .line 129
    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad Config - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Viet Live"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad thumb - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    new-instance v4, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;

    invoke-direct {v4, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 98
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 351
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 366
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYUP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-super {p0, p1, p2}, Lcom/brightcove/player/view/BrightcovePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 361
    :sswitch_0
    return v0

    .line 364
    :sswitch_1
    return v0

    .line 356
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isplaying - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyDown"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v0

    .line 353
    :sswitch_3
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->finish()V

    .line 354
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

.method protected onStart()V
    .locals 0

    .line 373
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 374
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->requestAudioFocus()V

    .line 375
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 379
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 380
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->abandonAudioFocus()Z

    .line 381
    return-void
.end method

.method public playThisChannel(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .line 214
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->uuid:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoId"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 217
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->initMediaController(Lcom/brightcove/player/view/BaseVideoView;)V

    .line 218
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 219
    new-instance v0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    invoke-direct {v0}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    const-string v2, "ad_config_id"

    invoke-virtual {v0, v2, v1}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->build()Lcom/brightcove/player/network/HttpRequestConfig;

    move-result-object v0

    .line 220
    .local v0, "httpRequestConfig":Lcom/brightcove/player/network/HttpRequestConfig;
    new-instance v1, Lcom/brightcove/player/edge/Catalog;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v3, 0x7f120028

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120029

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v1, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/network/HttpRequestConfig;Lcom/brightcove/player/edge/VideoListener;)V

    .line 236
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v4, "error"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 254
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v4, "didSetVideo"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 281
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v4, "progress"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 297
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$5;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$5;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v4, "captionsLanguages"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 307
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->registerErrorEventHandler()V

    .line 308
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    const-string v3, "SSAI-Channel"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public playThisVideo(I)V
    .locals 2
    .param p1, "p"    # I

    .line 384
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "TestIMA"

    const-string v1, "Play This Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play This Video - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCOV."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method public recordLiveMinutes()V
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\"live\",\"sn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":60}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvLiveTimePing"

    .line 396
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 397
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 398
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 399
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$6;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$6;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 412
    return-void
.end method

.method public snPing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 416
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

    .line 417
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 418
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 419
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 420
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 421
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 422
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 435
    return-void
.end method
