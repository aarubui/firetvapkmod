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

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;-><init>()V

    .line 122
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerShutdownExecutorService:Ljava/util/Timer;

    .line 123
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    const-wide/16 v0, -0x1

    .line 130
    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 141
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    .line 149
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    .line 153
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    .line 157
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    .line 161
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    .line 165
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    .line 167
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$2;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    .line 173
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$3;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$4;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$5;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    .line 196
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshSlate()V

    return-void
.end method

.method static synthetic access$100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshEPG()V

    return-void
.end method

.method static synthetic access$1000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->showRetryError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAudioTrackList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/npaw/youbora/lib6/plugin/Plugin;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->refreshChannels()V

    return-void
.end method

.method static synthetic access$2000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)J
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Bundle;
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p0
.end method

.method static synthetic access$2902(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->onSessionTimeout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateYbOptions()V

    return-void
.end method

.method static synthetic access$3100(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    return-void
.end method

.method static synthetic access$3200(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->addWatermarkView()V

    return-void
.end method

.method static synthetic access$3300(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startTrackVideoPlay()V

    return-void
.end method

.method static synthetic access$3800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->onVideoCompleteAction()V

    return-void
.end method

.method static synthetic access$3900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    return p0
.end method

.method static synthetic access$3902(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isAdPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Bundle;
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setPlayerContainerMargin(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p0
.end method

.method static synthetic access$502(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/ad/AdSpec;)Lcom/hktve/viutv/model/viutv/ad/AdSpec;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/lang/Object;Ljava/util/List;Z)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p6}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/lang/Object;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/jwplayer/pub/api/JWPlayer;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p0
.end method

.method static synthetic access$802(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/channel/Channel;)Lcom/hktve/viutv/model/viutv/channel/Channel;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addWatermarkView()V
    .locals 6

    const-string v0, "Vincent"

    const-string v1, "addWatermarkView"

    .line 1632
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1634
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1636
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1637
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1638
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1639
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x64

    .line 1640
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x4008cccccccccccdL    # 3.1

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 1642
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x64

    .line 1643
    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x64

    .line 1645
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 1646
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1647
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0xb

    .line 1648
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1649
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1650
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

    .line 838
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    .line 839
    new-instance p5, Lcom/hktve/viutv/util/PlayerPreRollHelper;

    invoke-direct {p5}, Lcom/hktve/viutv/util/PlayerPreRollHelper;-><init>()V

    iput-object p5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

    .line 840
    new-instance p5, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    iput-object p5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    .line 842
    iget-boolean p5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mShouldSkipAds:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p5, :cond_1

    if-eqz p3, :cond_1

    iget-object p5, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    if-eqz p5, :cond_1

    .line 844
    iget-object p5, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object p5, p5, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    goto :cond_1

    .line 845
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 846
    :goto_0
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 847
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 849
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 850
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

    .line 853
    invoke-virtual {p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    .line 852
    invoke-static {v6, v4, v7, v0, v5}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdTag(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 859
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    new-instance v5, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    invoke-direct {v5}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;-><init>()V

    const-string v6, "pre"

    .line 861
    invoke-virtual {v5, v6}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->offset(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    aput-object v4, v6, v1

    .line 862
    invoke-virtual {v5, v6}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->tag([Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v4

    .line 863
    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->build()Lcom/jwplayer/pub/api/media/ads/AdBreak;

    move-result-object v4

    .line 864
    invoke-virtual {p4, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 867
    :cond_0
    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

    invoke-virtual {p3, p5}, Lcom/hktve/viutv/util/PlayerPreRollHelper;->setPrerollAdTags(Ljava/util/ArrayList;)V

    .line 871
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_2

    .line 873
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

    .line 874
    new-instance v1, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    invoke-direct {v1}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;-><init>()V

    .line 875
    invoke-virtual {v1, p5}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object p5

    sget-object v1, Lcom/jwplayer/pub/api/media/captions/CaptionType;->CAPTIONS:Lcom/jwplayer/pub/api/media/captions/CaptionType;

    .line 876
    invoke-virtual {p5, v1}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->kind(Lcom/jwplayer/pub/api/media/captions/CaptionType;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object p5

    .line 877
    invoke-virtual {p5}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->build()Lcom/jwplayer/pub/api/media/captions/Caption;

    move-result-object p5

    .line 878
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_2
    new-instance p5, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    invoke-direct {p5}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;-><init>()V

    .line 882
    invoke-virtual {p5, p1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object p1

    new-instance p5, Lcom/hktve/viutv/controller/page/player/DRMCallback;

    .line 883
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p5, p2, v1}, Lcom/hktve/viutv/controller/page/player/DRMCallback;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1, p5}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->mediaDrmCallback(Lcom/jwplayer/pub/api/media/drm/MediaDrmCallback;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object p1

    .line 884
    invoke-virtual {p1, p3}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->tracks(Ljava/util/List;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/hktve/viutv/Utils;->fakeIp(Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;)V

    .line 885
    invoke-virtual {p1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->build()Lcom/jwplayer/pub/api/media/playlists/PlaylistItem;

    move-result-object p1

    .line 887
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 888
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object p1

    .line 891
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f1201c8

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    .line 892
    new-instance p3, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    invoke-direct {p3}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->imaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object p1

    .line 893
    invoke-virtual {p1, p4}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->schedule(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig;

    move-result-object p1

    .line 899
    new-instance p3, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    invoke-direct {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;-><init>()V

    .line 900
    invoke-virtual {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->hideAllControls()Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    move-result-object p3

    .line 901
    invoke-virtual {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/UiConfig;

    move-result-object p3

    .line 903
    new-instance p4, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    invoke-direct {p4}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;-><init>()V

    .line 904
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->autostart(Ljava/lang/Boolean;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p4

    .line 905
    invoke-virtual {p4, p2}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->playlist(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p2

    .line 907
    invoke-virtual {p2, p1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->advertisingConfig(Lcom/jwplayer/pub/api/configuration/ads/AdvertisingConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 908
    invoke-virtual {p1, p3}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->uiConfig(Lcom/jwplayer/pub/api/configuration/UiConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 909
    invoke-virtual {p1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/PlayerConfig;

    move-result-object p1

    .line 911
    new-instance p2, Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-direct {p2, p0}, Lcom/jwplayer/pub/view/JWPlayerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    .line 912
    invoke-virtual {p2, p0}, Lcom/jwplayer/pub/view/JWPlayerView;->getPlayer(Landroidx/lifecycle/LifecycleOwner;)Lcom/jwplayer/pub/api/JWPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    .line 913
    invoke-interface {p2, p1}, Lcom/jwplayer/pub/api/JWPlayer;->setup(Lcom/jwplayer/pub/api/configuration/PlayerConfig;)V

    .line 914
    new-instance p1, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    .line 915
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$PlayerEvent;

    invoke-virtual {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->setEventListener(Lcom/hktve/viutv/controller/page/player/PlayerEventListener;)V

    .line 916
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object p1

    .line 917
    new-instance p2, Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/npaw/youbora/lib6/plugin/Plugin;-><init>(Lcom/npaw/youbora/lib6/plugin/Options;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 918
    invoke-virtual {p2, p0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setActivity(Landroid/app/Activity;)V

    .line 919
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance p2, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdapter;

    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p2, p3}, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {p1, p2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdapter(Lcom/npaw/youbora/lib6/adapter/PlayerAdapter;)V

    .line 920
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance p2, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdsAdapter;

    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p2, p3}, Lcom/npaw/youbora/lib6/jwplayer/JWPlayerAdsAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {p1, p2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdsAdapter(Lcom/npaw/youbora/lib6/adapter/AdAdapter;)V

    .line 922
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 923
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 925
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {p2, p1}, Lcom/jwplayer/pub/view/JWPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_3

    .line 928
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {p1, v2}, Lcom/jwplayer/pub/api/JWPlayer;->setCurrentCaptions(I)V

    .line 932
    :cond_3
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 934
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string p2, "MusicService"

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 935
    new-instance p2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;

    invoke-direct {p2, p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$MediaSessionCallback;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 936
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 940
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 941
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 942
    invoke-virtual {p2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 943
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const p2, 0x7f0801a1

    .line 944
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 945
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$12;

    const/16 p3, 0x320

    const/16 p4, 0x1c2

    invoke-direct {p2, p0, p3, p4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$12;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;II)V

    .line 946
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 953
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    .line 954
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "player_load_complete"

    .line 953
    invoke-virtual {p1, p3, p2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 10

    .line 958
    new-instance v0, Lcom/npaw/youbora/lib6/plugin/Options;

    invoke-direct {v0}, Lcom/npaw/youbora/lib6/plugin/Options;-><init>()V

    const/4 v1, 0x1

    .line 960
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentIsLive(Ljava/lang/Boolean;)V

    const-string v1, "viutv"

    .line 961
    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setAccountCode(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 962
    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setOffline(Z)V

    .line 963
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 964
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 965
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setUsername(Ljava/lang/String;)V

    :cond_0
    const-string v2, "ViuTV"

    .line 967
    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppName(Ljava/lang/String;)V

    const-string v2, "2.7.4"

    .line 968
    invoke-virtual {v0, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppReleaseVersion(Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_5

    .line 977
    :try_start_1
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    .line 978
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, " - "

    if-eqz v4, :cond_3

    .line 979
    :try_start_2
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v4

    if-ltz v4, :cond_1

    .line 980
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

    .line 981
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 983
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

    .line 985
    :goto_0
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v5

    .line 986
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v6

    .line 987
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    .line 988
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductHktamCleanVersionId()Ljava/lang/String;

    move-result-object v8

    .line 989
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgrammeMeta()Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 990
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

    .line 993
    :cond_3
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 994
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

    .line 996
    :cond_4
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v4

    .line 998
    :goto_1
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v5

    .line 999
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    :goto_2
    const/4 v2, 0x0

    .line 1001
    :goto_3
    invoke-virtual {v0, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 1004
    :cond_5
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    const/4 v2, 0x0

    .line 1006
    :goto_4
    iget-object v6, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v6

    .line 1007
    invoke-virtual {v0, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    .line 1008
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1009
    invoke-virtual {v0, v5}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentEpisodeTitle(Ljava/lang/String;)V

    :cond_6
    if-lez v1, :cond_7

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension1(Ljava/lang/String;)V

    :cond_7
    if-eqz v7, :cond_8

    .line 1014
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1015
    invoke-virtual {v0, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setProgram(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTvShow(Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_9

    .line 1018
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1019
    invoke-virtual {v0, v8}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension2(Ljava/lang/String;)V

    :cond_9
    if-lez v2, :cond_a

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension3(Ljava/lang/String;)V

    .line 1024
    :cond_a
    invoke-virtual {v0, v6}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 1028
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CreateOption"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v0
.end method

.method private currentPlayCardState()I
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_3

    .line 1099
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

    .line 1662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "container_title"

    const-string v2, "live_player"

    .line 1663
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getGA4VideoInfoParams()Landroid/os/Bundle;
    .locals 4

    .line 1669
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1671
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hktve/viutv/util/GA4Helper;->parseToItemInfo(Lcom/hktve/viutv/model/viutv/EPG;Ljava/lang/String;)Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;

    move-result-object v1

    .line 1672
    iget-object v2, v1, Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;->itemInfo:Ljava/lang/String;

    const-string v3, "video_info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
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

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 459
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hktve/viutv/model/viutv/live/Slates;

    .line 460
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 463
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

    .line 488
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

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 474
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

    .line 475
    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/live/Slates;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
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

    .line 477
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

    .line 340
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method private onSessionTimeout()V
    .locals 4

    const-string v0, "LiveVideoPlayActivity"

    const-string v1, "current live stream session timeout"

    .line 691
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_channel_slug"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channel_slug"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const-string v2, "prefer_audio_track_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "skip_ads"

    const/4 v2, 0x1

    .line 696
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 698
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onVideoCompleteAction()V
    .locals 4

    .line 1242
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 1244
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->updateNowPlayingStatePosition()V

    .line 1245
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->tickle()V

    .line 1246
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 1249
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1251
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_channel_slug"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "channel_slug"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 1254
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private refreshChannels()V
    .locals 2

    .line 631
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    .line 632
    invoke-interface {v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannels()Lrx/Observable;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 634
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 635
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$10;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 636
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshEPG()V
    .locals 2

    .line 505
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 506
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 508
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 509
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$8;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 510
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshSlate()V
    .locals 2

    .line 573
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 574
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 576
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 577
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$9;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 578
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private sendInitialRequests()V
    .locals 2

    .line 285
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    .line 286
    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveChannelEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 288
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 289
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda0;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 290
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 324
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 325
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda1;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 326
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 337
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 338
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda4;

    .line 339
    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda3;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 342
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 349
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 350
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$$ExternalSyntheticLambda2;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 351
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 392
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 393
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$7;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 394
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private setPlayerContainerMargin(I)V
    .locals 2

    int-to-float p1, p1

    .line 1044
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 1043
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 1046
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1049
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1050
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V
    .locals 8

    const-string v0, "UpdateOptions"

    const-string v1, "setupSystemNowPlayerCard"

    .line 1054
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 1059
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    const-string v3, "android.media.metadata.TITLE"

    const-string v4, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v6, "android.media.metadata.DISPLAY_TITLE"

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    .line 1063
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v7

    .line 1062
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1065
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v6

    .line 1064
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1066
    iget-object v5, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1067
    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v5

    .line 1066
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1070
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getEpisode_title()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1071
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/EPG;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1075
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const/4 v1, 0x0

    .line 1076
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1078
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1079
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelLogoLink()Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1081
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 1082
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1083
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "android.media.metadata.ART"

    .line 1088
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1092
    :cond_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z
    .locals 5

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 496
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

    .line 1259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    :goto_0
    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->errorMsg:Ljava/lang/String;

    .line 1262
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->retryButtonMsg:Ljava/lang/String;

    .line 1263
    invoke-virtual {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->setVideoPlaybackActivity(Landroid/app/Activity;)V

    .line 1264
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 1265
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/16 v1, 0x1001

    .line 1266
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0b0196

    .line 1267
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1268
    invoke-virtual {p0, v1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private startTrackVideoPlay()V
    .locals 8

    .line 262
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ga4VideoPlayEventExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 266
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ga4VideoPlayEventExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 267
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

    .line 1654
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 1655
    div-long v2, p1, v0

    .line 1656
    rem-long v0, p1, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 1657
    rem-long/2addr p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1658
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

    .line 1115
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x24e

    .line 1116
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 1121
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->currentPlayCardState()I

    move-result v1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1122
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private updateYbOptions()V
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    if-eqz v1, :cond_0

    .line 1035
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->getOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object v0

    .line 1036
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

    .line 1037
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

    .line 1626
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object v0

    if-lez p1, :cond_0

    const-string p1, "unmute"

    goto :goto_0

    :cond_0
    const-string p1, "mute"

    :goto_0
    const-string v1, "volume_status"

    .line 1627
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    const-string v1, "change_volume"

    invoke-virtual {p1, v1, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 1618
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

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInitialRequests call() called with: channelEPGResp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveVideoPlayActivity"

    .line 291
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 294
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getAd_spec()Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    .line 295
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->setChannel(Lcom/hktve/viutv/model/viutv/channel/Channel;)V

    .line 298
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    :cond_0
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getCurrentEPG()Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getEpgs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setCurrentEPG(Lcom/hktve/viutv/model/viutv/EPG;)V

    .line 307
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v0

    .line 308
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "player_load_start"

    invoke-virtual {v0, v3, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    iget-object v2, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {v0}, Lcom/hktve/viutv/util/Util;->getNextRefreshChannelListTimestamp(Ljava/util/List;)J

    move-result-wide v2

    .line 314
    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getNextRefreshDelay(J)J

    move-result-wide v2

    .line 315
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

    .line 316
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/ChannelEPGResp;->channel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 318
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getSlug()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveEPGObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 321
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$1$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/EPGResp;)Lrx/Observable;
    .locals 2

    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object v1, p1, Lcom/hktve/viutv/model/viutv/network/EPGResp;->epgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setEpgs(Ljava/util/List;)V

    .line 329
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/EPGResp;->epgs:Ljava/util/List;

    invoke-static {p1}, Lcom/hktve/viutv/util/Util;->getCurrentEPG(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/EPG;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->setCurrentEPG(Lcom/hktve/viutv/model/viutv/EPG;)V

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->isBlockVPN()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 332
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->checkVPN()Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 334
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$3$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/VPNCheckResp;)Lrx/Observable;
    .locals 1

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/network/VPNCheckResp;->isVPN()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "VPN_ERROR"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    .line 347
    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveSlatesObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendInitialRequests$4$com-hktve-viutv-controller-page-player-LiveVideoPlaybackActivity(Lcom/hktve/viutv/model/viutv/network/SlatesResp;)Lrx/Observable;
    .locals 6

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInitialRequests call() called with: slatesResp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveVideoPlayActivity"

    .line 352
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 356
    iget-object v3, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlate(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object v3

    .line 357
    iget-object p1, p1, Lcom/hktve/viutv/model/viutv/network/SlatesResp;->slates:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextWatermark(Ljava/util/List;)Lcom/hktve/viutv/model/viutv/live/Slates;

    move-result-object p1

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextWatermark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LiveWatermark"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {v4, p1}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    .line 361
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getNextSlateRefreshTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 362
    invoke-direct {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->shouldShowSlate(Lcom/hktve/viutv/model/viutv/live/Slates;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/live/Slates;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {v0, v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 374
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
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

    .line 378
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesRefreshTime:J

    .line 379
    invoke-static {v2, v3}, Lcom/hktve/viutv/util/Util;->getTimeDifferent(J)J

    move-result-wide v2

    .line 378
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, p1

    goto :goto_1

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->updateWatermark(Lcom/hktve/viutv/model/viutv/live/Slates;)V

    .line 385
    :goto_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannel:Lcom/hktve/viutv/model/viutv/channel/Channel;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/channel/Channel;->getChannelNoForVod()Ljava/lang/String;

    move-result-object p1

    .line 386
    new-instance v0, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;

    invoke-direct {v0, p0, p1}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/now/request/LiveRequest;->request()Lrx/Single;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object p1

    .line 389
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 390
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

    .line 1606
    invoke-super {p0, p1, p2, p3}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4e21

    if-ne p1, p3, :cond_1

    const/16 p1, 0x232a

    if-ne p2, p1, :cond_0

    .line 1609
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->recreate()V

    goto :goto_0

    .line 1611
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 209
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1201c7

    .line 211
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    const p1, 0x7f1201d1

    .line 212
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    .line 213
    new-instance p1, Lcom/hktve/viutv/view/player/LiveWatermarkView;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    .line 214
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const p1, 0x7f0e001c

    .line 216
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0b02fc

    .line 217
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mJWPlayerContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b02ef

    .line 218
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const p1, 0x7f0b0330

    .line 219
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlateView:Landroid/widget/TextView;

    .line 221
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "required_login"

    .line 223
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mIsRequiredLogin:Z

    const-string v1, "channel_slug"

    .line 224
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "prefer_audio_track_index"

    .line 225
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    const-string v1, "skip_ads"

    .line 226
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mShouldSkipAds:Z

    .line 229
    :cond_0
    iget-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mIsRequiredLogin:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->user:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result p1

    if-nez p1, :cond_1

    .line 230
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/hktve/viutv/controller/page/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4e21

    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "onOpenLogin"

    const-string v2, "exclusive"

    invoke-virtual {p1, v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f0b01ab

    .line 237
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-nez p1, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 240
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 241
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {v2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 242
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 245
    instance-of v2, p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-eqz v2, :cond_3

    .line 246
    check-cast p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    goto :goto_0

    .line 248
    :cond_3
    new-instance p1, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-direct {p1}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    .line 249
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    .line 250
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->show(Z)V

    .line 255
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 257
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelSlug:Ljava/lang/String;

    const-string v1, "Live"

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->sendInitialRequests()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->onDestroy()V

    .line 793
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->stop()V

    .line 794
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireStop()V

    .line 796
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdapter()V

    .line 797
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdsAdapter()V

    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 810
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSlatesHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendSlateRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 811
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mEPGHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendEPGRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 814
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 816
    :cond_3
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mChannelsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSendChannelsRequestRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 817
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 819
    :cond_4
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mSessionTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 820
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 822
    :cond_5
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->liveWatermarkView:Lcom/hktve/viutv/view/player/LiveWatermarkView;

    if-eqz v0, :cond_6

    .line 823
    invoke-virtual {v0}, Lcom/hktve/viutv/view/player/LiveWatermarkView;->onDestroy()V

    .line 825
    :cond_6
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ga4VideoPlayEventExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_7

    .line 826
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 829
    :cond_7
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 710
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->isFirstRowFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->mVideoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackControlFragment;->hideControlsOverlay(Z)V

    return p2

    .line 715
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 4

    .line 733
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onPause()V

    .line 735
    new-instance v0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$11;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    .line 742
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerShutdownExecutorService:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 745
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 748
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    .line 759
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->isVideoPlayed:Z

    if-eqz v0, :cond_1

    .line 760
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v0

    .line 761
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "video_terminate"

    .line 760
    invoke-virtual {v0, v2, v1}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->requestVisibleBehind(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 720
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onResume()V

    .line 721
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 722
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->stopActivityTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 723
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerShutdownExecutorService:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0}, Lcom/jwplayer/pub/view/JWPlayerView;->getPlayer()Lcom/jwplayer/pub/api/JWPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->play()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 703
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->skipLocale:Ljava/lang/Boolean;

    .line 704
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onStart()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 0

    .line 780
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->finish()V

    .line 781
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public playNextVideo()V
    .locals 0

    return-void
.end method

.method public playPause()V
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireInit()V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_1

    return-void

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->pause()V

    goto :goto_0

    .line 1141
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

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1165
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

    .line 1168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
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

    .line 1168
    invoke-virtual {p0, v3}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1171
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

    .line 1176
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1177
    iget v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerCurrentAudioIndex:I

    invoke-static {v0, v3}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;

    move-result-object v3

    const v4, 0x7f1300ec

    .line 1179
    invoke-virtual {v3, v2, v4}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setStyle(II)V

    .line 1180
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$13;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;Ljava/util/ArrayList;)V

    .line 1181
    invoke-virtual {v3, v2}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v0, "AudioMenuDialogFragment"

    .line 1194
    invoke-virtual {v3, v1, v0}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showCaptionMenu()V
    .locals 0

    return-void
.end method

.method public showQualityMenu()V
    .locals 5

    .line 1204
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getQualityLevels()Ljava/util/List;

    move-result-object v0

    .line 1211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1212
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1213
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;

    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1216
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1217
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    .line 1218
    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getCurrentQuality()I

    move-result v3

    .line 1217
    invoke-static {v1, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;

    move-result-object v1

    const v3, 0x7f1300ec

    .line 1219
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setStyle(II)V

    .line 1220
    new-instance v2, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$14;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity$14;-><init>(Lcom/hktve/viutv/controller/page/player/LiveVideoPlaybackActivity;)V

    .line 1221
    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "QualityMenuDialogFragment"

    .line 1227
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
