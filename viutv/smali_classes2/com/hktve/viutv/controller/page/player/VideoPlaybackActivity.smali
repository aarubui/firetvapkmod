.class public Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;
.super Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$MediaSessionCallback;,
        Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$ProgrammeRequestListener;,
        Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;,
        Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;,
        Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;,
        Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerPreRollHelper;
    }
.end annotation


# static fields
.field public static final AD_SPEC_KEY:Ljava/lang/String; = "AD_SPEC_KEY"

.field public static final EPISODE:Ljava/lang/String; = "Episode"

.field public static final EPISODE_LIST:Ljava/lang/String; = "Episode_list"

.field public static final IS_CLIP_ONLY:Ljava/lang/String; = "IS_CLIP_ONLY"

.field public static final IS_RETRYED:Ljava/lang/String; = "IS_RETRYED"

.field public static final LAST_WATCH_POSITION:Ljava/lang/String; = "LAST_WATCH_POSITION"

.field public static final PROGRAMME:Ljava/lang/String; = "Programme"

.field public static final PROGRAM_TRAILER:Ljava/lang/String; = "Program_trailer"

.field public static final TAG:Ljava/lang/String; = "VideoPlaybackActivity"

.field public static final VideoPlaybackAdultStepRequestCode:I = 0x2712

.field public static final VideoPlaybackPremiumContentLoginRequestCode:I = 0x2711

.field private static instance:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;


# instance fields
.field private awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

.field private callTrackinghandler:Landroid/os/Handler;

.field private captionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consecutive:Z

.field private currentCaption:I

.field eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

.field private genreSlug:Ljava/lang/String;

.field private heartbeatRunnable:Ljava/lang/Runnable;

.field private interval:I

.field private isAdPlaying:Z

.field private isAlreadyPlaying:Z

.field private isClipOnly:Z

.field private isDrmEnabled:Z

.field private isHeartbeatRunning:Z

.field private isRetryed:Z

.field private isShowingNextFragment:Z

.field private isShowingRequiredLoginFragment:Z

.field private isVideoPlayed:Z

.field jwplayerContainer:Landroid/widget/RelativeLayout;

.field loadingIndicator:Landroid/widget/ProgressBar;

.field private mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

.field private mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

.field private mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

.field private mEpisodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hktve/viutv/model/viutv/episode/Episode;",
            ">;"
        }
    .end annotation
.end field

.field private mProgramme:Lcom/hktve/viutv/model/viutv/program/Programme;

.field private mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

.field private mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

.field private mSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

.field mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

.field private mVideoStartPosition:J

.field midrollHelper:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;

.field private numOfSendTracking:I

.field private player:Lcom/jwplayer/pub/api/JWPlayer;

.field private playerCurrentAudioIndex:I

.field playerErrorMsg:Ljava/lang/String;

.field playerErrorRetryText:Ljava/lang/String;

.field private playerEvent:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

.field private playerReInitHandler:Landroid/os/Handler;

.field private playerReInitRunnable:Ljava/lang/Runnable;

.field private playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

.field private playerView:Lcom/jwplayer/pub/view/JWPlayerView;

.field prerollHelper:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerPreRollHelper;

.field private reInitPlayerInterval:I

.field private seekEndTime:I

.field private seekHandler:Landroid/os/Handler;

.field private seekRunnable:Ljava/lang/Runnable;

.field private seekStartTime:I

.field private seekTarget:J

.field private seeking:Z

.field private source:Ljava/lang/String;

.field private videoLastOnTimeValue:J

.field private videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

.field private videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

.field private video_seconds_viewed:I

.field private ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const-string v1, ""

    .line 153
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->source:Ljava/lang/String;

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    .line 159
    iput-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    const/4 v3, 0x0

    .line 160
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    .line 161
    iput-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    .line 162
    iput v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    .line 163
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    const/16 v1, 0xa

    .line 168
    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    .line 169
    iput v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    .line 170
    iput v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    .line 171
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    .line 172
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    .line 179
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    .line 180
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAlreadyPlaying:Z

    .line 181
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    const v1, 0x36ee80

    .line 183
    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->reInitPlayerInterval:I

    .line 184
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdPlaying:Z

    .line 186
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    .line 187
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    .line 188
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    const/4 v1, -0x1

    .line 196
    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->captionMapping:Ljava/util/HashMap;

    .line 200
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingRequiredLoginFragment:Z

    .line 202
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    .line 205
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isVideoPlayed:Z

    .line 1678
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$5;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekRunnable:Ljava/lang/Runnable;

    .line 1938
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingNextFragment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Landroid/os/Bundle;
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)J
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateNowPlayingStatePosition()V

    return-void
.end method

.method static synthetic access$1700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->showPlayNextFragmentIfNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/jwplayer/pub/api/JWPlayer;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekStartTime:I

    return p0
.end method

.method static synthetic access$1902(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekStartTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/util/HashMap;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->captionMapping:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekEndTime:I

    return p0
.end method

.method static synthetic access$2002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekEndTime:I

    return p1
.end method

.method static synthetic access$2100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/model/tracker/VideoTracker;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    return-void
.end method

.method static synthetic access$2400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p0
.end method

.method static synthetic access$2402(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p1
.end method

.method static synthetic access$2500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    return p0
.end method

.method static synthetic access$2502(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    return p1
.end method

.method static synthetic access$2600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateYbOptions()V

    return-void
.end method

.method static synthetic access$2702(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAlreadyPlaying:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    return p0
.end method

.method static synthetic access$3008(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 2

    .line 120
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    return v0
.end method

.method static synthetic access$302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPositionWithTime(J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isVideoPlayed:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)Ljava/lang/String;
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->onVideoCompleteAction()V

    return-void
.end method

.method static synthetic access$3600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdPlaying:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdPlaying:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setPlayerContainerMargin(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdultChecking()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3902(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/program/Programme;)Lcom/hktve/viutv/model/viutv/program/Programme;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgramme:Lcom/hktve/viutv/model/viutv/program/Programme;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;)Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    return p0
.end method

.method static synthetic access$4302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPrevVideoAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->checkVPNAndRequestVod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    return-wide v0
.end method

.method static synthetic access$4802(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)J
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    return-wide p1
.end method

.method static synthetic access$5002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    return p1
.end method

.method static synthetic access$5108(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 2

    .line 120
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    return v0
.end method

.method static synthetic access$5200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->shouldSendEvent()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->sendHeartbeatEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->showRetryError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    return-object p0
.end method

.method static synthetic access$802(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;)Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    return-object p1
.end method

.method private checkVPNAndRequestVod(Ljava/lang/String;)V
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is need to check: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->isBlockVPN()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckVPN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->isBlockVPN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->checkVPN()Lrx/Observable;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 544
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 545
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVod(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private createHeartbeatRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-object v0

    .line 1985
    :cond_0
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$10;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hktve/viutv/model/viutv/ad/AdSpec;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 784
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 785
    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerPreRollHelper;

    invoke-direct {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerPreRollHelper;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerPreRollHelper;

    .line 786
    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;

    invoke-direct {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->midrollHelper:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 787
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    .line 788
    new-instance v4, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;)V

    iput-object v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    .line 789
    iget-wide v6, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    invoke-static {v4, v6, v7}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;->access$1002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;J)J

    if-eqz p3, :cond_6

    .line 793
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/episode/Episode;->isEpisode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 796
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 797
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 798
    :goto_1
    iget-object v7, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v7, v7, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 799
    iget-object v7, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v7, v7, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 800
    invoke-virtual {p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    invoke-static {v8, v7, v9}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdUrl(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 801
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    new-instance v8, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    invoke-direct {v8}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;-><init>()V

    new-array v9, v3, [Ljava/lang/String;

    aput-object v7, v9, v2

    .line 803
    invoke-virtual {v8, v9}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->tag([Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v7

    const-string v8, "pre"

    .line 804
    invoke-virtual {v7, v8}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->offset(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v7

    .line 805
    invoke-virtual {v7}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->build()Lcom/jwplayer/pub/api/media/ads/AdBreak;

    move-result-object v7

    .line 806
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 809
    :cond_1
    iget-object v6, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerPreRollHelper;

    invoke-virtual {v6, v4}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerPreRollHelper;->setPrerollAdTags(Ljava/util/ArrayList;)V

    .line 813
    :cond_2
    iget-object v4, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v4, v4, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->midrolls:Ljava/util/List;

    if-eqz v4, :cond_6

    if-eqz p4, :cond_6

    .line 814
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 816
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 817
    iget-object v6, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v6, v6, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->midrolls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    goto :goto_4

    .line 821
    :cond_3
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 822
    iget-object v7, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v7, v7, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->midrolls:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 824
    invoke-virtual {p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    invoke-static {v8, v7, v9}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdUrl(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 826
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 828
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 829
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 831
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 832
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-virtual {v4, v6, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 838
    :cond_5
    :goto_4
    invoke-static {}, Lcom/hktve/viutv/util/Constants;->isForNowOne()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_6

    .line 840
    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->midrollHelper:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;

    invoke-virtual {p3, v4}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;->setMidrollSchedule(Ljava/util/LinkedHashMap;)V

    .line 841
    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->midrollHelper:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;

    new-instance p4, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda3;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-virtual {p3, p4}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper;->setPlayAdCallback(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerMidRollHelper$MidrollPlayCallback;)V

    .line 849
    :cond_6
    new-instance p3, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    invoke-direct {p3}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;-><init>()V

    .line 850
    invoke-virtual {p3, p1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    if-eqz p2, :cond_7

    .line 851
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 852
    new-instance p4, Lcom/hktve/viutv/controller/page/player/DRMCallback;

    invoke-direct {p4, p2}, Lcom/hktve/viutv/controller/page/player/DRMCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->mediaDrmCallback(Lcom/jwplayer/pub/api/media/drm/MediaDrmCallback;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    .line 855
    :cond_7
    invoke-virtual {p3}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->build()Lcom/jwplayer/pub/api/media/playlists/PlaylistItem;

    move-result-object p2

    .line 857
    iget-boolean p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    if-nez p3, :cond_8

    if-eqz p5, :cond_8

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 858
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 859
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".srt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m3u8"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 861
    new-instance v2, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    invoke-direct {v2}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;-><init>()V

    .line 864
    invoke-virtual {v2, v1}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object v1

    .line 865
    invoke-virtual {v1}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->build()Lcom/jwplayer/pub/api/media/captions/Caption;

    move-result-object v1

    .line 861
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 870
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 871
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object p2

    .line 874
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f13022b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    .line 875
    new-instance p3, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    invoke-direct {p3}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;-><init>()V

    .line 876
    invoke-virtual {p3, p2}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->imaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object p2

    .line 877
    invoke-virtual {p2, v0}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->schedule(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object p2

    .line 878
    invoke-virtual {p2}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig;

    move-result-object p2

    .line 889
    new-instance p3, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    invoke-direct {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;-><init>()V

    .line 890
    invoke-virtual {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->hideAllControls()Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    move-result-object p3

    .line 891
    invoke-virtual {p3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/UiConfig;

    move-result-object p3

    .line 893
    new-instance p4, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    invoke-direct {p4}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;-><init>()V

    .line 894
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->autostart(Ljava/lang/Boolean;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p4

    .line 895
    invoke-virtual {p4, p1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->playlist(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 897
    invoke-virtual {p1, p2}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->advertisingConfig(Lcom/jwplayer/pub/api/configuration/ads/AdvertisingConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 898
    invoke-virtual {p1, p3}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->uiConfig(Lcom/jwplayer/pub/api/configuration/UiConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object p1

    .line 899
    invoke-virtual {p1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/PlayerConfig;

    move-result-object p1

    const-string p2, "Vincent"

    const-string p3, "init player"

    .line 901
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance p2, Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-direct {p2, p0}, Lcom/jwplayer/pub/view/JWPlayerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    .line 903
    invoke-virtual {p2, p0}, Lcom/jwplayer/pub/view/JWPlayerView;->getPlayer(Landroidx/lifecycle/LifecycleOwner;)Lcom/jwplayer/pub/api/JWPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    .line 906
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object p2

    .line 907
    new-instance p3, Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Lcom/npaw/youbora/lib6/plugin/Plugin;-><init>(Lcom/npaw/youbora/lib6/plugin/Options;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 908
    invoke-virtual {p3, p0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setActivity(Landroid/app/Activity;)V

    .line 909
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance p3, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdapter;

    iget-object p4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p3, p4}, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {p2, p3}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdapter(Lcom/npaw/youbora/lib6/adapter/PlayerAdapter;)V

    .line 910
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance p3, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdsAdapter;

    iget-object p4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p3, p4}, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdsAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {p2, p3}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdsAdapter(Lcom/npaw/youbora/lib6/adapter/AdAdapter;)V

    .line 912
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {p2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireInit()V

    .line 914
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {p2, p1}, Lcom/jwplayer/pub/api/JWPlayer;->setup(Lcom/jwplayer/pub/api/configuration/PlayerConfig;)V

    .line 915
    new-instance p1, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    .line 916
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    invoke-virtual {p1, p2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->setEventListener(Lcom/hktve/viutv/controller/page/player/PlayerEventListener;)V

    .line 918
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    const-string p3, "player_load"

    invoke-virtual {p1, p3, p2}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->sendAwsTrackingEvent(Ljava/lang/String;Lcom/hktve/viutv/model/tracker/VideoTracker;)V

    .line 919
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 920
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 921
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {p2, p1}, Lcom/jwplayer/pub/view/JWPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    iget-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    if-nez p1, :cond_9

    if-eqz p5, :cond_9

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 925
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {p1, v3}, Lcom/jwplayer/pub/api/JWPlayer;->setCurrentCaptions(I)V

    .line 926
    iput v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    .line 927
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateYbOptions()V

    .line 930
    :cond_9
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 932
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string p2, "MusicService"

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 933
    new-instance p2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$MediaSessionCallback;

    invoke-direct {p2, p0, v5}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$MediaSessionCallback;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 934
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 938
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 939
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 940
    invoke-virtual {p2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getAvatar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 941
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const p2, 0x7f0802f5

    .line 942
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 943
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$3;

    const/16 p3, 0x320

    const/16 p4, 0x1c2

    invoke-direct {p2, p0, p3, p4}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$3;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;II)V

    .line 944
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 952
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 953
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 954
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "#"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PREV_EPISODE_KEY"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 955
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 958
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_a

    .line 959
    new-instance p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$4;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$4;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    .line 965
    :cond_a
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_b

    .line 966
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 967
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    iget p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->reInitPlayerInterval:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method private createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 23

    move-object/from16 v1, p0

    .line 656
    new-instance v2, Lcom/npaw/youbora/lib6/plugin/Options;

    invoke-direct {v2}, Lcom/npaw/youbora/lib6/plugin/Options;-><init>()V

    const/4 v0, 0x0

    .line 658
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentIsLive(Ljava/lang/Boolean;)V

    const-string v3, "viutv"

    .line 659
    invoke-virtual {v2, v3}, Lcom/npaw/youbora/lib6/plugin/Options;->setAccountCode(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setOffline(Z)V

    .line 661
    iget-object v0, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setUsername(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ViuTV"

    .line 664
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppName(Ljava/lang/String;)V

    const-string v0, "2.3.2"

    .line 665
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppReleaseVersion(Ljava/lang/String;)V

    .line 667
    iget-object v0, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object v3, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v3

    .line 669
    iget-object v4, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v4

    .line 670
    iget-object v5, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getMediaId()Ljava/lang/String;

    move-result-object v5

    .line 671
    iget-object v6, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 672
    iget-object v7, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgramme:Lcom/hktve/viutv/model/viutv/program/Programme;

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/program/Programme;->getProductHktamCleanVersionId()Ljava/lang/String;

    move-result-object v7

    .line 673
    iget-object v8, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getEpisodesCount()I

    move-result v8

    .line 674
    iget-object v9, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v9}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getSeasonNo()Ljava/lang/String;

    move-result-object v9

    .line 675
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 676
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 677
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getVideoMeta()Lcom/hktve/viutv/model/viutv/program/VideoMeta;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 678
    iget-object v10, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v10}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getVideoMeta()Lcom/hktve/viutv/model/viutv/program/VideoMeta;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hktve/viutv/model/viutv/program/VideoMeta;->getTags()Ljava/util/List;

    move-result-object v10

    .line 679
    iget-object v11, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v11}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getVideoMeta()Lcom/hktve/viutv/model/viutv/program/VideoMeta;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hktve/viutv/model/viutv/program/VideoMeta;->getActors()Ljava/util/List;

    move-result-object v11

    .line 681
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 682
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 683
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 684
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 685
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 686
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 687
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v12

    .line 689
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    if-eqz v12, :cond_2

    .line 690
    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getType()Ljava/util/List;

    move-result-object v12

    .line 691
    iget-object v13, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v13}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getTags()Ljava/util/List;

    move-result-object v13

    .line 692
    iget-object v14, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v14}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getNature()Ljava/util/List;

    move-result-object v14

    .line 693
    iget-object v15, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v15}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getProducer()Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v12

    .line 694
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getGenre()Ljava/util/List;

    move-result-object v12

    move-object/from16 v17, v12

    .line 695
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getDirector()Ljava/util/List;

    move-result-object v12

    move-object/from16 v18, v12

    .line 696
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getActors()Ljava/util/List;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v12

    move-object/from16 v12, v16

    move-object/from16 v20, v17

    move-object/from16 v21, v18

    goto :goto_0

    :cond_2
    move-object/from16 v20, v16

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v12, v19

    :goto_0
    move-object/from16 v16, v15

    const-string v15, ""

    if-lez v3, :cond_3

    move-object/from16 v17, v14

    .line 700
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    const-string v13, "("

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 701
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension1(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v18, v13

    move-object/from16 v17, v14

    move-object v13, v0

    :goto_1
    if-eqz v4, :cond_4

    .line 703
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 706
    :cond_4
    invoke-virtual {v2, v13}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v2, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentEpisodeTitle(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setProgram(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTvShow(Ljava/lang/String;)V

    if-eqz v7, :cond_5

    .line 712
    invoke-virtual {v2, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension2(Ljava/lang/String;)V

    :cond_5
    if-lez v8, :cond_6

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension3(Ljava/lang/String;)V

    :cond_6
    if-eqz v5, :cond_7

    .line 718
    invoke-virtual {v2, v5}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentId(Ljava/lang/String;)V

    :cond_7
    if-eqz v6, :cond_8

    .line 721
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentDuration(Ljava/lang/Double;)V

    :cond_8
    if-eqz v9, :cond_9

    .line 724
    invoke-virtual {v2, v9}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentSeason(Ljava/lang/String;)V

    :cond_9
    if-eqz v10, :cond_a

    .line 726
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 727
    invoke-direct {v1, v10}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension4(Ljava/lang/String;)V

    :cond_a
    if-eqz v11, :cond_b

    .line 729
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 730
    invoke-direct {v1, v11}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension5(Ljava/lang/String;)V

    :cond_b
    if-eqz v12, :cond_c

    .line 732
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 733
    invoke-direct {v1, v12}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension6(Ljava/lang/String;)V

    :cond_c
    if-eqz v18, :cond_d

    .line 735
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    move-object/from16 v13, v18

    .line 736
    invoke-direct {v1, v13}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension7(Ljava/lang/String;)V

    :cond_d
    if-eqz v17, :cond_e

    .line 738
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    move-object/from16 v14, v17

    .line 739
    invoke-direct {v1, v14}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension8(Ljava/lang/String;)V

    :cond_e
    if-eqz v16, :cond_f

    .line 741
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    move-object/from16 v15, v16

    .line 742
    invoke-direct {v1, v15}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension9(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, v20

    if-eqz v0, :cond_10

    .line 744
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 745
    invoke-direct {v1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension10(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, v21

    if-eqz v0, :cond_11

    .line 747
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 748
    invoke-direct {v1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension11(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v12, v22

    if-eqz v12, :cond_12

    .line 750
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 751
    invoke-direct {v1, v12}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension12(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 755
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CreateOption"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_2
    return-object v2
.end method

.method private currentPlayCardState()I
    .locals 3

    .line 1012
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_3

    .line 1013
    sget-object v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$11;->$SwitchMap$com$jwplayer$pub$api$PlayerState:[I

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

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

.method private filterArrToYbString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hktve/viutv/model/viutv/genre/Filter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 651
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda4;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string v0, ","

    .line 652
    invoke-static {v0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEpisodeIndexFromList(Ljava/util/List;Lcom/hktve/viutv/model/viutv/episode/Episode;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hktve/viutv/model/viutv/episode/Episode;",
            ">;",
            "Lcom/hktve/viutv/model/viutv/episode/Episode;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1853
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1854
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, -0x3e7

    return p1
.end method

.method private getGA4CommonParams()Landroid/os/Bundle;
    .locals 3

    .line 2097
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "container_title"

    const-string v2, "vod_player"

    .line 2098
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "container_pos"

    const-string v2, "FS"

    .line 2099
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getGA4VideoInfoParams()Landroid/os/Bundle;
    .locals 4

    .line 2104
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object v0

    .line 2106
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-static {v1}, Lcom/hktve/viutv/util/GA4Helper;->parseToItemInfo(Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;

    move-result-object v1

    .line 2107
    iget-object v2, v1, Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;->itemInfo:Ljava/lang/String;

    const-string v3, "video_info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v1, v1, Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;->itemInfoEn:Ljava/lang/String;

    const-string v2, "video_info_en"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNextVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 3

    .line 1888
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPlayingTrailer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getEpisodeIndexFromList(Ljava/util/List;Lcom/hktve/viutv/model/viutv/episode/Episode;)I

    move-result v0

    iget-boolean v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v0, v2

    .line 1891
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-ltz v0, :cond_2

    .line 1892
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object v0

    .line 1893
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getPrevVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 4

    .line 1909
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1912
    :cond_0
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPlayingTrailer()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1913
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    iget-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object v0

    .line 1915
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0, v3}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getEpisodeIndexFromList(Ljava/util/List;Lcom/hktve/viutv/model/viutv/episode/Episode;)I

    move-result v0

    iget-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    if-eqz v3, :cond_3

    const/4 v2, -0x1

    :cond_3
    add-int/2addr v0, v2

    .line 1916
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    if-ltz v0, :cond_4

    .line 1917
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private isAdultChecking()Z
    .locals 2

    .line 1073
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->isAdultContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/hktve/viutv/util/Util;->isAbleToPlayAdultContent(Lcom/hktve/viutv/model/viutv/user/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2712

    .line 1074
    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda1;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-static {p0, p0, v0, v1}, Lcom/hktve/viutv/util/Util;->showAdultValidationOrWarning(Landroid/content/Context;Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isNextVideoAvailable()Z
    .locals 2

    .line 1879
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1882
    :cond_0
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getNextVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isPlayingTrailer()Z
    .locals 2

    .line 2004
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPrevVideoAvailable()Z
    .locals 3

    .line 1901
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPlayingTrailer()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1904
    :cond_1
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getPrevVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static synthetic lambda$filterArrToYbString$1(Lcom/hktve/viutv/model/viutv/genre/Filter;)Ljava/lang/String;
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hktve/viutv/model/viutv/genre/Filter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onVideoCompleteAction()V
    .locals 2

    .line 1198
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->show(Z)V

    .line 1199
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->showRepeatButton(Z)V

    .line 1201
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateNowPlayingStatePosition()V

    .line 1202
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->tickle()V

    .line 1203
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 1204
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    :cond_0
    return-void
.end method

.method private playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V
    .locals 3

    .line 1863
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/encore/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SOURCE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1865
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->genreSlug:Ljava/lang/String;

    const-string v2, "GENRE_ID_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Episode"

    .line 1866
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1867
    iget-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    const-string v2, "IS_RETRYED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1869
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v1, p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getMatchHistory(Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/model/viutv/user/History;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1871
    iget-wide v1, p1, Lcom/hktve/viutv/model/viutv/user/History;->last_stop_at:J

    const-string p1, "LAST_WATCH_POSITION"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1874
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1875
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    return-void
.end method

.method private requestVod(Ljava/lang/String;)V
    .locals 1

    .line 574
    new-instance v0, Lcom/hktve/viutv/controller/network/now/request/VodRequest;

    invoke-direct {v0, p0, p1}, Lcom/hktve/viutv/controller/network/now/request/VodRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/now/request/VodRequest;->request()Lrx/Single;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object p1

    .line 576
    invoke-virtual {p1}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object p1

    .line 577
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 578
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$2;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    .line 579
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    return-void
.end method

.method private seekClicked(Z)V
    .locals 9

    .line 1639
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1643
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    .line 1644
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 1649
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    long-to-float v0, v0

    .line 1650
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    int-to-long v0, v0

    mul-long v0, v0, v6

    :cond_2
    if-eqz p1, :cond_3

    .line 1654
    iget-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    goto :goto_0

    .line 1656
    :cond_3
    iget-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1659
    :goto_0
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v4}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    sub-long/2addr v4, v6

    cmp-long v8, v0, v4

    if-lez v8, :cond_4

    .line 1660
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1662
    :cond_4
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    .line 1663
    iput-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1666
    :cond_5
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    iget-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setCurrentTime(J)V

    .line 1668
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1669
    iget-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    if-eqz p1, :cond_6

    const-string p1, "fast_forward_video"

    goto :goto_1

    :cond_6
    const-string p1, "rewind_video"

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1674
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1675
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendHeartbeatEvent()V
    .locals 5

    .line 2020
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_duration(D)V

    .line 2022
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_seconds_viewed(D)V

    .line 2023
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getPosition()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setOffset(D)V

    .line 2024
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setInterval(D)V

    .line 2025
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setStatus(Lcom/jwplayer/pub/api/PlayerState;)V

    .line 2026
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    const-string v2, "video_engagement"

    invoke-virtual {v0, v2, v1}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->sendAwsTrackingEvent(Ljava/lang/String;Lcom/hktve/viutv/model/tracker/VideoTracker;)V

    const/4 v0, 0x0

    .line 2027
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    .line 2028
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    .line 2029
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    :cond_0
    return-void
.end method

.method private setPlayerContainerMargin(I)V
    .locals 2

    int-to-float p1, p1

    .line 974
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 973
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 976
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 980
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 981
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 986
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 989
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 990
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    .line 989
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 991
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 992
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 991
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 993
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 994
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 993
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 996
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 997
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    .line 996
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 998
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    if-eqz p1, :cond_0

    const-string v1, "android.media.metadata.ART"

    .line 1001
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1006
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private shouldSendEvent()Ljava/lang/Boolean;
    .locals 4

    .line 2008
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2009
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2012
    :cond_0
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 2013
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2015
    :cond_2
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private showPlayNextFragmentIfNeeded()Z
    .locals 5

    .line 1941
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingNextFragment:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1944
    :cond_0
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1949
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1952
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getNextVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v3

    new-instance v4, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$9;

    invoke-direct {v4, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$9;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-static {p0, v3, v4}, Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;->newInstance(Landroid/content/Context;Lcom/hktve/viutv/model/viutv/episode/Episode;Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment$PlayNextDialogFragmentDelegate;)Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;

    move-result-object v3

    const v4, 0x7f1400ef

    .line 1966
    invoke-virtual {v3, v2, v4}, Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;->setStyle(II)V

    const-string v4, "PlayNextDialogFragment"

    .line 1967
    invoke-virtual {v3, v0, v4}, Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1969
    iput-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingNextFragment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 1974
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1975
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    return v2
.end method

.method private showRequiredLoginFragment()V
    .locals 3

    .line 600
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingRequiredLoginFragment:Z

    if-eqz v0, :cond_0

    return-void

    .line 603
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda2;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-static {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;->newInstance(Landroid/content/Context;Lcom/hktve/viutv/model/viutv/episode/Episode;Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment$RequiredLoginFragmentDelegate;)Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    .line 612
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b01b0

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    .line 613
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    .line 614
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v0, 0x1

    .line 617
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingRequiredLoginFragment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 621
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showRetryError(Ljava/lang/String;)V
    .locals 2

    .line 1925
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1926
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    :goto_0
    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->errorMsg:Ljava/lang/String;

    .line 1927
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->retryButtonMsg:Ljava/lang/String;

    .line 1928
    invoke-virtual {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->setVideoPlaybackActivity(Landroid/app/Activity;)V

    .line 1930
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 1931
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/16 v1, 0x1001

    .line 1932
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0b01b5

    .line 1933
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1934
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private toTimeString(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 2089
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 2090
    div-long v2, p1, v0

    .line 2091
    rem-long v0, p1, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 2092
    rem-long/2addr p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2093
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

    .line 1029
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x24e

    .line 1030
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 1035
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentPlayCardState()I

    move-result v1

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1036
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private updateYbOptions()V
    .locals 6

    const-string v0, "UpdateOptions"

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    if-eqz v2, :cond_1

    .line 763
    invoke-virtual {v1}, Lcom/npaw/youbora/lib6/plugin/Plugin;->getOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object v1

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCaption: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " setContentLanguage:language "

    if-ltz v2, :cond_0

    .line 767
    :try_start_1
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v2}, Lcom/jwplayer/pub/api/JWPlayer;->getCaptionsList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 769
    iget v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jwplayer/pub/api/media/captions/Caption;

    .line 770
    invoke-virtual {v2}, Lcom/jwplayer/pub/api/media/captions/Caption;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentSubtitles(Ljava/lang/String;)V

    .line 771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContentSubtitles "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jwplayer/pub/api/media/captions/Caption;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentLanguage(Ljava/lang/String;)V

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 779
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private upsertWatchPosition()V
    .locals 4

    .line 1040
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wes"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1049
    invoke-direct {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPositionWithTime(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private upsertWatchPositionWithTime(J)V
    .locals 12

    .line 1053
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1062
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide p1

    :cond_2
    move-wide v4, p1

    .line 1065
    new-instance v7, Lcom/hktve/viutv/controller/network/viu/request/UpsertWatchRequest;

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hktve/viutv/controller/network/viu/request/UpsertWatchRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSpiceManager()Lcom/octo/android/robospice/SpiceManager;

    move-result-object v6

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const-string v8, "upsertWatchRequest"

    invoke-virtual/range {v6 .. v11}, Lcom/octo/android/robospice/SpiceManager;->execute(Lcom/octo/android/robospice/request/SpiceRequest;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/RequestListener;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3

    .line 1814
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1815
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const-string p1, "unmute"

    goto :goto_0

    :cond_0
    const-string p1, "mute"

    :goto_0
    const-string v1, "volume_status"

    .line 1816
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    const-string v1, "change_volume"

    invoke-virtual {p1, v1, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 2085
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$createJWPlayer$2$com-hktve-viutv-controller-page-player-VideoPlaybackActivity(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 843
    iget-object p2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/jwplayer/pub/api/JWPlayer;->playAd([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$isAdultChecking$3$com-hktve-viutv-controller-page-player-VideoPlaybackActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1075
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showRequiredLoginFragment$0$com-hktve-viutv-controller-page-player-VideoPlaybackActivity()V
    .locals 5

    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hktve/viutv/controller/page/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onOpenLogin"

    const-string v4, "exclusive"

    invoke-virtual {v1, v3, v4, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2711

    .line 609
    invoke-virtual {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 2059
    invoke-super {p0, p1, p2, p3}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_1

    const/16 p3, 0x232a

    if-ne p2, p3, :cond_0

    .line 2061
    iget-object p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    if-eqz p3, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    .line 2063
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    const/16 v0, 0x2002

    .line 2064
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 2065
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 p3, 0x0

    .line 2066
    iput-object p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    const/4 p3, 0x0

    .line 2067
    iput-boolean p3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingRequiredLoginFragment:Z

    .line 2068
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->recreate()V

    goto :goto_0

    .line 2070
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    :cond_1
    :goto_0
    const/16 p3, 0x2712

    if-ne p1, p3, :cond_3

    const p1, 0x13881

    if-ne p2, p1, :cond_2

    .line 2075
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->recreate()V

    goto :goto_1

    .line 2077
    :cond_2
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 442
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 443
    sput-object p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->instance:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;

    const p1, 0x7f13022a

    .line 444
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    const p1, 0x7f130234

    .line 445
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    .line 447
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const p1, 0x7f0e0023

    .line 449
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0b0349

    .line 450
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b033a

    .line 451
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    .line 453
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SOURCE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->source:Ljava/lang/String;

    .line 454
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "GENRE_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->genreSlug:Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Episode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hktve/viutv/model/viutv/episode/Episode;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 456
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Programme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hktve/viutv/model/viutv/program/Programme;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgramme:Lcom/hktve/viutv/model/viutv/program/Programme;

    .line 457
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Program_trailer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hktve/viutv/model/viutv/episode/Episode;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 458
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Episode_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    .line 459
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_CLIP_ONLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    .line 461
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AD_SPEC_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    .line 462
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LAST_WATCH_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video start position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlaybackActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance p1, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    .line 466
    new-instance p1, Lcom/hktve/viutv/model/tracker/VideoTracker;

    invoke-direct {p1}, Lcom/hktve/viutv/model/tracker/VideoTracker;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    .line 467
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setUser(Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setSource(Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/encore/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setDestination(Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setSerie_id(Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_id(Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setEpisode_title(Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getOnAirStartDate()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setOnair_datetime(Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_type(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createHeartbeatRunnable()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    .line 476
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_RETRYED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    .line 478
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgrammeMeta()Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->isConsecutive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    .line 481
    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    const-wide/16 v2, 0x0

    .line 482
    iput-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getRequiredLogin()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result p1

    if-nez p1, :cond_2

    .line 487
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->showRequiredLoginFragment()V

    return-void

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdultChecking()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 496
    :cond_3
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v2, 0x7f0b01b5

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 497
    instance-of v3, p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    if-eqz v3, :cond_4

    .line 498
    check-cast p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    goto :goto_1

    .line 500
    :cond_4
    new-instance p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-direct {p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    .line 501
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {p1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 503
    :goto_1
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {p1, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->show(Z)V

    .line 504
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->showPlayNext(Z)V

    .line 505
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPrevVideoAvailable()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->showPlayPrevious(Z)V

    .line 506
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_5

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setVideoInfo(Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 511
    iget-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getMidrollAdbreaks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgramme:Lcom/hktve/viutv/model/viutv/program/Programme;

    if-nez p1, :cond_7

    .line 512
    :cond_6
    new-instance v6, Lcom/hktve/viutv/controller/network/viu/request/ProgrammeRequest;

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/hktve/viutv/controller/network/viu/request/ProgrammeRequest;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSpiceManager()Lcom/octo/android/robospice/SpiceManager;

    move-result-object v5

    const-wide/16 v8, -0x1

    new-instance v10, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$ProgrammeRequestListener;

    const/4 p1, 0x0

    invoke-direct {v10, p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$ProgrammeRequestListener;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;)V

    const-string v7, "ProgrammeRequest"

    invoke-virtual/range {v5 .. v10}, Lcom/octo/android/robospice/SpiceManager;->execute(Lcom/octo/android/robospice/request/SpiceRequest;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/RequestListener;)V

    goto :goto_3

    .line 515
    :cond_7
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    if-eqz p1, :cond_8

    .line 516
    invoke-virtual {p1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->cancel(Z)Z

    .line 518
    :cond_8
    new-instance p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    new-array v2, v1, [Ljava/lang/Void;

    .line 519
    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 520
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->setVideoAdSpc(Lcom/hktve/viutv/model/viutv/ad/AdSpec;)V

    .line 521
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getMidrollAdbreaks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->setMidrollTimes(Ljava/util/List;)V

    .line 522
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->genreSlug:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setGenre_id(Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Null"

    .line 524
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 525
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->checkVPNAndRequestVod(Ljava/lang/String;)V

    .line 529
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result p1

    if-le p1, v4, :cond_a

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 530
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%s | \u7b2c%d\u96c6 | %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    new-array p1, v0, [Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "%s | \u9810\u544a\u7247"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 535
    :goto_4
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hktve/viutv/util/ViuTVTracker;->logScreen(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1152
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isVideoPlayed:Z

    if-eqz v0, :cond_0

    .line 1153
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1154
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "video_terminate"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->onDestroy()V

    .line 1162
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1163
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_1

    .line 1164
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireStop()V

    .line 1165
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdapter()V

    .line 1166
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdsAdapter()V

    .line 1167
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 1169
    :cond_1
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_3

    .line 1174
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 1177
    :cond_3
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 1179
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 1181
    :cond_4
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    if-eqz v0, :cond_5

    .line 1182
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->sendHeartbeatEvent()V

    .line 1184
    :cond_5
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    if-eqz v0, :cond_6

    .line 1185
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->destory()V

    .line 1186
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    .line 1188
    :cond_6
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1189
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    .line 1190
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    .line 1191
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onDestroy()V

    .line 1192
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createHeartbeatRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    if-eqz v0, :cond_1

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    return v2

    .line 643
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 647
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 1101
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onPause()V

    .line 1102
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1103
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1105
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    .line 1106
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->pasueAwsSession()V

    .line 1108
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v1

    sget-object v2, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1111
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVisibleBehind(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_1

    .line 1115
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    .line 1121
    :cond_1
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isVideoPlayed:Z

    if-eqz v0, :cond_4

    .line 1122
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1123
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "video_terminate"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v1, :cond_3

    .line 1129
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    .line 1132
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVisibleBehind(Z)Z

    .line 1134
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    if-eqz v0, :cond_5

    .line 1135
    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->pause()V

    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1085
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onResume()V

    .line 1086
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->resumeAwsSession()V

    .line 1087
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_1

    .line 1089
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1090
    iget v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->play()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 629
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->skipLocale:Ljava/lang/Boolean;

    .line 630
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onStart()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    .line 1147
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public playNextVideo()V
    .locals 3

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/encore/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->source:Ljava/lang/String;

    .line 1800
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1801
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_next"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1804
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getNextVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1806
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    goto :goto_0

    .line 1808
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public playPause()V
    .locals 3

    .line 1603
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireInit()V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_1

    return-void

    .line 1611
    :cond_1
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1612
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v1

    sget-object v2, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v1, v2, :cond_2

    .line 1615
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_pause"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1616
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->pause()V

    goto :goto_0

    .line 1618
    :cond_2
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_resume"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1619
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->play()V

    :goto_0
    return-void
.end method

.method public playPreviousVideo()V
    .locals 3

    .line 1839
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1840
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_previous"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1843
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getPrevVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1845
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    goto :goto_0

    .line 1847
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public reInitCurrentVideo()V
    .locals 2

    .line 1821
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1824
    :cond_0
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAlreadyPlaying:Z

    if-nez v0, :cond_2

    .line 1826
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    goto :goto_0

    .line 1829
    :cond_1
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getEpisodeIndexFromList(Ljava/util/List;Lcom/hktve/viutv/model/viutv/episode/Episode;)I

    move-result v0

    .line 1830
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    :goto_0
    const/4 v0, 0x1

    .line 1832
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1834
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    :goto_1
    return-void
.end method

.method public replay()V
    .locals 3

    .line 1691
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;->access$4902(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;Z)Z

    .line 1692
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 1693
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jwplayer/pub/api/JWPlayer;->seek(D)V

    :cond_0
    return-void
.end method

.method public seekBackward()V
    .locals 1

    const/4 v0, 0x0

    .line 1635
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekClicked(Z)V

    return-void
.end method

.method public seekForward()V
    .locals 1

    const/4 v0, 0x1

    .line 1627
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekClicked(Z)V

    return-void
.end method

.method public showAudioChannelMenu()V
    .locals 8

    .line 1707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1709
    :goto_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/16 v3, 0xa

    const v4, 0x7f130227

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 1712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "label_number_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {v4, v3, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1714
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1719
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1720
    iget v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    invoke-static {v0, v3}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;

    move-result-object v3

    const v4, 0x7f1400ef

    .line 1721
    invoke-virtual {v3, v2, v4}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setStyle(II)V

    .line 1722
    new-instance v2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$6;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v0, "AudioMenuDialogFragment"

    .line 1735
    invoke-virtual {v3, v1, v0}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showCaptionMenu()V
    .locals 5

    .line 1740
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1742
    iget-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    if-eqz v1, :cond_0

    .line 1743
    sget-object v1, Lcom/hktve/viutv/controller/page/player/WebVTTCaptionMenuDialogFragment;->Companion:Lcom/hktve/viutv/controller/page/player/WebVTTCaptionMenuDialogFragment$Companion;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v2}, Lcom/jwplayer/pub/api/JWPlayer;->getCaptionsList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getCurrentCaptions()I

    move-result v3

    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->captionMapping:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/hktve/viutv/controller/page/player/WebVTTCaptionMenuDialogFragment$Companion;->newInstance(Ljava/util/List;ILjava/util/HashMap;)Lcom/hktve/viutv/controller/page/player/WebVTTCaptionMenuDialogFragment;

    move-result-object v1

    goto :goto_0

    .line 1745
    :cond_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductSubtitleCodes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v2}, Lcom/jwplayer/pub/api/JWPlayer;->getCurrentCaptions()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hktve/viutv/controller/page/player/CaptionMenuDialogFragment;->newInstance(Ljava/util/List;I)Lcom/hktve/viutv/controller/page/player/CaptionMenuDialogFragment;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const v3, 0x7f1400ef

    .line 1747
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment;->setStyle(II)V

    .line 1748
    new-instance v2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$7;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$7;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "CaptionMenuDialogFragment"

    .line 1768
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showQualityMenu()V
    .locals 5

    .line 1773
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getQualityLevels()Ljava/util/List;

    move-result-object v0

    .line 1779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1780
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1781
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;

    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1784
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1785
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getCurrentQuality()I

    move-result v3

    invoke-static {v1, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;

    move-result-object v1

    const v3, 0x7f1400ef

    .line 1786
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setStyle(II)V

    .line 1787
    new-instance v2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$8;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$8;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "QualityMenuDialogFragment"

    .line 1793
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
