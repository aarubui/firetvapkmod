.class public Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;
.super Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;
.source "LiveVideoPlaybackActivity.java"

# interfaces
.implements Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;,
        Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;
    }
.end annotation


# static fields
.field public static final LivePlaybackPremiumContentLoginRequestCode:I = 0x4e21

.field public static final PARAM_CHANNEL_SLUG:Ljava/lang/String; = "channel_slug"

.field public static final PARAM_DEFAULT_CHANNEL_SLUG:Ljava/lang/String; = "default_channel_slug"

.field public static final PARAM_REQUIRED_LOGIN:Ljava/lang/String; = "required_login"

.field private static final TAG:Ljava/lang/String; = "LiveVideoPlayActivity"


# instance fields
.field eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

.field liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

.field private mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

.field private mAudioTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/longtailvideo/jwplayer/media/audio/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

.field private mChannelSlug:Ljava/lang/String;

.field private mChannelsHandler:Landroid/os/Handler;

.field private mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

.field private mEPGHandler:Landroid/os/Handler;

.field mJWPlayerContainer:Landroid/widget/RelativeLayout;

.field mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mSendChannelsRequestRunnable:Ljava/lang/Runnable;

.field private mSendEPGRequestRunnable:Ljava/lang/Runnable;

.field private mSendSlateRequestRunnable:Ljava/lang/Runnable;

.field private mSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field mSlateView:Landroid/widget/TextView;

.field private mSlatesHandler:Landroid/os/Handler;

.field mSlatesRefreshTime:J

.field private mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

.field private playerCurrentAudioIndex:I

.field playerErrorMsg:Ljava/lang/String;

.field playerErrorRetryText:Ljava/lang/String;

.field private playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

.field private playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

.field user:Lcom/hktve/viutv/model/viutv/user/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;-><init>()V

    const-wide/16 v0, -0x1

    .line 86
    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 94
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshSlate()V

    return-void
.end method

.method static synthetic access$100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshEPG()V

    return-void
.end method

.method static synthetic access$1000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->showRetryError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)J
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshChannels()V

    return-void
.end method

.method static synthetic access$2000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p0
.end method

.method static synthetic access$2502(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p1
.end method

.method static synthetic access$2600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    return-void
.end method

.method static synthetic access$2700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->addWatermarkView()V

    return-void
.end method

.method static synthetic access$2800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->onVideoCompleteAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p0
.end method

.method static synthetic access$302(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/ad/AdSpec;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Z)V
    .locals 0

    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/longtailvideo/jwplayer/JWPlayerView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p0
.end method

.method static synthetic access$602(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/channel/Channel;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p1
.end method

.method static synthetic access$700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addWatermarkView()V
    .locals 6

    const-string v0, "Vincent"

    const-string v1, "addWatermarkView"

    .line 1102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1104
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1106
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1107
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1108
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1109
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x64

    .line 1110
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x4008cccccccccccdL    # 3.1

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 1112
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x64

    .line 1113
    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x64

    .line 1115
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 1116
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1117
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0xb

    .line 1118
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1119
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1120
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v4}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Z)V
    .locals 8
    .param p3    # Lcom/hktve/viutv/model/viutv/ad/AdSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hktve/viutv/model/viutv/ad/AdSpec;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 604
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    .line 606
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 607
    iget-object v3, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    goto :cond_0

    .line 609
    iget-object v3, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v3, v3, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 610
    :goto_0
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 612
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 613
    invoke-virtual {p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdUrl(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 614
    new-instance v5, Lcom/longtailvideo/jwplayer/media/ads/AdBreak;

    sget-object v6, Lcom/longtailvideo/jwplayer/media/ads/AdSource;->IMA:Lcom/longtailvideo/jwplayer/media/ads/AdSource;

    new-array v7, v0, [Ljava/lang/String;

    aput-object v4, v7, v2

    const-string v4, "pre"

    invoke-direct {v5, v4, v6, v7}, Lcom/longtailvideo/jwplayer/media/ads/AdBreak;-><init>(Ljava/lang/String;Lcom/longtailvideo/jwplayer/media/ads/AdSource;[Ljava/lang/String;)V

    .line 615
    invoke-virtual {p4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    invoke-static {v4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;->access$2208(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    :cond_0
    new-instance p3, Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;

    invoke-direct {p3}, Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;-><init>()V

    .line 623
    invoke-virtual {p3, p1}, Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;->file(Ljava/lang/String;)Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;

    move-result-object p3

    new-instance v3, Lcom/hktve/viutv/controller/page/player/DRMCallback;

    invoke-direct {v3, p2}, Lcom/hktve/viutv/controller/page/player/DRMCallback;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p3, v3}, Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;->mediaDrmCallback(Lcom/longtailvideo/jwplayer/media/drm/MediaDrmCallback;)Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;

    move-result-object p2

    .line 625
    invoke-virtual {p2}, Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;->build()Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem;

    move-result-object p2

    if-eqz p5, :cond_1

    .line 628
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-TRD.srt"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 629
    new-instance p3, Lcom/longtailvideo/jwplayer/media/captions/Caption;

    invoke-direct {p3, p1}, Lcom/longtailvideo/jwplayer/media/captions/Caption;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem;->setCaptions(Ljava/util/List;)V

    .line 632
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance p2, Lcom/longtailvideo/jwplayer/media/ads/ImaAdvertising;

    invoke-direct {p2, p4}, Lcom/longtailvideo/jwplayer/media/ads/ImaAdvertising;-><init>(Ljava/util/List;)V

    .line 636
    new-instance p3, Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig$Builder;

    invoke-direct {p3}, Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig$Builder;-><init>()V

    .line 637
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig$Builder;->backgroundOpacity(Ljava/lang/Integer;)Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig$Builder;

    move-result-object p3

    const-string p4, "raised"

    .line 638
    invoke-virtual {p3, p4}, Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig$Builder;->edgeStyle(Ljava/lang/String;)Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig$Builder;

    move-result-object p3

    .line 639
    invoke-virtual {p3}, Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig$Builder;->build()Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig;

    move-result-object p3

    .line 641
    new-instance p4, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;

    invoke-direct {p4}, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;-><init>()V

    .line 642
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;->autostart(Ljava/lang/Boolean;)Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;

    move-result-object p4

    .line 643
    invoke-virtual {p4, p1}, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;->playlist(Ljava/util/List;)Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 644
    invoke-virtual {p1, p3}, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;->captionsConfig(Lcom/longtailvideo/jwplayer/configuration/CaptionsConfig;)Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 645
    invoke-virtual {p1, p2}, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;->advertising(Lcom/longtailvideo/jwplayer/media/ads/AdvertisingBase;)Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 646
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;->controls(Ljava/lang/Boolean;)Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 647
    invoke-virtual {p1}, Lcom/longtailvideo/jwplayer/configuration/PlayerConfig$Builder;->build()Lcom/longtailvideo/jwplayer/configuration/PlayerConfig;

    move-result-object p1

    .line 648
    new-instance p2, Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-direct {p2, p0, p1}, Lcom/longtailvideo/jwplayer/JWPlayerView;-><init>(Landroid/content/Context;Lcom/longtailvideo/jwplayer/configuration/PlayerConfig;)V

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    .line 649
    new-instance p1, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-direct {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;-><init>(Lcom/longtailvideo/jwplayer/JWPlayerView;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    .line 650
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    invoke-virtual {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->setEventListener(Lcom/hktve/viutv/controller/page/player/PlayerEventListener;)V

    .line 651
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 652
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 653
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {p2, p1}, Lcom/longtailvideo/jwplayer/JWPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_2

    .line 656
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {p1, v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->setCurrentCaptions(I)V

    .line 659
    :cond_2
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 661
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string p2, "MusicService"

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 662
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;

    invoke-direct {p2, p0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 663
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 667
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 668
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 669
    invoke-virtual {p2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 670
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const p2, 0x7f080257

    .line 671
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 672
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;

    const/16 p3, 0x320

    const/16 p4, 0x1c2

    invoke-direct {p2, p0, p3, p4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;II)V

    .line 673
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private currentPlayCardState()I
    .locals 4

    .line 726
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 727
    sget-object v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$11;->$SwitchMap$com$longtailvideo$jwplayer$core$PlayerState:[I

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v2}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getState()Lcom/longtailvideo/jwplayer/core/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/longtailvideo/jwplayer/core/PlayerState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x6

    return v0

    :cond_2
    return v2

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v1
.end method

.method private getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hktve/viutv/model/viutv/live/Slates;",
            ">;)",
            "Lcom/hktve/viutv/model/viutv/live/Slates;"
        }
    .end annotation

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hktve/viutv/model/viutv/live/Slates;

    .line 310
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->getEndDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hktve/viutv/model/viutv/live/Slates;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNextSlateRefreshTimestamp()J
    .locals 4

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hktve/viutv/model/viutv/live/Slates;",
            ">;)",
            "Lcom/hktve/viutv/model/viutv/live/Slates;"
        }
    .end annotation

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hktve/viutv/model/viutv/live/Slates;

    .line 325
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hktve/viutv/model/viutv/live/Slates;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LiveWatermark"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->getEndDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hktve/viutv/model/viutv/live/Slates;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private onVideoCompleteAction()V
    .locals 4

    .line 855
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 857
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    .line 858
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->tickle()V

    .line 859
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 862
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 864
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_channel_slug"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channel_slug"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 867
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private refreshChannels()V
    .locals 2

    .line 467
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannels()Lrx/Observable;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 470
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 471
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 472
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshEPG()V
    .locals 2

    .line 355
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 357
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 358
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 359
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshSlate()V
    .locals 2

    .line 411
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 412
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 414
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 415
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$6;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$6;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 416
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private sendInitialRequests()V
    .locals 2

    .line 181
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 183
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 184
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/-$$Lambda$LiveVideoPlaybackActivity$QY4pXXB2VtLuxtE_Ghl4XEQYdLU;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/-$$Lambda$LiveVideoPlaybackActivity$QY4pXXB2VtLuxtE_Ghl4XEQYdLU;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 185
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 212
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 213
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/-$$Lambda$LiveVideoPlaybackActivity$jM4WaOlp4s-Otb6cXZfy1AT_Hzo;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/-$$Lambda$LiveVideoPlaybackActivity$jM4WaOlp4s-Otb6cXZfy1AT_Hzo;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 214
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 254
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 255
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 256
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 684
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 687
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    const-string v3, "android.media.metadata.TITLE"

    const-string v4, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v6, "android.media.metadata.DISPLAY_TITLE"

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    .line 691
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    .line 690
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 693
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v6

    .line 692
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 694
    iget-object v5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 695
    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v5

    .line 694
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 698
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 699
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 703
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const/4 v1, 0x0

    .line 704
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 706
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 707
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v1

    .line 706
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 709
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 710
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 711
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "android.media.metadata.ART"

    .line 716
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 720
    :cond_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 5

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 346
    :cond_0
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/live/Slates;->getStartDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hktve/viutv/model/viutv/live/Slates;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method private showRetryError()V
    .locals 3

    const-string v0, "Vincent"

    const-string v1, "show retry error"

    .line 872
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;-><init>()V

    .line 874
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->errorMsg:Ljava/lang/String;

    .line 875
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->retryButtonMsg:Ljava/lang/String;

    .line 876
    invoke-virtual {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->setVideoPlaybackActivity(Landroid/app/Activity;)V

    .line 877
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 878
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    .line 879
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const v2, 0x7f0a00b7

    .line 880
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 881
    invoke-virtual {p0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 882
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private updateNowPlayingStatePosition()V
    .locals 5

    .line 743
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x24e

    .line 744
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 749
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->currentPlayCardState()I

    move-result v1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 750
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getState()Lcom/longtailvideo/jwplayer/core/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/longtailvideo/jwplayer/core/PlayerState;->PLAYING:Lcom/longtailvideo/jwplayer/core/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$sendInitialRequests$0$LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;)Lrx/Observable;
    .locals 5

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInitialRequests call() called with: channelEPGResp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveVideoPlayActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 188
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getAd_spec()Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    .line 189
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setChannel(Lcom/hktve/viutv/model/viutv/channel/Channel;)V

    .line 192
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    :cond_0
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setCurrentEPG(Lcom/hktve/viutv/model/viutv/EPG;)V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {v0}, Lcom/hktve/viutv/util/Util;->getNextRefreshChannelListTimestamp(Ljava/util/List;)J

    move-result-wide v2

    .line 204
    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getNextRefreshDelay(J)J

    move-result-wide v2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh channel list after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :cond_1
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 210
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getSlug()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$sendInitialRequests$1$LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/SlatesResp;)Lrx/Observable;
    .locals 6

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInitialRequests call() called with: slatesResp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveVideoPlayActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 218
    iget-object v3, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object v3

    .line 219
    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p1

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextWatermark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LiveWatermark"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v4, p1}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    .line 223
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 224
    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/live/Slates;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 236
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSlateResponse: mSlatesRefreshTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getTimeDifferent(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    const/4 p1, 0x0

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNoForVod()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;

    invoke-direct {v1, p0, v0}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->request()Lrx/Single;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    .line 251
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-static {v0, p1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1082
    invoke-super {p0, p1, p2, p3}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4e21

    if-ne p1, p3, :cond_1

    const/16 p1, 0x232a

    if-ne p2, p1, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->recreate()V

    goto :goto_0

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 137
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110188

    .line 138
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    const p1, 0x7f110191

    .line 139
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    .line 140
    new-instance p1, Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    .line 141
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const p1, 0x7f0d001c

    .line 142
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0a01bb

    .line 143
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a01b1

    .line 144
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const p1, 0x7f0a01dc

    .line 145
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "required_login"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 147
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "channel_slug"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result p1

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/hktve/viutv/controller/page/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4e21

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "onOpenLogin"

    const-string v2, "exclusive"

    invoke-virtual {p1, v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f0a00cc

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-nez p1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 160
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 161
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 164
    instance-of v2, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-eqz v2, :cond_2

    .line 165
    check-cast p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    goto :goto_0

    .line 167
    :cond_2
    new-instance p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    .line 168
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 174
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 176
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "Live"

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->sendInitialRequests()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->onDestroy()V

    .line 578
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/longtailvideo/jwplayer/JWPlayerView;->load(Ljava/util/List;)V

    .line 579
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->onDestroy()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 588
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 589
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 592
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 595
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    if-eqz v0, :cond_5

    .line 598
    invoke-virtual {v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->onDestroy()V

    .line 600
    :cond_5
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 538
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onPause()V

    .line 541
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getState()Lcom/longtailvideo/jwplayer/core/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/longtailvideo/jwplayer/core/PlayerState;->PLAYING:Lcom/longtailvideo/jwplayer/core/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 544
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->onPause()V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->onPause()V

    :cond_1
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 529
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onResume()V

    .line 531
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 523
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->skipLocale:Ljava/lang/Boolean;

    .line 524
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onStart()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->onPause()V

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 570
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public playNextVideo()V
    .locals 0

    return-void
.end method

.method public playPause()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 761
    :cond_0
    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getState()Lcom/longtailvideo/jwplayer/core/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/longtailvideo/jwplayer/core/PlayerState;->PLAYING:Lcom/longtailvideo/jwplayer/core/PlayerState;

    if-ne v0, v1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->pause()V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->play()V

    :goto_0
    return-void
.end method

.method public playPreviousVideo()V
    .locals 0

    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public seekBackward()V
    .locals 0

    return-void
.end method

.method public seekForward()V
    .locals 0

    return-void
.end method

.method public showAudioChannelMenu()V
    .locals 8

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v1}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 788
    :goto_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v3}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getAudioTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/16 v3, 0xa

    const v4, 0x7f110185

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "label_number_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {v4, v3, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 794
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 800
    iget v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    invoke-static {v0, v3}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;

    move-result-object v0

    const v3, 0x7f1200ab

    .line 801
    invoke-virtual {v0, v2, v3}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setStyle(II)V

    .line 802
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "AudioMenuDialogFragment"

    .line 809
    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showCaptionMenu()V
    .locals 0

    return-void
.end method

.method public showQualityMenu()V
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 823
    :cond_0
    invoke-virtual {v0}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getQualityLevels()Ljava/util/List;

    move-result-object v0

    .line 826
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 827
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 828
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/longtailvideo/jwplayer/media/adaptive/QualityLevel;

    invoke-virtual {v4}, Lcom/longtailvideo/jwplayer/media/adaptive/QualityLevel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 832
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/longtailvideo/jwplayer/JWPlayerView;

    invoke-virtual {v3}, Lcom/longtailvideo/jwplayer/JWPlayerView;->getCurrentQuality()I

    move-result v3

    invoke-static {v1, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;

    move-result-object v1

    const v3, 0x7f1200ab

    .line 833
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setStyle(II)V

    .line 834
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "QualityMenuDialogFragment"

    .line 840
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
