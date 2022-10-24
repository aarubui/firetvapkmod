.class public Lcom/tvbusa/encore/BCOVPlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;
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
            "Lcom/tvbusa/encore/Episode;",
            ">;"
        }
    .end annotation
.end field

.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private googleIMAComponent:Lcom/brightcove/ima/GoogleIMAComponent;

.field hasHistory:Ljava/lang/Boolean;

.field historyTime:I

.field id:Ljava/lang/String;

.field mApp:Lcom/tvbusa/encore/MainApplication;

.field private mAudioFocusState:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

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

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdShowing:Z

    .line 63
    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->trackss:Ljava/util/List;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->id:Ljava/lang/String;

    .line 69
    iput v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    .line 70
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->pid:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->banner:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 74
    iput v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->historyTime:I

    .line 76
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    .line 77
    iput v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->prevousTime:I

    .line 78
    iput v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->prTime:I

    .line 80
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->numOfPod:I

    .line 86
    sget-object v0, Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    .line 90
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "mAudionManager is null in abandonAudioFocus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return v1

    .line 701
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 702
    .local v0, "focus":Z
    if-eqz v0, :cond_2

    .line 703
    sget-object v1, Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    .line 705
    :cond_2
    return v0
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/BCOVPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    return-void
.end method

.method static synthetic access$400(Lcom/tvbusa/encore/BCOVPlayerActivity;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tvbusa/encore/BCOVPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tvbusa/encore/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tvbusa/encore/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tvbusa/encore/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;

    .line 56
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tvbusa/encore/BCOVPlayerActivity;Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVPlayerActivity;
    .param p1, "x1"    # Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    .line 56
    iput-object p1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    return-object p1
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 120
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tvbusa/encore/BCOVPlayerActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 121
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 122
    return v0

    .line 119
    .end local v3    # "success":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 126
    .end local v1    # "children":[Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 129
    :cond_3
    return v0
.end method

.method private requestAds()V
    .locals 2

    .line 495
    const-string v0, "TestIMA"

    const-string v1, "Request Ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 651
    const-string v0, "CheckAudio"

    const-string v1, "Run Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudionManager is null in requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 656
    :cond_0
    const-string v1, "Running Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 660
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 663
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 664
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 665
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 661
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/BCOVPlayerActivity$13;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$13;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    .line 668
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 687
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 660
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 693
    :goto_0
    return-void
.end method

.method private setupIMA()V
    .locals 4

    .line 367
    const-string v0, "TestIMA"

    const-string v1, "Setup IMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    .line 375
    .local v0, "sdkFactory":Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$54nh3J5gbx23LVGD7-Ef6sLDUCg;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$54nh3J5gbx23LVGD7-Ef6sLDUCg;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    const-string v3, "adStarted"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 385
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$E9bqyVX68ntlkJ5Ti_fOu6I0Nr8;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$E9bqyVX68ntlkJ5Ti_fOu6I0Nr8;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    const-string v3, "adBreakStarted"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 390
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$bZ4URSx3OLu1DoRFruTiHguetNk;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$bZ4URSx3OLu1DoRFruTiHguetNk;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    const-string v3, "adCompleted"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 399
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v2, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$DsgTnJ0OMgpVeHr1IBOWtFheJGk;

    invoke-direct {v2, p0, v0}, Lcom/tvbusa/encore/-$$Lambda$BCOVPlayerActivity$DsgTnJ0OMgpVeHr1IBOWtFheJGk;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;)V

    const-string v3, "adsRequestForVideo"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 415
    new-instance v1, Lcom/brightcove/ima/GoogleIMAComponent$Builder;

    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-direct {v1, v2, v3}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;-><init>(Lcom/brightcove/player/view/BaseVideoView;Lcom/brightcove/player/event/EventEmitter;)V

    .line 416
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;->setUseAdRules(Z)Lcom/brightcove/ima/GoogleIMAComponent$Builder;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;->build()Lcom/brightcove/ima/GoogleIMAComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->googleIMAComponent:Lcom/brightcove/ima/GoogleIMAComponent;

    .line 421
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .end local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TestIMA"

    const-string v2, "Clear Cache Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

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

    .line 443
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 446
    :sswitch_0
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->googleIMAComponent:Lcom/brightcove/ima/GoogleIMAComponent;

    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAComponent;->getVideoAdPlayer()Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 447
    iget-boolean v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdShowing:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pressed Is Skippable- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TestIMA"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pressed Skip Offset- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v3}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getSkipTimeOffset()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pressed CT - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v3}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 454
    .local v0, "ct":I
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-double v2, v0

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v4}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getSkipTimeOffset()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    iget-boolean v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdPlaying:Z

    if-eqz v2, :cond_1

    .line 458
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 459
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    invoke-virtual {v1}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->pauseAd()V

    goto :goto_0

    .line 462
    :cond_1
    iput-boolean v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 464
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adPlayer:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 466
    .end local v0    # "ct":I
    :goto_0
    goto :goto_1

    .line 469
    :sswitch_1
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->finish()V

    .line 470
    goto :goto_1

    .line 472
    :sswitch_2
    const-string v0, "HOMEBTN"

    const-string v1, "YES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

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

    .line 479
    invoke-static {p0}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;->checkTvMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;

    const v1, 0x7f0e0112

    invoke-direct {v0, p1, v1}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;-><init>(Lcom/brightcove/player/view/BaseVideoView;I)V

    invoke-virtual {p1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setMediaController(Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;)V

    .line 483
    :cond_0
    return-void
.end method

.method public synthetic lambda$setupIMA$0$BCOVPlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 376
    const-string v0, "TestIMA"

    const-string v1, "Ad Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdShowing:Z

    .line 378
    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 380
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v0, "AiParams":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "AdImpression"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    return-void
.end method

.method public synthetic lambda$setupIMA$1$BCOVPlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 386
    const-string v0, "TestIMA"

    const-string v1, "Ad Break Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->getDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVPlayerActivity;->recordAR(II)V

    .line 388
    return-void
.end method

.method public synthetic lambda$setupIMA$2$BCOVPlayerActivity(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/brightcove/player/event/Event;

    .line 391
    const-string v0, "TestIMA"

    const-string v1, "Ad Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdShowing:Z

    .line 393
    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mIsAdPlaying:Z

    .line 394
    return-void
.end method

.method public synthetic lambda$setupIMA$3$BCOVPlayerActivity(Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;Lcom/brightcove/player/event/Event;)V
    .locals 4
    .param p1, "sdkFactory"    # Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .param p2, "event"    # Lcom/brightcove/player/event/Event;

    .line 402
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v0

    .line 403
    .local v0, "adsRequest":Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v1, "adsRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/ads/interactivemedia/v3/api/AdsRequest;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v2, p2, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v3, "adsRequests"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v2, p2}, Lcom/brightcove/player/event/EventEmitter;->respond(Lcom/brightcove/player/event/Event;)V

    .line 411
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

    .line 712
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 715
    :pswitch_1
    sget-object v0, Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    .line 716
    goto :goto_0

    .line 719
    :pswitch_2
    sget-object v0, Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    .line 720
    goto :goto_0

    .line 722
    :pswitch_3
    sget-object v0, Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVPlayerActivity$AudioFocusState;

    .line 723
    nop

    .line 726
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
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 135
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->setContentView(I)V

    .line 136
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 139
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 142
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mApp:Lcom/tvbusa/encore/MainApplication;

    .line 144
    const/4 v0, 0x0

    const-string v1, "generalInfo"

    invoke-virtual {p0, v1, v0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "generalInfo":Landroid/content/SharedPreferences;
    const-string v1, "deviceNumber"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    .line 146
    const-string v1, "VideoAdRule"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    .line 147
    const/4 v1, 0x3

    const-string v2, "MidRoll"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->numOfPod:I

    .line 148
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v2, "views"

    invoke-virtual {p0, v1, v2}, Lcom/tvbusa/encore/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->adRulesURL:Ljava/lang/String;

    const-string v2, "AdRule1"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 153
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 154
    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->id:Ljava/lang/String;

    .line 155
    const-string v3, "pid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->pid:Ljava/lang/String;

    .line 156
    const-string v3, "episodes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    .line 157
    const-string v3, "parent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    .line 158
    const-string v3, "banner"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->banner:Ljava/lang/String;

    .line 159
    const-string v3, "selectedIndex"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    .line 160
    const-string v3, "hasHistory"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 161
    const-string v3, "historyTime"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->historyTime:I

    .line 164
    :cond_1
    const v3, 0x7f0b0075

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/BCOVPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 165
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/BCOVPlayerActivity;->initMediaController(Lcom/brightcove/player/view/BaseVideoView;)V

    .line 167
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v3}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 169
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->setupIMA()V

    .line 171
    new-instance v3, Lcom/brightcove/player/edge/Catalog;

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v5, 0x7f120027

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f12002a

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v3, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v4}, Lcom/tvbusa/encore/Episode;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tvbusa/encore/BCOVPlayerActivity$1;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$1;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 187
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v4, "params":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Program View - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Analytics"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v6, "ProgramViews"

    invoke-virtual {v5, v6, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 192
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v6, Lcom/tvbusa/encore/BCOVPlayerActivity$2;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$2;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    const-string v7, "completed"

    invoke-interface {v5, v7, v6}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 210
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v6, Lcom/tvbusa/encore/BCOVPlayerActivity$3;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$3;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    const-string v7, "progress"

    invoke-interface {v5, v7, v6}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 241
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v6, Lcom/tvbusa/encore/BCOVPlayerActivity$4;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$4;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    const-string v7, "didSetVideo"

    invoke-interface {v5, v7, v6}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 254
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v6, Lcom/tvbusa/encore/BCOVPlayerActivity$5;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$5;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    const-string v7, "audioTracks"

    invoke-interface {v5, v7, v6}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 275
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 99
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

    .line 425
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 436
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYUP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-super {p0, p1, p2}, Lcom/brightcove/player/view/BrightcovePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 432
    :sswitch_0
    return v0

    .line 434
    :sswitch_1
    return v0

    .line 430
    :sswitch_2
    return v0

    .line 427
    :sswitch_3
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->finish()V

    .line 428
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

    .line 487
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onPause()V

    .line 488
    const-string v0, "HOMEBTN"

    const-string v1, "This is On Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 491
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 324
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 325
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->requestAudioFocus()V

    .line 326
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 330
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 331
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->abandonAudioFocus()Z

    .line 332
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

    .line 335
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "TestIMA"

    const-string v1, "Play This Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play This Video - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BCOV."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max # Video - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continue to Loop - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    add-int/lit8 p1, p1, -0x1

    .line 344
    iget v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    .line 346
    :cond_0
    new-instance v0, Lcom/brightcove/player/edge/Catalog;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const v2, 0x7f120027

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12002a

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v0, "catalog":Lcom/brightcove/player/edge/Catalog;
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v1}, Lcom/tvbusa/encore/Episode;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/BCOVPlayerActivity$8;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$8;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 358
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v1, "params":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Program View - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Analytics"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v3, "ProgramViews"

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 362
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

    .line 499
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 500
    .local v0, "percentage":I
    const-string v1, "TestIMA"

    const-string v2, "Record AR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
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

    .line 503
    const-string v2, "AdRequest"

    const-string v3, "name"

    const-string v4, "AR"

    const/16 v5, 0x2710

    if-ge p1, v5, :cond_0

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preroll - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v6, p1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/tvbusa/encore/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->recordFirebaseAR()V

    .line 507
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v1, "adParams":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v3, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 510
    .end local v1    # "adParams":Landroid/os/Bundle;
    goto :goto_1

    .line 511
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->numOfPod:I

    if-ge v5, v6, :cond_1

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Midroll - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v7, p1, 0x3e8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v6, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/tvbusa/encore/BCOVPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v6, "adParams":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v7, v2, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 517
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->recordFirebaseAR()V

    .line 511
    .end local v6    # "adParams":Landroid/os/Bundle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 520
    .end local v5    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public recordEventMinute()V
    .locals 10

    .line 301
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "token":Ljava/lang/String;
    const-string v2, "firetv"

    .line 304
    .local v2, "ppp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&plat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "params":Ljava/lang/String;
    const-string v4, "https://us-central1-encoretvb-faecb.cloudfunctions.net/fireTvEventMin"

    .line 306
    .local v4, "url":Ljava/lang/String;
    const-string v5, "application/x-www-form-urlencoded"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    .line 307
    .local v6, "mediaType":Lokhttp3/MediaType;
    invoke-static {v6, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 308
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

    .line 309
    .local v5, "request":Lokhttp3/Request;
    iget-object v8, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/BCOVPlayerActivity$7;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$7;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 320
    return-void
.end method

.method public recordFirebaseAR()V
    .locals 11

    .line 523
    const-string v0, "FirebaseAR"

    const-string v1, "Record Now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v1, "UserProfile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 525
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "token":Ljava/lang/String;
    if-nez v2, :cond_0

    return-void

    .line 527
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Now - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fireTvGenAdRequest"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 531
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 533
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v6, "plat"

    const-string v7, "firetv"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 538
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 540
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

    .line 542
    .local v0, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 544
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/BCOVPlayerActivity$9;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$9;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 551
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

    .line 587
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "SN - Record History - "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 589
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

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 591
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    .line 592
    .local v1, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 593
    .local v2, "episode":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->pid:Ljava/lang/String;

    const-string v4, "pid"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "time"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    const-string v4, "p"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->banner:Ljava/lang/String;

    const-string v4, "b"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/Episode;->getImage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "t"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/Episode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "n"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v3, "d"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v3, "user"

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v3

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    const-string v4, "history"

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v3

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->pid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 602
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

    .line 554
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 555
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "token":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 557
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvRecordHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 559
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 561
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v6, "pid"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->pid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v6, "vid"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/Episode;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v6, "time"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 565
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v6, "img"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/Episode;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string v6, "n"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/Episode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    const-string v6, "d"

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 571
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 573
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

    .line 575
    .local v3, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 577
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/BCOVPlayerActivity$10;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$10;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 584
    return-void
.end method

.method public recordMinutes()V
    .locals 7

    .line 605
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":30}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvTimePing"

    .line 609
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 610
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 611
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 612
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/BCOVPlayerActivity$11;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$11;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 625
    return-void
.end method

.method public recordRebateMin()V
    .locals 7

    .line 278
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SN - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RebateMin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"dsn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":30}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvRebateMin"

    .line 282
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 283
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 284
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 285
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/BCOVPlayerActivity$6;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$6;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 298
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

    .line 628
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 629
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

    .line 630
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 631
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 632
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 633
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 634
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 635
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/BCOVPlayerActivity$12;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/BCOVPlayerActivity$12;-><init>(Lcom/tvbusa/encore/BCOVPlayerActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 648
    return-void
.end method
