.class public Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "BCOVSSAIPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adConfigId:Ljava/lang/String;

.field private adConfigType:I

.field private adRulesURL:Ljava/lang/String;

.field banner:Ljava/lang/String;

.field client:Lokhttp3/OkHttpClient;

.field private clips:Ljava/lang/String;

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

.field private isFirstAdInThePod:Z

.field private longForm:Ljava/lang/String;

.field mApp:Lcom/tvbusa/encore/MainApplication;

.field private mAudioFocusState:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

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

.field private shortForm:Ljava/lang/String;

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

    .line 55
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mIsAdShowing:Z

    .line 62
    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mIsAdPlaying:Z

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->trackss:Ljava/util/List;

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->id:Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    .line 68
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->pid:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->banner:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 72
    iput v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->historyTime:I

    .line 74
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    .line 75
    iput v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->prevousTime:I

    .line 76
    iput v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->prTime:I

    .line 78
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v2, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->client:Lokhttp3/OkHttpClient;

    .line 81
    const/4 v2, 0x3

    iput v2, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->numOfPod:I

    .line 84
    sget-object v2, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    iput-object v2, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 88
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adRulesURL:Ljava/lang/String;

    .line 90
    iput v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigType:I

    .line 91
    const-string v0, "a8797b69-3d2f-4b81-bd14-ea8a81719595"

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->clips:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->shortForm:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->longForm:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->isFirstAdInThePod:Z

    return-void
.end method

.method private abandonAudioFocus()Z
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "mAudionManager is null in abandonAudioFocus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return v1

    .line 727
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 728
    .local v0, "focus":Z
    if-eqz v0, :cond_2

    .line 729
    sget-object v1, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 731
    :cond_2
    return v0
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->isFirstAdInThePod:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;
    .param p1, "x1"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 55
    iput-object p1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;Lcom/brightcove/player/model/Video;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;
    .param p1, "x1"    # Lcom/brightcove/player/model/Video;
    .param p2, "x2"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectCaption(Lcom/brightcove/player/model/Video;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    return-object v0
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

    .line 123
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 126
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 127
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 128
    return v0

    .line 125
    .end local v3    # "success":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 132
    .end local v1    # "children":[Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 135
    :cond_3
    return v0
.end method

.method private getCaptionsForLanguageCode(Lcom/brightcove/player/model/Video;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p1, "video"    # Lcom/brightcove/player/model/Video;
    .param p2, "languageCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "video",
            "languageCode"
        }
    .end annotation

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

    .line 395
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

    .line 397
    .local v1, "payload":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 399
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 402
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

    .line 403
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;

    invoke-virtual {v5}, Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;->language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 404
    return-object v4

    .line 406
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;"
    :cond_1
    goto :goto_1

    .line 408
    .end local v2    # "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;>;"
    :cond_2
    return-object v0
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 677
    const-string v0, "CheckAudio"

    const-string v1, "Run Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudionManager is null in requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void

    .line 682
    :cond_0
    const-string v1, "Running Audio Focus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 686
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 689
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 690
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 691
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 687
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 693
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$21;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$21;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    .line 694
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 686
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 719
    :goto_0
    return-void
.end method

.method private selectCaption(Lcom/brightcove/player/model/Video;Ljava/lang/String;)V
    .locals 4
    .param p1, "video"    # Lcom/brightcove/player/model/Video;
    .param p2, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "video",
            "language"
        }
    .end annotation

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getCaptionsForLanguageCode(Lcom/brightcove/player/model/Video;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 414
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Lcom/brightcove/player/captioning/BrightcoveCaptionFormat;>;"
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brightcove://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

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

    .line 419
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "captionFormat"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "captionUri"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string v3, "selectClosedCaptionTrack"

    invoke-interface {v2, v3, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 424
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 116
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    nop

    .end local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TestIMA"

    const-string v2, "Clear Cache Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
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

    .line 738
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 741
    :pswitch_1
    sget-object v0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 742
    goto :goto_0

    .line 745
    :pswitch_2
    sget-object v0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 746
    goto :goto_0

    .line 748
    :pswitch_3
    sget-object v0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioFocusState:Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 749
    nop

    .line 752
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
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 141
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->setContentView(I)V

    .line 142
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 143
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->clearCache()V

    .line 146
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 147
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 148
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mApp:Lcom/tvbusa/encore/MainApplication;

    .line 150
    const/4 v0, 0x0

    const-string v1, "generalInfo"

    invoke-virtual {p0, v1, v0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, "generalInfo":Landroid/content/SharedPreferences;
    const-string v1, "deviceNumber"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    .line 152
    const-string v1, "VideoAdRule"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adRulesURL:Ljava/lang/String;

    .line 153
    const/4 v1, 0x3

    const-string v3, "MidRoll"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->numOfPod:I

    .line 154
    const-string v1, "clips"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->clips:Ljava/lang/String;

    .line 155
    const-string v1, "shortForm"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->shortForm:Ljava/lang/String;

    .line 156
    const-string v1, "longForm"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->longForm:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    const-string v2, "views"

    invoke-virtual {p0, v1, v2}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adRulesURL:Ljava/lang/String;

    const-string v2, "AdRule1"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 162
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 163
    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->id:Ljava/lang/String;

    .line 164
    const-string v3, "pid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->pid:Ljava/lang/String;

    .line 165
    const-string v3, "episodes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    .line 166
    const-string v3, "parent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    .line 167
    const-string v3, "banner"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->banner:Ljava/lang/String;

    .line 168
    const-string v3, "selectedIndex"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    .line 169
    const-string v3, "hasHistory"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->hasHistory:Ljava/lang/Boolean;

    .line 170
    const-string v3, "historyTime"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->historyTime:I

    .line 171
    const-string v3, "adconfig"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigType:I

    .line 174
    :cond_1
    iget v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigType:I

    const-string v4, "SSAAI"

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->clips:Ljava/lang/String;

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clips - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->shortForm:Ljava/lang/String;

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Short Form - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->longForm:Ljava/lang/String;

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Long Form - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    nop

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v3}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 193
    new-instance v4, Lcom/brightcove/player/edge/Catalog;

    const v5, 0x7f120027

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f12002a

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 194
    .local v3, "catalog":Lcom/brightcove/player/edge/Catalog;
    new-instance v4, Lcom/brightcove/ssai/SSAIComponent;

    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getBrightcoveVideoView()Lcom/brightcove/player/view/BrightcoveVideoView;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/brightcove/ssai/SSAIComponent;-><init>(Landroid/content/Context;Lcom/brightcove/player/view/BaseVideoView;)V

    .line 195
    .local v4, "plugin":Lcom/brightcove/ssai/SSAIComponent;
    new-instance v5, Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    invoke-direct {v5}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;-><init>()V

    iget-object v6, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    const-string v7, "ad_config_id"

    invoke-virtual {v5, v7, v6}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/brightcove/player/network/HttpRequestConfig$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/brightcove/player/network/HttpRequestConfig$Builder;->build()Lcom/brightcove/player/network/HttpRequestConfig;

    move-result-object v5

    .line 196
    .local v5, "config":Lcom/brightcove/player/network/HttpRequestConfig;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->adConfigId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AdConfig ID"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v6, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    iget v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v6}, Lcom/tvbusa/encore/Episode;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$1;

    invoke-direct {v7, p0, v4}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$1;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;Lcom/brightcove/ssai/SSAIComponent;)V

    invoke-virtual {v3, v6, v5, v7}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/network/HttpRequestConfig;Lcom/brightcove/player/edge/VideoListener;)V

    .line 214
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v6, "params":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Program View - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Analytics"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v8, "ProgramViews"

    invoke-virtual {v7, v8, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$2;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$2;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "captionsLanguages"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 233
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$3;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$3;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "startAdBreak"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 244
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$4;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$4;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "endAdBreak"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 254
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$5;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$5;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "seekTo"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 263
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$6;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$6;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "didSeekTo"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 271
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$7;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$7;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "cuePoint"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 278
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$8;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$8;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "startAd"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 290
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$9;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$9;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "progress"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 321
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$10;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$10;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "didSetVideo"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 329
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$11;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$11;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "audioTracks"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 354
    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    new-instance v8, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$12;

    invoke-direct {v8, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$12;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-string v9, "completed"

    invoke-interface {v7, v9, v8}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 369
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 105
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

    .line 462
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 480
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYUP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-super {p0, p1, p2}, Lcom/brightcove/player/view/BrightcovePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 476
    :sswitch_0
    return v0

    .line 478
    :sswitch_1
    return v0

    .line 474
    :sswitch_2
    return v0

    .line 471
    :sswitch_3
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->finish()V

    .line 472
    return v0

    .line 464
    :sswitch_4
    const-string v1, "HOMEE"

    const-string v2, "Hit Home"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const-string v2, "Hit Home Long Press"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->finish()V

    .line 469
    :cond_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x55 -> :sswitch_2
        0x59 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .line 494
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onPause()V

    .line 495
    const-string v0, "HOMEBTN"

    const-string v1, "This is On Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->finish()V

    .line 498
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 450
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 451
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->requestAudioFocus()V

    .line 452
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 456
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 457
    invoke-direct {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->abandonAudioFocus()Z

    .line 458
    return-void
.end method

.method public recordAR(II)V
    .locals 9
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

    .line 503
    iget-boolean v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->isFirstAdInThePod:Z

    const-string v1, "SSAAI"

    if-nez v0, :cond_0

    .line 505
    const-string v0, "Not Recording AR;"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 509
    :cond_0
    const-string v0, "First Ad Now Become False;"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->isFirstAdInThePod:Z

    .line 511
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 512
    .local v0, "hhh":Landroid/os/Handler;
    new-instance v1, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$15;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$15;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    .line 520
    .local v1, "percentage":I
    const-string v2, "TestIMA"

    const-string v3, "Record AR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ; Duration - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; Percentage - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_1

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preroll - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v4, p1, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v2, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    const-string v3, "AR"

    invoke-virtual {p0, v2, v3}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->recordFirebaseAR()V

    .line 527
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 528
    .local v2, "adParams":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v4, "AdRequest"

    invoke-virtual {v3, v4, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 530
    .end local v2    # "adParams":Landroid/os/Bundle;
    goto :goto_1

    .line 531
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->numOfPod:I

    if-ge v2, v3, :cond_2

    .line 532
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 533
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$16;

    invoke-direct {v4, p0, p1}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$16;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;I)V

    int-to-long v5, v2

    const-wide/16 v7, 0x3

    mul-long v5, v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    .end local v3    # "handler":Landroid/os/Handler;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public recordEventMinute()V
    .locals 10

    .line 427
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 428
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "token":Ljava/lang/String;
    const-string v2, "firetv"

    .line 430
    .local v2, "ppp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&plat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "params":Ljava/lang/String;
    const-string v4, "https://us-central1-encoretvb-faecb.cloudfunctions.net/fireTvEventMin"

    .line 432
    .local v4, "url":Ljava/lang/String;
    const-string v5, "application/x-www-form-urlencoded"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    .line 433
    .local v6, "mediaType":Lokhttp3/MediaType;
    invoke-static {v6, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 434
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

    .line 435
    .local v5, "request":Lokhttp3/Request;
    iget-object v8, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$14;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$14;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 446
    return-void
.end method

.method public recordFirebaseAR()V
    .locals 11

    .line 549
    const-string v0, "FirebaseAR"

    const-string v1, "Record Now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v1, "UserProfile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 551
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "token":Ljava/lang/String;
    if-nez v2, :cond_0

    return-void

    .line 553
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Now - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fireTvGenAdRequest"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 557
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 559
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v6, "plat"

    const-string v7, "firetv"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 564
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 566
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

    .line 568
    .local v0, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 570
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$17;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$17;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 577
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

    .line 613
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    const-string v1, "SN - Record History - "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 615
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

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 617
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    .line 618
    .local v1, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 619
    .local v2, "episode":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->pid:Ljava/lang/String;

    const-string v4, "pid"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "time"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    const-string v4, "p"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->banner:Ljava/lang/String;

    const-string v4, "b"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/Episode;->getImage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "t"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v3, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    iget v4, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/Episode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "n"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v3, "d"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v3, "user"

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v3

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    const-string v4, "history"

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v3

    iget-object v4, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->pid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 628
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

    .line 580
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 581
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "token":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvRecordHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 585
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 587
    .local v5, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "t"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string v6, "pid"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->pid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string v6, "vid"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/Episode;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const-string v6, "time"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 591
    const-string v6, "p"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    const-string v6, "img"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/Episode;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    const-string v6, "n"

    iget-object v7, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->episodes:Ljava/util/List;

    iget v8, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->selectedIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tvbusa/encore/Episode;

    invoke-virtual {v7}, Lcom/tvbusa/encore/Episode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    const-string v6, "d"

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 597
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 599
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

    .line 601
    .local v3, "request":Lokhttp3/Request;
    const-string v8, "FavThis"

    const-string v9, "Run DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 603
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$18;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$18;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 610
    return-void
.end method

.method public recordMinutes()V
    .locals 7

    .line 631
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":30}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvTimePing"

    .line 635
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 636
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 637
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 638
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$19;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$19;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 651
    return-void
.end method

.method public recordRebateMin()V
    .locals 7

    .line 372
    iget-object v0, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SN - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RebateMin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"p\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"dsn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":30}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvRebateMin"

    .line 376
    .local v1, "url":Ljava/lang/String;
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 377
    .local v2, "JSON":Lokhttp3/MediaType;
    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 378
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 379
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$13;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$13;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 392
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

    .line 654
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 655
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

    .line 656
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 657
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 658
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 659
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 660
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 661
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$20;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/BCOVSSAIPlayerActivity$20;-><init>(Lcom/tvbusa/encore/BCOVSSAIPlayerActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 674
    return-void
.end method
