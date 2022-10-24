.class public Lcom/tvbusa/encore/BCOVLivePlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "BCOVLivePlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/BCOVLivePlayerActivity$UuidTask;,
        Lcom/tvbusa/encore/BCOVLivePlayerActivity$ChannelTask;,
        Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;
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

.field private mAudioFocusState:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

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

    .line 56
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->id:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->uuid:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->advertisingID:Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->prevousTime:I

    .line 74
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->client:Lokhttp3/OkHttpClient;

    .line 77
    sget-object v1, Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    .line 81
    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->adRulesURL:Ljava/lang/String;

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "mAudionManager is null in abandonAudioFocus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v1

    .line 470
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 471
    .local v0, "focus":Z
    if-eqz v0, :cond_2

    .line 472
    sget-object v1, Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    .line 474
    :cond_2
    return v0
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/tvbusa/encore/BCOVLivePlayerActivity;Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;
    .param p1, "x1"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    .line 56
    iput-object p1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method private registerErrorEventHandler()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 322
    .local v0, "eventEmitter":Lcom/brightcove/player/event/EventEmitter;
    new-instance v1, Lcom/tvbusa/encore/-$$Lambda$BCOVLivePlayerActivity$CTydDOxC5-XY3IQpi25Dw58q7e0;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/-$$Lambda$BCOVLivePlayerActivity$CTydDOxC5-XY3IQpi25Dw58q7e0;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 323
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 420
    const-string v0, "CheckAudio"

    const-string v1, "Run Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudionManager is null in requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 425
    :cond_0
    const-string v1, "Running Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 432
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 433
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 430
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 436
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/BCOVLivePlayerActivity$7;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$7;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    .line 437
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 462
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$registerErrorEventHandler$0$BCOVLivePlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 322
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 484
    :pswitch_1
    sget-object v0, Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    .line 485
    goto :goto_0

    .line 488
    :pswitch_2
    sget-object v0, Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    .line 489
    goto :goto_0

    .line 491
    :pswitch_3
    sget-object v0, Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVLivePlayerActivity$AudioFocusState;

    .line 492
    nop

    .line 495
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

    .line 101
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->setContentView(I)V

    .line 102
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 104
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 108
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 110
    const-string v0, "generalInfo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, "generalInfo":Landroid/content/SharedPreferences;
    const-string v2, "deviceNumber"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    .line 113
    const v2, 0x7f0b0075

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 114
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 116
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 118
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 120
    const-string v4, "img"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    .line 121
    const-string v4, "adConfigId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    .line 122
    const-string v4, "videoId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad Config - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Viet Live"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video ID - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad thumb - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    new-instance v4, Lcom/tvbusa/encore/BCOVLivePlayerActivity$UuidTask;

    invoke-direct {v4, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$UuidTask;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v1}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$UuidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 91
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
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

    .line 327
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 342
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYUP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-super {p0, p1, p2}, Lcom/brightcove/player/view/BrightcovePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 337
    :sswitch_0
    return v0

    .line 340
    :sswitch_1
    return v0

    .line 332
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isplaying - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyDown"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v0

    .line 329
    :sswitch_3
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->finish()V

    .line 330
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

    .line 349
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 350
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->requestAudioFocus()V

    .line 351
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 355
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 356
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->abandonAudioFocus()Z

    .line 357
    return-void
.end method

.method public playThisChannel(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->uuid:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoId"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 207
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 209
    new-instance v0, Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    invoke-direct {v0}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    const-string v2, "ad_config_id"

    invoke-virtual {v0, v2, v1}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->build()Lcom/brightcove/player/network/HttpRequestConfig;

    move-result-object v0

    .line 211
    .local v0, "httpRequestConfig":Lcom/brightcove/player/network/HttpRequestConfig;
    new-instance v1, Lcom/brightcove/player/edge/Catalog;

    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v3, 0x7f120028

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120029

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v1, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    new-instance v3, Lcom/tvbusa/encore/BCOVLivePlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$1;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/network/HttpRequestConfig;Lcom/brightcove/player/edge/VideoListener;)V

    .line 229
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/BCOVLivePlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$2;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    const-string v4, "error"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 247
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/BCOVLivePlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$3;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    const-string v4, "didSetVideo"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 274
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v3, Lcom/tvbusa/encore/BCOVLivePlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$4;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    const-string v4, "progress"

    invoke-interface {v2, v4, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 292
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->registerErrorEventHandler()V

    .line 312
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->channelUrl:Ljava/lang/String;

    const-string v3, "SSAI-Channel"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public playThisVideo(I)V
    .locals 2
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "TestIMA"

    const-string v1, "Play This Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play This Video - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCOV."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public recordLiveMinutes()V
    .locals 7

    .line 369
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\"live\",\"sn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":60}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvLiveTimePing"

    .line 372
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 373
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 374
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 375
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVLivePlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/BCOVLivePlayerActivity$5;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$5;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 388
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

    .line 391
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 392
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

    .line 393
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 394
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 395
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 396
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 397
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 398
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/BCOVLivePlayerActivity$6;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/BCOVLivePlayerActivity$6;-><init>(Lcom/tvbusa/encore/BCOVLivePlayerActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 411
    return-void
.end method
