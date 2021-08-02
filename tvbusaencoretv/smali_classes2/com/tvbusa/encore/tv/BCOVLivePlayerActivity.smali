.class public Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "BCOVLivePlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;,
        Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;,
        Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;
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

.field mApp:Lcom/tvbusa/encore/tv/MainApplication;

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

    .line 62
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;-><init>()V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->id:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->uuid:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->advertisingID:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->prevousTime:I

    .line 80
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->client:Lokhttp3/OkHttpClient;

    .line 85
    sget-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 89
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->adRulesURL:Ljava/lang/String;

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "mAudionManager is null in abandonAudioFocus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v1

    .line 471
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 472
    .local v0, "focus":Z
    if-eqz v0, :cond_2

    .line 473
    sget-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 475
    :cond_2
    return v0
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
    .param p1, "x1"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 62
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 62
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method private registerErrorEventHandler()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 323
    .local v0, "eventEmitter":Lcom/brightcove/player/event/EventEmitter;
    new-instance v1, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVLivePlayerActivity$vO0h5rxM1Alg4oeD6cplt0oiSG8;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/-$$Lambda$BCOVLivePlayerActivity$vO0h5rxM1Alg4oeD6cplt0oiSG8;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 324
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 421
    const-string v0, "CheckAudio"

    const-string v1, "Run Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudionManager is null in requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 426
    :cond_0
    const-string v1, "Running Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 433
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 434
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 437
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    .line 438
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 430
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 463
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$registerErrorEventHandler$0$BCOVLivePlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 323
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

    .line 482
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 486
    goto :goto_0

    .line 489
    :cond_1
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 490
    goto :goto_0

    .line 492
    :cond_2
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 493
    nop

    .line 496
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->setContentView(I)V

    .line 110
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 112
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 116
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    .line 119
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    .line 121
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 122
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 124
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 126
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 127
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    const-string v3, "Live"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 99
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 328
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x59

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    .line 343
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYUP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-super {p0, p1, p2}, Lcom/brightcove/player/view/BrightcovePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 338
    :cond_0
    return v1

    .line 341
    :cond_1
    return v1

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isplaying - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyDown"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v1

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->finish()V

    .line 331
    return v1
.end method

.method protected onStart()V
    .locals 0

    .line 350
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 351
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->requestAudioFocus()V

    .line 352
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 356
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 357
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->abandonAudioFocus()Z

    .line 358
    return-void
.end method

.method public playThisChannel(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->uuid:Ljava/lang/String;

    .line 206
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

    .line 208
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 209
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 211
    new-instance v0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    invoke-direct {v0}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    const-string v2, "ad_config_id"

    invoke-virtual {v0, v2, v1}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->build()Lcom/brightcove/player/network/HttpRequestConfig;

    move-result-object v0

    .line 213
    .local v0, "httpRequestConfig":Lcom/brightcove/player/network/HttpRequestConfig;
    new-instance v1, Lcom/brightcove/player/edge/Catalog;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v3, 0x7f110028

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11002a

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v1, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$1;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/network/HttpRequestConfig;Lcom/brightcove/player/edge/VideoListener;)V

    .line 230
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v4, "error"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 248
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$3;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v4, "didSetVideo"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 275
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$4;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const-string v4, "progress"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 293
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->registerErrorEventHandler()V

    .line 313
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    const-string v3, "SSAI-Channel"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method public playThisVideo(I)V
    .locals 2
    .param p1, "p"    # I

    .line 361
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "TestIMA"

    const-string v1, "Play This Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play This Video - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCOV."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method

.method public recordLiveMinutes()V
    .locals 7

    .line 370
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 371
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

    .line 372
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvLiveTimePing"

    .line 373
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 374
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 375
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 376
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$5;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$5;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 389
    return-void
.end method

.method public snPing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 393
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

    .line 394
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 395
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 396
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 397
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 398
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 399
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$6;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$6;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 412
    return-void
.end method
