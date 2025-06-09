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

.field private ga4VideoPlayEventExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

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

.field private playerShutdownExecutorService:Ljava/util/Timer;

.field private playerView:Lcom/jwplayer/pub/view/JWPlayerView;

.field prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

.field private stopActivityTask:Ljava/util/TimerTask;

.field user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

.field private ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;-><init>()V

    .line 117
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerShutdownExecutorService:Ljava/util/Timer;

    .line 118
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    const-wide/16 v0, -0x1

    .line 125
    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 136
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    .line 144
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    .line 148
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    .line 156
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    .line 160
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    .line 162
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    .line 191
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshSlate()V

    return-void
.end method

.method static synthetic access$100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshEPG()V

    return-void
.end method

.method static synthetic access$1000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->showRetryError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/npaw/youbora/lib6/plugin/Plugin;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshChannels()V

    return-void
.end method

.method static synthetic access$2000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)J
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Bundle;
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p0
.end method

.method static synthetic access$2902(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->onSessionTimeout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateYbOptions()V

    return-void
.end method

.method static synthetic access$3100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    return-void
.end method

.method static synthetic access$3200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->addWatermarkView()V

    return-void
.end method

.method static synthetic access$3300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startTrackVideoPlay()V

    return-void
.end method

.method static synthetic access$3800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->onVideoCompleteAction()V

    return-void
.end method

.method static synthetic access$3900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    return p0
.end method

.method static synthetic access$3902(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Bundle;
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setPlayerContainerMargin(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p0
.end method

.method static synthetic access$502(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/ad/AdSpec;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/lang/Object;Ljava/util/List;Z)V
    .locals 0

    .line 101
    invoke-direct/range {p0 .. p6}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/lang/Object;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/jwplayer/pub/api/JWPlayer;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p0
.end method

.method static synthetic access$802(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/channel/Channel;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addWatermarkView()V
    .locals 6

    const-string v0, "Vincent"

    const-string v1, "addWatermarkView"

    .line 1604
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1606
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1608
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1609
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1610
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1611
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x64

    .line 1612
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x4008cccccccccccdL    # 3.1

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 1614
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x64

    .line 1615
    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x64

    .line 1617
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 1618
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1619
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0xb

    .line 1620
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1621
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1622
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v4}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/lang/Object;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hktve/viutv/model/viutv/ad/AdSpec;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 822
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    .line 823
    new-instance p5, Lcom/hktve/viutv/util/PlayerPreRollHelper;

    invoke-direct {p5}, Lcom/hktve/viutv/util/PlayerPreRollHelper;-><init>()V

    iput-object p5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

    .line 824
    new-instance p5, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    iput-object p5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    .line 826
    iget-boolean p5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mShouldSkipAds:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p5, :cond_1

    if-eqz p3, :cond_1

    iget-object p5, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    if-eqz p5, :cond_1

    .line 828
    iget-object p5, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object p5, p5, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    goto :cond_1

    .line 829
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 830
    :goto_0
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 831
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 833
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 834
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ga_ad_pos"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-virtual {p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    .line 836
    invoke-static {v6, v4, v7, v0, v5}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdTag(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 843
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance v5, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    invoke-direct {v5}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;-><init>()V

    const-string v6, "pre"

    .line 845
    invoke-virtual {v5, v6}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->offset(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    aput-object v4, v6, v1

    .line 846
    invoke-virtual {v5, v6}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->tag([Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v4

    .line 847
    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->build()Lcom/jwplayer/pub/api/media/ads/AdBreak;

    move-result-object v4

    .line 848
    invoke-virtual {p4, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 851
    :cond_0
    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

    invoke-virtual {p3, p5}, Lcom/hktve/viutv/util/PlayerPreRollHelper;->setPrerollAdTags(Ljava/util/ArrayList;)V

    .line 855
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_2

    .line 857
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".m3u8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-TRD.srt"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 858
    new-instance v1, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    invoke-direct {v1}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;-><init>()V

    .line 859
    invoke-virtual {v1, p5}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object p5

    sget-object v1, Lcom/jwplayer/pub/api/media/captions/CaptionType;->CAPTIONS:Lcom/jwplayer/pub/api/media/captions/CaptionType;

    .line 860
    invoke-virtual {p5, v1}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->kind(Lcom/jwplayer/pub/api/media/captions/CaptionType;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object p5

    .line 861
    invoke-virtual {p5}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->build()Lcom/jwplayer/pub/api/media/captions/Caption;

    move-result-object p5

    .line 862
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_2
    new-instance p5, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    invoke-direct {p5}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;-><init>()V

    .line 866
    invoke-virtual {p5, p1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object p1

    new-instance p5, Lcom/hktve/viutv/controller/page/player/DRMCallback;

    invoke-direct {p5, p2}, Lcom/hktve/viutv/controller/page/player/DRMCallback;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1, p5}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->mediaDrmCallback(Lcom/jwplayer/pub/api/media/drm/MediaDrmCallback;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object p1

    .line 868
    invoke-virtual {p1, p3}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->tracks(Ljava/util/List;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/hktve/viutv/Utils;->fakeIp(Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;)V

    .line 869
    invoke-virtual {p1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->build()Lcom/jwplayer/pub/api/media/playlists/PlaylistItem;

    move-result-object p1

    .line 871
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 872
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object p1

    .line 875
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f1201c8

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    .line 876
    new-instance p3, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    invoke-direct {p3}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->imaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object p1

    .line 877
    invoke-virtual {p1, p4}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->schedule(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig;

    move-result-object p1

    .line 883
    new-instance p3, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    invoke-direct {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;-><init>()V

    .line 884
    invoke-virtual {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->hideAllControls()Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    move-result-object p3

    .line 885
    invoke-virtual {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/UiConfig;

    move-result-object p3

    .line 887
    new-instance p4, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    invoke-direct {p4}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;-><init>()V

    .line 888
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->autostart(Ljava/lang/Boolean;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p4

    .line 889
    invoke-virtual {p4, p2}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->playlist(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p2

    .line 891
    invoke-virtual {p2, p1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->advertisingConfig(Lcom/jwplayer/pub/api/configuration/ads/AdvertisingConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 892
    invoke-virtual {p1, p3}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->uiConfig(Lcom/jwplayer/pub/api/configuration/UiConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 893
    invoke-virtual {p1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/PlayerConfig;

    move-result-object p1

    .line 895
    new-instance p2, Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-direct {p2, p0}, Lcom/jwplayer/pub/view/JWPlayerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    .line 896
    invoke-virtual {p2, p0}, Lcom/jwplayer/pub/view/JWPlayerView;->getPlayer(Landroidx/lifecycle/LifecycleOwner;)Lcom/jwplayer/pub/api/JWPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    .line 897
    invoke-interface {p2, p1}, Lcom/jwplayer/pub/api/JWPlayer;->setup(Lcom/jwplayer/pub/api/configuration/PlayerConfig;)V

    .line 898
    new-instance p1, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    .line 899
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    invoke-virtual {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->setEventListener(Lcom/hktve/viutv/controller/page/player/PlayerEventListener;)V

    .line 900
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object p1

    .line 901
    new-instance p2, Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/npaw/youbora/lib6/plugin/Plugin;-><init>(Lcom/npaw/youbora/lib6/plugin/Options;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 902
    invoke-virtual {p2, p0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setActivity(Landroid/app/Activity;)V

    .line 903
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance p2, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdapter;

    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p2, p3}, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {p1, p2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdapter(Lcom/npaw/youbora/lib6/adapter/PlayerAdapter;)V

    .line 904
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance p2, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdsAdapter;

    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p2, p3}, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdsAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {p1, p2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdsAdapter(Lcom/npaw/youbora/lib6/adapter/AdAdapter;)V

    .line 906
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 907
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 909
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {p2, p1}, Lcom/jwplayer/pub/view/JWPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_3

    .line 912
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {p1, v2}, Lcom/jwplayer/pub/api/JWPlayer;->setCurrentCaptions(I)V

    .line 916
    :cond_3
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 918
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string p2, "MusicService"

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 919
    new-instance p2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;

    invoke-direct {p2, p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 920
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 924
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 925
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 926
    invoke-virtual {p2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 927
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const p2, 0x7f0801a1

    .line 928
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 929
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$12;

    const/16 p3, 0x320

    const/16 p4, 0x1c2

    invoke-direct {p2, p0, p3, p4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$12;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;II)V

    .line 930
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 937
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    .line 938
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "player_load_complete"

    .line 937
    invoke-virtual {p1, p3, p2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 10

    .line 942
    new-instance v0, Lcom/npaw/youbora/lib6/plugin/Options;

    invoke-direct {v0}, Lcom/npaw/youbora/lib6/plugin/Options;-><init>()V

    const/4 v1, 0x1

    .line 944
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentIsLive(Ljava/lang/Boolean;)V

    const-string v1, "viutv"

    .line 945
    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setAccountCode(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 946
    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setOffline(Z)V

    .line 947
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 948
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setUsername(Ljava/lang/String;)V

    :cond_0
    const-string v2, "ViuTV"

    .line 951
    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppName(Ljava/lang/String;)V

    const-string v2, "2.7.3"

    .line 952
    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppReleaseVersion(Ljava/lang/String;)V

    .line 959
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_5

    .line 961
    :try_start_1
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    .line 962
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, " - "

    if-eqz v4, :cond_3

    .line 963
    :try_start_2
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v4

    if-ltz v4, :cond_1

    .line 964
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

    .line 965
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 967
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

    .line 969
    :goto_0
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v5

    .line 970
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v6

    .line 971
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    .line 972
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductHktamCleanVersionId()Ljava/lang/String;

    move-result-object v8

    .line 973
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgrammeMeta()Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 974
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

    .line 977
    :cond_3
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 978
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

    .line 980
    :cond_4
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v4

    .line 982
    :goto_1
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v5

    .line 983
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    :goto_2
    const/4 v2, 0x0

    .line 985
    :goto_3
    invoke-virtual {v0, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 988
    :cond_5
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    const/4 v2, 0x0

    .line 990
    :goto_4
    iget-object v6, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v6

    .line 991
    invoke-virtual {v0, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    .line 992
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 993
    invoke-virtual {v0, v5}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentEpisodeTitle(Ljava/lang/String;)V

    :cond_6
    if-lez v1, :cond_7

    .line 996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension1(Ljava/lang/String;)V

    :cond_7
    if-eqz v7, :cond_8

    .line 998
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 999
    invoke-virtual {v0, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setProgram(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTvShow(Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_9

    .line 1002
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1003
    invoke-virtual {v0, v8}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension2(Ljava/lang/String;)V

    :cond_9
    if-lez v2, :cond_a

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension3(Ljava/lang/String;)V

    .line 1008
    :cond_a
    invoke-virtual {v0, v6}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 1012
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CreateOption"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v0
.end method

.method private currentPlayCardState()I
    .locals 3

    .line 1082
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_3

    .line 1083
    sget-object v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$15;->$SwitchMap$com$jwplayer$pub$api$PlayerState:[I

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

.method private getGA4CommonParams()Landroid/os/Bundle;
    .locals 3

    .line 1634
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "container_title"

    const-string v2, "live_player"

    .line 1635
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getGA4VideoInfoParams()Landroid/os/Bundle;
    .locals 4

    .line 1641
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1643
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hktve/viutv/util/GA4Helper;->parseToItemInfo(Lcom/hktve/viutv/model/viutv/EPG;Ljava/lang/String;)Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;

    move-result-object v1

    .line 1644
    iget-object v2, v1, Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;->itemInfo:Ljava/lang/String;

    const-string v3, "video_info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    iget-object v1, v1, Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;->itemInfoEn:Ljava/lang/String;

    const-string v2, "video_info_en"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 454
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hktve/viutv/model/viutv/live/Slates;

    .line 455
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 458
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

    .line 483
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

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 469
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

    .line 470
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
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

    .line 472
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

    .line 335
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method private onSessionTimeout()V
    .locals 4

    const-string v0, "LiveVideoPlayActivity"

    const-string v1, "current live stream session timeout"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 688
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_channel_slug"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channel_slug"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    iget v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const-string v2, "prefer_audio_track_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "skip_ads"

    const/4 v2, 0x1

    .line 691
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 693
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onVideoCompleteAction()V
    .locals 4

    .line 1226
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 1228
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    .line 1229
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->tickle()V

    .line 1230
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 1233
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1235
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_channel_slug"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channel_slug"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 1238
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private refreshChannels()V
    .locals 2

    .line 626
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannels()Lrx/Observable;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 629
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 630
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 631
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshEPG()V
    .locals 2

    .line 500
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 501
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 503
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 504
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 505
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshSlate()V
    .locals 2

    .line 568
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 569
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 571
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 572
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 573
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private sendInitialRequests()V
    .locals 2

    .line 280
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 281
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 283
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 284
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda0;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 285
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

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda1;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 321
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 332
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 333
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda4;

    .line 334
    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda3;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 337
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 344
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 345
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda2;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 346
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 387
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 388
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 389
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private setPlayerContainerMargin(I)V
    .locals 2

    int-to-float p1, p1

    .line 1028
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 1027
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 1030
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1033
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1034
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V
    .locals 8

    const-string v0, "UpdateOptions"

    const-string v1, "setupSystemNowPlayerCard"

    .line 1038
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 1043
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    const-string v3, "android.media.metadata.TITLE"

    const-string v4, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v6, "android.media.metadata.DISPLAY_TITLE"

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    .line 1047
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    .line 1046
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1049
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v6

    .line 1048
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1050
    iget-object v5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1051
    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v5

    .line 1050
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1054
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v1

    .line 1053
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1055
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1059
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1058
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const/4 v1, 0x0

    .line 1060
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1062
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1063
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v1

    .line 1062
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1065
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1066
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1067
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "android.media.metadata.ART"

    .line 1072
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1076
    :cond_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 5

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 491
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

    .line 1243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    :goto_0
    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->errorMsg:Ljava/lang/String;

    .line 1246
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->retryButtonMsg:Ljava/lang/String;

    .line 1247
    invoke-virtual {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->setVideoPlaybackActivity(Landroid/app/Activity;)V

    .line 1248
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 1249
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/16 v1, 0x1001

    .line 1250
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0b0196

    .line 1251
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1252
    invoke-virtual {p0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private startTrackVideoPlay()V
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ga4VideoPlayEventExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 261
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ga4VideoPlayEventExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 262
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$6;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$6;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private toTimeString(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 1626
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 1627
    div-long v2, p1, v0

    .line 1628
    rem-long v0, p1, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 1629
    rem-long/2addr p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1630
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

    .line 1099
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x24e

    .line 1100
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 1105
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->currentPlayCardState()I

    move-result v1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1106
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private updateYbOptions()V
    .locals 3

    .line 1018
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->getOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object v0

    .line 1020
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

    .line 1021
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
    .locals 2

    .line 1598
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object v0

    if-lez p1, :cond_0

    const-string p1, "unmute"

    goto :goto_0

    :cond_0
    const-string p1, "mute"

    :goto_0
    const-string v1, "volume_status"

    .line 1599
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    const-string v1, "change_volume"

    invoke-virtual {p1, v1, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 1590
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
    .locals 5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInitialRequests call() called with: channelEPGResp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveVideoPlayActivity"

    .line 286
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 289
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getAd_spec()Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    .line 290
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setChannel(Lcom/hktve/viutv/model/viutv/channel/Channel;)V

    .line 293
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    :cond_0
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setCurrentEPG(Lcom/hktve/viutv/model/viutv/EPG;)V

    .line 302
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v0

    .line 303
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "player_load_start"

    invoke-virtual {v0, v3, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {v0}, Lcom/hktve/viutv/util/Util;->getNextRefreshChannelListTimestamp(Ljava/util/List;)J

    move-result-wide v2

    .line 309
    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getNextRefreshDelay(J)J

    move-result-wide v2

    .line 310
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

    .line 311
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 313
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getSlug()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 316
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$1$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/EPGResp;)Lrx/Observable;
    .locals 2

    if-eqz p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object v1, p1, Lcom/hktve/viutv/model/viutv/network/EPGResp;->epgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setEpgs(Ljava/util/List;)V

    .line 324
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/EPGResp;->epgs:Ljava/util/List;

    invoke-static {p1}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setCurrentEPG(Lcom/hktve/viutv/model/viutv/EPG;)V

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->isBlockVPN()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 327
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->checkVPN()Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 329
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$3$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/VPNCheckResp;)Lrx/Observable;
    .locals 1

    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/network/VPNCheckResp;->isVPN()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "VPN_ERROR"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 342
    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$4$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/SlatesResp;)Lrx/Observable;
    .locals 6

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInitialRequests call() called with: slatesResp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveVideoPlayActivity"

    .line 347
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 351
    iget-object v3, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object v3

    .line 352
    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p1

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextWatermark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LiveWatermark"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v4, p1}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    .line 356
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 357
    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/live/Slates;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 372
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

    .line 373
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 374
    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getTimeDifferent(J)J

    move-result-wide v2

    .line 373
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, p1

    goto :goto_1

    .line 376
    :cond_2
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    .line 380
    :goto_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNoForVod()Ljava/lang/String;

    move-result-object p1

    .line 381
    new-instance v0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;

    invoke-direct {v0, p0, p1}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->request()Lrx/Single;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object p1

    .line 384
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 385
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

    .line 1578
    invoke-super {p0, p1, p2, p3}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4e21

    if-ne p1, p3, :cond_1

    const/16 p1, 0x232a

    if-ne p2, p1, :cond_0

    .line 1581
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->recreate()V

    goto :goto_0

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 204
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1201c7

    .line 206
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    const p1, 0x7f1201d1

    .line 207
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    .line 208
    new-instance p1, Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    .line 209
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const p1, 0x7f0e001c

    .line 211
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0b02fc

    .line 212
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b02ef

    .line 213
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const p1, 0x7f0b0330

    .line 214
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    .line 216
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "required_login"

    .line 218
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mIsRequiredLogin:Z

    const-string v1, "channel_slug"

    .line 219
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "prefer_audio_track_index"

    .line 220
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const-string v1, "skip_ads"

    .line 221
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mShouldSkipAds:Z

    .line 224
    :cond_0
    iget-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mIsRequiredLogin:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result p1

    if-nez p1, :cond_1

    .line 225
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/hktve/viutv/controller/page/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4e21

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "onOpenLogin"

    const-string v2, "exclusive"

    invoke-virtual {p1, v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f0b01ab

    .line 232
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-nez p1, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 235
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 236
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 237
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 240
    instance-of v2, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-eqz v2, :cond_3

    .line 241
    check-cast p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    goto :goto_0

    .line 243
    :cond_3
    new-instance p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    .line 244
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    .line 245
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 250
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 252
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "Live"

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->sendInitialRequests()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->onDestroy()V

    .line 777
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->stop()V

    .line 778
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireStop()V

    .line 780
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdapter()V

    .line 781
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdsAdapter()V

    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 794
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 795
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 798
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 801
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    :cond_4
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 804
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    :cond_5
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    if-eqz v0, :cond_6

    .line 807
    invoke-virtual {v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->onDestroy()V

    .line 809
    :cond_6
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ga4VideoPlayEventExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_7

    .line 810
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 813
    :cond_7
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 717
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onPause()V

    .line 719
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$11;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    .line 726
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerShutdownExecutorService:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 729
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 732
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    .line 743
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    if-eqz v0, :cond_1

    .line 744
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v0

    .line 745
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "video_terminate"

    .line 744
    invoke-virtual {v0, v2, v1}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 753
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 704
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onResume()V

    .line 705
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 706
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 707
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerShutdownExecutorService:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0}, Lcom/jwplayer/pub/view/JWPlayerView;->getPlayer()Lcom/jwplayer/pub/api/JWPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->play()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 698
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->skipLocale:Ljava/lang/Boolean;

    .line 699
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onStart()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 0

    .line 764
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 765
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public playNextVideo()V
    .locals 0

    return-void
.end method

.method public playPause()V
    .locals 2

    .line 1113
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireInit()V

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_1

    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->pause()V

    goto :goto_0

    .line 1125
    :cond_2
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

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1149
    :goto_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/16 v3, 0xa

    const v4, 0x7f1201c4

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 1152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
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

    .line 1152
    invoke-virtual {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1155
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

    .line 1160
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1161
    iget v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    invoke-static {v0, v3}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;

    move-result-object v3

    const v4, 0x7f1300ec

    .line 1163
    invoke-virtual {v3, v2, v4}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setStyle(II)V

    .line 1164
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$13;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/ArrayList;)V

    .line 1165
    invoke-virtual {v3, v2}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v0, "AudioMenuDialogFragment"

    .line 1178
    invoke-virtual {v3, v1, v0}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showCaptionMenu()V
    .locals 0

    return-void
.end method

.method public showQualityMenu()V
    .locals 5

    .line 1188
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getQualityLevels()Ljava/util/List;

    move-result-object v0

    .line 1195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1196
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1197
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;

    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1200
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1201
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    .line 1202
    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getCurrentQuality()I

    move-result v3

    .line 1201
    invoke-static {v1, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;

    move-result-object v1

    const v3, 0x7f1300ec

    .line 1203
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setStyle(II)V

    .line 1204
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$14;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$14;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 1205
    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "QualityMenuDialogFragment"

    .line 1211
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
