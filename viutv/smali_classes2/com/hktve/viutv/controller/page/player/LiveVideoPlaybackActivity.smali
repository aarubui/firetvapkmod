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

.field public static final PARAM_PREFER_AUDIO_INDEX:Ljava/lang/String; = "prefer_audio_track_index"

.field public static final PARAM_REQUIRED_LOGIN:Ljava/lang/String; = "required_login"

.field public static final PARAM_SKIP_ADS:Ljava/lang/String; = "skip_ads"

.field private static final TAG:Ljava/lang/String; = "LiveVideoPlayActivity"

.field private static final VPN_ERROR:Ljava/lang/String; = "VPN_ERROR"


# instance fields
.field eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private isAdPlaying:Z

.field private isVideoPlayed:Z

.field liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

.field private mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

.field private mAudioTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jwplayer/pub/api/media/audio/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

.field private mChannelSlug:Ljava/lang/String;

.field private mChannelsHandler:Landroid/os/Handler;

.field private mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

.field private mEPGHandler:Landroid/os/Handler;

.field private mIsRequiredLogin:Z

.field mJWPlayerContainer:Landroid/widget/RelativeLayout;

.field mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mSendChannelsRequestRunnable:Ljava/lang/Runnable;

.field private mSendEPGRequestRunnable:Ljava/lang/Runnable;

.field private mSendSlateRequestRunnable:Ljava/lang/Runnable;

.field private mSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mSessionTimeoutHandler:Landroid/os/Handler;

.field private mSessionTimeoutRunnable:Ljava/lang/Runnable;

.field private mShouldSkipAds:Z

.field mSlateView:Landroid/widget/TextView;

.field private mSlatesHandler:Landroid/os/Handler;

.field mSlatesRefreshTime:J

.field private mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

.field private player:Lcom/jwplayer/pub/api/JWPlayer;

.field private playerCurrentAudioIndex:I

.field playerErrorMsg:Ljava/lang/String;

.field playerErrorRetryText:Ljava/lang/String;

.field private playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

.field private playerView:Lcom/jwplayer/pub/view/JWPlayerView;

.field private plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

.field user:Lcom/hktve/viutv/model/viutv/user/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;-><init>()V

    const-wide/16 v0, -0x1

    .line 104
    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 115
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    .line 122
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    .line 130
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    .line 134
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    .line 138
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    .line 140
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    .line 169
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshSlate()V

    return-void
.end method

.method static synthetic access$100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshEPG()V

    return-void
.end method

.method static synthetic access$1000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->showRetryError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/npaw/youbora/lib6/plugin/Plugin;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshChannels()V

    return-void
.end method

.method static synthetic access$2000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)J
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p0
.end method

.method static synthetic access$2902(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->onSessionTimeout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateYbOptions()V

    return-void
.end method

.method static synthetic access$3100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    return-void
.end method

.method static synthetic access$3200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->addWatermarkView()V

    return-void
.end method

.method static synthetic access$3300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startTrackVideoPlay()V

    return-void
.end method

.method static synthetic access$3800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->onVideoCompleteAction()V

    return-void
.end method

.method static synthetic access$3900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    return p0
.end method

.method static synthetic access$3902(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setPlayerContainerMargin(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/channel/Channel;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p0
.end method

.method static synthetic access$502(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/ad/AdSpec;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Z)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/jwplayer/pub/api/JWPlayer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private addWatermarkView()V
    .locals 6

    const-string v0, "Vincent"

    const-string v1, "addWatermarkView"

    .line 1540
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1542
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1544
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1545
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1546
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1547
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x64

    .line 1548
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x4008cccccccccccdL    # 3.1

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 1550
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x64

    .line 1551
    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x64

    .line 1553
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 1554
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1555
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0xb

    .line 1556
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1557
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1558
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v4}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Z)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 776
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 778
    new-instance v4, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    iput-object v4, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    .line 779
    iget-boolean v4, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mShouldSkipAds:Z

    const-string v6, "FS"

    const-string v7, "container_pos"

    const-string v8, "live_player"

    const-string v9, "container_title"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    goto :cond_1

    .line 781
    iget-object v4, v2, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 782
    :goto_0
    iget-object v12, v2, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v12, v12, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_0

    .line 783
    iget-object v12, v2, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v12, v12, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 784
    invoke-virtual/range {p3 .. p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    invoke-static {v13, v12, v14}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdUrl(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 785
    new-instance v13, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    invoke-direct {v13}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;-><init>()V

    const-string v14, "pre"

    .line 786
    invoke-virtual {v13, v14}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->offset(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v13

    new-array v14, v11, [Ljava/lang/String;

    aput-object v12, v14, v10

    .line 787
    invoke-virtual {v13, v14}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->tag([Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v12

    .line 788
    invoke-virtual {v12}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->build()Lcom/jwplayer/pub/api/media/ads/AdBreak;

    move-result-object v12

    .line 789
    invoke-virtual {v3, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v12, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    invoke-static {v12}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;->access$2508(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;)I

    .line 791
    iget-object v12, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    invoke-static {v12}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;->access$2608(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 793
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 794
    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v4, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v12, "time"

    invoke-virtual {v2, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ad_pos"

    const-string v12, "preroll1"

    .line 797
    invoke-virtual {v2, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-static/range {p0 .. p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v4

    const-string v12, "ad_request"

    invoke-virtual {v4, v12, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 804
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_2

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ".m3u8"

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-TRD.srt"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 807
    new-instance v12, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    invoke-direct {v12}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;-><init>()V

    .line 808
    invoke-virtual {v12, v4}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object v4

    sget-object v12, Lcom/jwplayer/pub/api/media/captions/CaptionType;->CAPTIONS:Lcom/jwplayer/pub/api/media/captions/CaptionType;

    .line 809
    invoke-virtual {v4, v12}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->kind(Lcom/jwplayer/pub/api/media/captions/CaptionType;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object v4

    .line 810
    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->build()Lcom/jwplayer/pub/api/media/captions/Caption;

    move-result-object v4

    .line 811
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_2
    new-instance v4, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    invoke-direct {v4}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;-><init>()V

    .line 815
    invoke-virtual {v4, v1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object v1

    new-instance v4, Lcom/hktve/viutv/controller/page/player/DRMCallback;

    move-object/from16 v12, p2

    invoke-direct {v4, v12}, Lcom/hktve/viutv/controller/page/player/DRMCallback;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v1, v4}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->mediaDrmCallback(Lcom/jwplayer/pub/api/media/drm/MediaDrmCallback;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object v1

    .line 817
    invoke-virtual {v1, v2}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->tracks(Ljava/util/List;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object v1

    .line 818
    invoke-virtual {v1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->build()Lcom/jwplayer/pub/api/media/playlists/PlaylistItem;

    move-result-object v1

    .line 820
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 821
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v1

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f13022b

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    .line 825
    new-instance v4, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    invoke-direct {v4}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->imaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->schedule(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig;

    move-result-object v1

    .line 832
    new-instance v3, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    invoke-direct {v3}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;-><init>()V

    .line 833
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->autostart(Ljava/lang/Boolean;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v3

    .line 834
    invoke-virtual {v3, v2}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->playlist(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v2

    .line 836
    invoke-virtual {v2, v1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->advertisingConfig(Lcom/jwplayer/pub/api/configuration/ads/AdvertisingConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    invoke-direct {v2}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;-><init>()V

    .line 837
    invoke-virtual {v2}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->hideAllControls()Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/UiConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->uiConfig(Lcom/jwplayer/pub/api/configuration/UiConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v1

    .line 838
    invoke-virtual {v1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/PlayerConfig;

    move-result-object v1

    .line 840
    new-instance v2, Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-direct {v2, v0}, Lcom/jwplayer/pub/view/JWPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    .line 841
    invoke-virtual {v2, v0}, Lcom/jwplayer/pub/view/JWPlayerView;->getPlayer(Landroidx/lifecycle/LifecycleOwner;)Lcom/jwplayer/pub/api/JWPlayer;

    move-result-object v2

    iput-object v2, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    .line 842
    invoke-interface {v2, v1}, Lcom/jwplayer/pub/api/JWPlayer;->setup(Lcom/jwplayer/pub/api/configuration/PlayerConfig;)V

    .line 843
    new-instance v1, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {v1, v2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    .line 844
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->setEventListener(Lcom/hktve/viutv/controller/page/player/PlayerEventListener;)V

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object v1

    .line 846
    new-instance v2, Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/npaw/youbora/lib6/plugin/Plugin;-><init>(Lcom/npaw/youbora/lib6/plugin/Options;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 847
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setActivity(Landroid/app/Activity;)V

    .line 848
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance v2, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdapter;

    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {v2, v3}, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdapter(Lcom/npaw/youbora/lib6/adapter/PlayerAdapter;)V

    .line 849
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance v2, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdsAdapter;

    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {v2, v3}, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdsAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdsAdapter(Lcom/npaw/youbora/lib6/adapter/AdAdapter;)V

    .line 851
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 852
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 853
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {v2, v1}, Lcom/jwplayer/pub/view/JWPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_3

    .line 856
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1, v11}, Lcom/jwplayer/pub/api/JWPlayer;->setCurrentCaptions(I)V

    .line 859
    :cond_3
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 861
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v2, "MusicService"

    invoke-direct {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 862
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;

    invoke-direct {v2, v0, v5}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 863
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 867
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 868
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 869
    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 870
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    const v3, 0x7f0802f5

    .line 871
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 872
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v3, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;

    const/16 v4, 0x320

    const/16 v5, 0x1c2

    invoke-direct {v3, v0, v4, v5}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;II)V

    .line 873
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 880
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 881
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v3

    const-string v4, "video_info_en"

    const-string v5, "video_info"

    if-eqz v3, :cond_4

    new-array v3, v2, [Ljava/lang/Object;

    .line 884
    iget-object v6, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    iget-object v6, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/EPG;->getZhTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    iget-object v6, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_number()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    const-string v6, "%s %s \u7b2c%s\u96c6"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 886
    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/EPG;->getEnTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_number()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "%s %s Episode No: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-array v2, v11, [Ljava/lang/Object;

    .line 889
    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "%s no_programme_name"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v11, [Ljava/lang/Object;

    .line 890
    iget-object v5, v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v10

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v2

    const-string v3, "player_load_complete"

    invoke-virtual {v2, v3, v1}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 10

    .line 897
    new-instance v0, Lcom/npaw/youbora/lib6/plugin/Options;

    invoke-direct {v0}, Lcom/npaw/youbora/lib6/plugin/Options;-><init>()V

    const/4 v1, 0x1

    .line 899
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentIsLive(Ljava/lang/Boolean;)V

    const-string v1, "viutv"

    .line 900
    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setAccountCode(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 901
    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setOffline(Z)V

    .line 902
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 903
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setUsername(Ljava/lang/String;)V

    :cond_0
    const-string v2, "ViuTV"

    .line 906
    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppName(Ljava/lang/String;)V

    const-string v2, "2.3.1"

    .line 907
    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppReleaseVersion(Ljava/lang/String;)V

    .line 914
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_5

    .line 916
    :try_start_1
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    .line 917
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, " - "

    if-eqz v4, :cond_3

    .line 918
    :try_start_2
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v4

    if-ltz v4, :cond_1

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 922
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 924
    :goto_0
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v5

    .line 925
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v6

    .line 926
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    .line 927
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductHktamCleanVersionId()Ljava/lang/String;

    move-result-object v8

    .line 928
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgrammeMeta()Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 929
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgrammeMeta()Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getEpisodesCount()I

    move-result v1

    move v2, v1

    move v1, v6

    goto :goto_3

    :cond_2
    move v1, v6

    goto :goto_2

    .line 933
    :cond_3
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 937
    :cond_4
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v4

    .line 939
    :goto_1
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v5

    .line 940
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    :goto_2
    const/4 v2, 0x0

    .line 942
    :goto_3
    invoke-virtual {v0, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 946
    :cond_5
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    const/4 v2, 0x0

    .line 948
    :goto_4
    iget-object v6, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v6

    .line 949
    invoke-virtual {v0, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    .line 950
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 951
    invoke-virtual {v0, v5}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentEpisodeTitle(Ljava/lang/String;)V

    :cond_6
    if-lez v1, :cond_7

    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension1(Ljava/lang/String;)V

    :cond_7
    if-eqz v7, :cond_8

    .line 956
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 957
    invoke-virtual {v0, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setProgram(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTvShow(Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_9

    .line 960
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 961
    invoke-virtual {v0, v8}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension2(Ljava/lang/String;)V

    :cond_9
    if-lez v2, :cond_a

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension3(Ljava/lang/String;)V

    .line 966
    :cond_a
    invoke-virtual {v0, v6}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 969
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CreateOption"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v0
.end method

.method private currentPlayCardState()I
    .locals 3

    .line 1041
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_3

    .line 1042
    sget-object v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$13;->$SwitchMap$com$jwplayer$pub$api$PlayerState:[I

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jwplayer/pub/api/PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    return v0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
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

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 432
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hktve/viutv/model/viutv/live/Slates;

    .line 433
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 436
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

    .line 461
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

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 447
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

    .line 448
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
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

    .line 450
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

.method static synthetic lambda$sendInitialRequests$2(Ljava/lang/Throwable;)Lrx/Observable;
    .locals 0

    const/4 p0, 0x0

    .line 322
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method private onSessionTimeout()V
    .locals 4

    const-string v0, "LiveVideoPlayActivity"

    const-string v1, "current live stream session timeout"

    .line 657
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 659
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_channel_slug"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channel_slug"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const-string v2, "prefer_audio_track_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "skip_ads"

    const/4 v2, 0x1

    .line 662
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 664
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onVideoCompleteAction()V
    .locals 4

    .line 1178
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 1180
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    .line 1181
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->tickle()V

    .line 1182
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1187
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_channel_slug"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channel_slug"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 1190
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private refreshChannels()V
    .locals 2

    .line 600
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannels()Lrx/Observable;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 603
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 604
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 605
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshEPG()V
    .locals 2

    .line 478
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 480
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 481
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 482
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshSlate()V
    .locals 2

    .line 544
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 545
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 547
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 548
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 549
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private sendInitialRequests()V
    .locals 2

    .line 257
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 259
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 260
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda0;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 261
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 305
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 306
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda1;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 307
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 319
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 320
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda4;

    .line 321
    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda3;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 324
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 331
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 332
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda2;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 333
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 372
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 373
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$6;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$6;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 374
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private setPlayerContainerMargin(I)V
    .locals 2

    int-to-float p1, p1

    .line 986
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 985
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 988
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 992
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 993
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V
    .locals 8

    const-string v0, "UpdateOptions"

    const-string v1, "setupSystemNowPlayerCard"

    .line 997
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 1002
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    const-string v3, "android.media.metadata.TITLE"

    const-string v4, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v6, "android.media.metadata.DISPLAY_TITLE"

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    .line 1006
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    .line 1005
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1008
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v6

    .line 1007
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1009
    iget-object v5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1010
    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v5

    .line 1009
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1013
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1014
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1018
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const/4 v1, 0x0

    .line 1019
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1021
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1022
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1024
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1025
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1026
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "android.media.metadata.ART"

    .line 1031
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1035
    :cond_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 5

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 469
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

.method private showRetryError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Vincent"

    const-string v1, "show retry error"

    .line 1195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1197
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    :goto_0
    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->errorMsg:Ljava/lang/String;

    .line 1198
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->retryButtonMsg:Ljava/lang/String;

    .line 1199
    invoke-virtual {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->setVideoPlaybackActivity(Landroid/app/Activity;)V

    .line 1200
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 1201
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/16 v1, 0x1001

    .line 1202
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0b01a0

    .line 1203
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1204
    invoke-virtual {p0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private startTrackVideoPlay()V
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3c

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private toTimeString(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 1562
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 1563
    div-long v2, p1, v0

    .line 1564
    rem-long v0, p1, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 1565
    rem-long/2addr p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1566
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "%02d:%02d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private updateNowPlayingStatePosition()V
    .locals 5

    .line 1058
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x24e

    .line 1059
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 1064
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->currentPlayCardState()I

    move-result v1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1065
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private updateYbOptions()V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    if-eqz v1, :cond_0

    .line 976
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->getOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object v0

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentLanguage(Ljava/lang/String;)V

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setContentLanguage:language "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateOptions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3

    .line 1532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "container_title"

    const-string v2, "live_player"

    .line 1533
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "container_pos"

    const-string v2, "FS"

    .line 1534
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const-string p1, "unmute"

    goto :goto_0

    :cond_0
    const-string p1, "mute"

    :goto_0
    const-string v1, "volume_status"

    .line 1535
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    const-string v1, "change_volume"

    invoke-virtual {p1, v1, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 1524
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$sendInitialRequests$0$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;)Lrx/Observable;
    .locals 10

    .line 262
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

    .line 263
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 264
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getAd_spec()Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    .line 265
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setChannel(Lcom/hktve/viutv/model/viutv/channel/Channel;)V

    .line 268
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setCurrentEPG(Lcom/hktve/viutv/model/viutv/EPG;)V

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "container_title"

    const-string v3, "live_player"

    .line 276
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "container_pos"

    const-string v3, "FS"

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    const-string v3, "video_info_en"

    const-string v4, "video_info"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    .line 279
    iget-object v8, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/EPG;->getZhTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_number()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string v8, "%s %s \u7b2c%s\u96c6"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 280
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 281
    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/EPG;->getEnTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_number()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    const-string v4, "%s %s Episode No: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 284
    iget-object v7, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "%s no_programme_name"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/Object;

    .line 285
    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v2

    const-string v3, "player_load_start"

    invoke-virtual {v2, v3, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {v0}, Lcom/hktve/viutv/util/Util;->getNextRefreshChannelListTimestamp(Ljava/util/List;)J

    move-result-wide v2

    .line 294
    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getNextRefreshDelay(J)J

    move-result-wide v2

    .line 295
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

    .line 296
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 298
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getSlug()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 302
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$1$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/EPGResp;)Lrx/Observable;
    .locals 2

    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object v1, p1, Lcom/hktve/viutv/model/viutv/network/EPGResp;->epgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setEpgs(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/EPGResp;->epgs:Ljava/util/List;

    invoke-static {p1}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setCurrentEPG(Lcom/hktve/viutv/model/viutv/EPG;)V

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->isBlockVPN()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 313
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->checkVPN()Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 316
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$3$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/VPNCheckResp;)Lrx/Observable;
    .locals 1

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/network/VPNCheckResp;->isVPN()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "VPN_ERROR"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 329
    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$4$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/SlatesResp;)Lrx/Observable;
    .locals 6

    .line 334
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

    .line 337
    iget-object v3, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object v3

    .line 338
    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p1

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextWatermark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LiveWatermark"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v4, p1}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    .line 342
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 343
    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/live/Slates;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
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

    .line 359
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getTimeDifferent(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, p1

    goto :goto_1

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    .line 365
    :goto_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNoForVod()Ljava/lang/String;

    move-result-object p1

    .line 366
    new-instance v0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;

    invoke-direct {v0, p0, p1}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->request()Lrx/Single;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object p1

    .line 369
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 370
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1, v0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1512
    invoke-super {p0, p1, p2, p3}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4e21

    if-ne p1, p3, :cond_1

    const/16 p1, 0x232a

    if-ne p2, p1, :cond_0

    .line 1515
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->recreate()V

    goto :goto_0

    .line 1517
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 178
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13022a

    .line 180
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    const p1, 0x7f130234

    .line 181
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    .line 182
    new-instance p1, Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    .line 183
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const p1, 0x7f0e001c

    .line 185
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0b0349

    .line 186
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b033a

    .line 187
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const p1, 0x7f0b037d

    .line 188
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "required_login"

    .line 192
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mIsRequiredLogin:Z

    const-string v1, "channel_slug"

    .line 193
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "prefer_audio_track_index"

    .line 194
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const-string v1, "skip_ads"

    .line 195
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mShouldSkipAds:Z

    .line 198
    :cond_0
    iget-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mIsRequiredLogin:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result p1

    if-nez p1, :cond_1

    .line 199
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/hktve/viutv/controller/page/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4e21

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "onOpenLogin"

    const-string v2, "exclusive"

    invoke-virtual {p1, v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f0b01b5

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-nez p1, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 208
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 209
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 210
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 213
    instance-of v2, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-eqz v2, :cond_3

    .line 214
    check-cast p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    goto :goto_0

    .line 216
    :cond_3
    new-instance p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    .line 217
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 223
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 225
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "Live"

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->sendInitialRequests()V

    .line 228
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method protected onDestroy()V
    .locals 9

    .line 721
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    if-eqz v0, :cond_1

    .line 722
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "container_title"

    const-string v2, "live_player"

    .line 723
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "container_pos"

    const-string v2, "FS"

    .line 724
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    const-string v2, "video_info_en"

    const-string v3, "video_info"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    .line 726
    iget-object v7, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/EPG;->getZhTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_number()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "%s %s \u7b2c%s\u96c6"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 727
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 728
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/EPG;->getEnTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_number()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    const-string v3, "%s %s Episode No: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 731
    iget-object v6, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v6, "%s no_programme_name"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Object;

    .line 732
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_0
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "video_terminate"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->onDestroy()V

    .line 739
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->stop()V

    .line 740
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_2

    .line 741
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireStop()V

    .line 742
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdapter()V

    .line 743
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdsAdapter()V

    const/4 v0, 0x0

    .line 744
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 754
    :cond_3
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 756
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 757
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 759
    :cond_4
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 760
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 762
    :cond_5
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 763
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 765
    :cond_6
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 766
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    :cond_7
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    if-eqz v0, :cond_8

    .line 769
    invoke-virtual {v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->onDestroy()V

    .line 771
    :cond_8
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 772
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 684
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onPause()V

    .line 687
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 690
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 675
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 669
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->skipLocale:Ljava/lang/Boolean;

    .line 670
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onStart()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 0

    .line 715
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 716
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public playNextVideo()V
    .locals 0

    return-void
.end method

.method public playPause()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->plugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireInit()V

    .line 1074
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->pause()V

    goto :goto_0

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->play()V

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

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1105
    :goto_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/16 v3, 0xa

    const v4, 0x7f130227

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 1108
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

    .line 1110
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

    .line 1115
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1116
    iget v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    invoke-static {v0, v3}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;

    move-result-object v3

    const v4, 0x7f1400ef

    .line 1117
    invoke-virtual {v3, v2, v4}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setStyle(II)V

    .line 1118
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$11;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v0, "AudioMenuDialogFragment"

    .line 1132
    invoke-virtual {v3, v1, v0}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showCaptionMenu()V
    .locals 0

    return-void
.end method

.method public showQualityMenu()V
    .locals 5

    .line 1142
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getQualityLevels()Ljava/util/List;

    move-result-object v0

    .line 1149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1150
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1151
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;

    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1154
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1155
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getCurrentQuality()I

    move-result v3

    invoke-static {v1, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;

    move-result-object v1

    const v3, 0x7f1400ef

    .line 1156
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setStyle(II)V

    .line 1157
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$12;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$12;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "QualityMenuDialogFragment"

    .line 1163
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
