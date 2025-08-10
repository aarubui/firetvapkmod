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
        Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;
    }
.end annotation


# static fields
.field public static final AD_SPEC_KEY:Ljava/lang/String; = "AD_SPEC_KEY"

.field public static final EPISODE:Ljava/lang/String; = "Episode"

.field public static final IS_CLIP_ONLY:Ljava/lang/String; = "IS_CLIP_ONLY"

.field public static final IS_RETRYED:Ljava/lang/String; = "IS_RETRYED"

.field public static final LAST_WATCH_POSITION:Ljava/lang/String; = "LAST_WATCH_POSITION"

.field public static final PREFER_AUDIO_INDEX:Ljava/lang/String; = "PREFER_AUDIO_INDEX"

.field public static final PREFER_CAPTION_INDEX:Ljava/lang/String; = "PREFER_CAPTION_INDEX"

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

.field debugInfoContainer:Landroid/view/View;

.field debugInfoTextView:Landroid/widget/TextView;

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

.field midrollHelper:Lcom/hktve/viutv/util/PlayerMidRollHelper;

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

.field prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

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

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const-string v1, ""

    .line 169
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->source:Ljava/lang/String;

    .line 174
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    .line 175
    iput-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    const/4 v3, 0x0

    .line 176
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    .line 177
    iput-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    .line 178
    iput v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    .line 179
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    const/16 v1, 0xa

    .line 184
    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    .line 185
    iput v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    .line 186
    iput v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    .line 187
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    .line 188
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    .line 195
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    .line 196
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAlreadyPlaying:Z

    .line 197
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    const v1, 0x36ee80

    .line 199
    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->reInitPlayerInterval:I

    .line 200
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdPlaying:Z

    .line 202
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    .line 203
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    .line 204
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    const/4 v1, -0x1

    .line 212
    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->captionMapping:Ljava/util/HashMap;

    .line 216
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingRequiredLoginFragment:Z

    .line 218
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    .line 221
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isVideoPlayed:Z

    .line 1745
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$4;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekRunnable:Ljava/lang/Runnable;

    .line 2015
    iput-boolean v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingNextFragment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Landroid/os/Bundle;
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)J
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateNowPlayingStatePosition()V

    return-void
.end method

.method static synthetic access$1600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->showPlayNextFragmentIfNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/jwplayer/pub/api/JWPlayer;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekStartTime:I

    return p0
.end method

.method static synthetic access$1802(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 132
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekStartTime:I

    return p1
.end method

.method static synthetic access$1900(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekEndTime:I

    return p0
.end method

.method static synthetic access$1902(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 132
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekEndTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/util/HashMap;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->captionMapping:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/model/tracker/VideoTracker;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    return-void
.end method

.method static synthetic access$2302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAlreadyPlaying:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    return p0
.end method

.method static synthetic access$2608(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 2

    .line 132
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    return v0
.end method

.method static synthetic access$2700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPositionWithTime(J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p0
.end method

.method static synthetic access$2902(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 132
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    return p0
.end method

.method static synthetic access$3002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)I
    .locals 0

    .line 132
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    return p1
.end method

.method static synthetic access$302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateYbOptions()V

    return-void
.end method

.method static synthetic access$3202(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isVideoPlayed:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)Ljava/lang/String;
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->onVideoCompleteAction()V

    return-void
.end method

.method static synthetic access$3500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setDefaultCaptionOption(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdPlaying:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdPlaying:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setPlayerContainerMargin(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdultChecking()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3902(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/program/Programme;)Lcom/hktve/viutv/model/viutv/program/Programme;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgramme:Lcom/hktve/viutv/model/viutv/program/Programme;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;)Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    return p0
.end method

.method static synthetic access$4302(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPrevVideoAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->checkVPNAndRequestVod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    return-wide v0
.end method

.method static synthetic access$4802(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;J)J
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    return-wide p1
.end method

.method static synthetic access$5002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    return p1
.end method

.method static synthetic access$5108(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)I
    .locals 2

    .line 132
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    return v0
.end method

.method static synthetic access$5200(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->shouldSendEvent()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->sendHeartbeatEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->showRetryError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    return-object p0
.end method

.method static synthetic access$802(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;)Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    return-object p1
.end method

.method private checkVPNAndRequestVod(Ljava/lang/String;)V
    .locals 2

    .line 481
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

    .line 482
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->isBlockVPN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-static {p0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->checkVPN()Lrx/Observable;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 485
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 486
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    goto :goto_0

    .line 510
    :cond_0
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVod(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private createHeartbeatRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 2059
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2062
    :cond_0
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$9;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createJWPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/hktve/viutv/model/viutv/ad/AdSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 748
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 750
    new-instance v6, Lcom/hktve/viutv/util/PlayerPreRollHelper;

    invoke-direct {v6}, Lcom/hktve/viutv/util/PlayerPreRollHelper;-><init>()V

    iput-object v6, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

    .line 751
    new-instance v6, Lcom/hktve/viutv/util/PlayerMidRollHelper;

    invoke-direct {v6}, Lcom/hktve/viutv/util/PlayerMidRollHelper;-><init>()V

    iput-object v6, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->midrollHelper:Lcom/hktve/viutv/util/PlayerMidRollHelper;

    const-string v6, ""

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    .line 753
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    .line 754
    new-instance v9, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;)V

    iput-object v9, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    .line 755
    iget-wide v11, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    invoke-static {v9, v11, v12}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;->access$1002(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;J)J

    if-eqz v3, :cond_5

    .line 758
    iget-object v9, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v9}, Lcom/hktve/viutv/model/viutv/episode/Episode;->isEpisode()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 761
    iget-object v9, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v9, v9, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    const-string v11, "ga_ad_pos"

    if-eqz v9, :cond_2

    .line 762
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 763
    :goto_1
    iget-object v13, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v13, v13, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 764
    iget-object v13, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v13, v13, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->prerolls:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 766
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 767
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    invoke-virtual/range {p3 .. p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v15

    iget-object v10, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    iget-object v7, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 773
    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getAdTarget()Ljava/util/HashMap;

    move-result-object v7

    .line 769
    invoke-static {v15, v13, v10, v7, v14}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdTag(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    .line 776
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    new-instance v10, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    invoke-direct {v10}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;-><init>()V

    new-array v13, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    .line 778
    invoke-virtual {v10, v13}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->tag([Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v7

    const-string v10, "pre"

    .line 779
    invoke-virtual {v7, v10}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->offset(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;

    move-result-object v7

    .line 780
    invoke-virtual {v7}, Lcom/jwplayer/pub/api/media/ads/AdBreak$Builder;->build()Lcom/jwplayer/pub/api/media/ads/AdBreak;

    move-result-object v7

    .line 781
    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 784
    iget-object v7, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->prerollHelper:Lcom/hktve/viutv/util/PlayerPreRollHelper;

    invoke-virtual {v7, v9}, Lcom/hktve/viutv/util/PlayerPreRollHelper;->setPrerollAdTags(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 788
    :goto_2
    iget-object v7, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v7, v7, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->midrolls:Ljava/util/List;

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    .line 789
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 791
    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v14, v9, :cond_4

    .line 793
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 796
    iget-object v10, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v10, v10, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->midrolls:Ljava/util/List;

    iget-object v12, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->androidtv:Lcom/hktve/viutv/model/viutv/ad/AdAndroid;

    iget-object v12, v12, Lcom/hktve/viutv/model/viutv/ad/AdAndroid;->midrolls:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    rem-int v12, v14, v12

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hktve/viutv/model/viutv/network/abs/AdResp;

    .line 798
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 799
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-virtual/range {p3 .. p3}, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->getAd_id()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v3, Lcom/hktve/viutv/model/viutv/ad/AdSpec;->referer:Ljava/lang/String;

    iget-object v8, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 805
    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getAdTarget()Ljava/util/HashMap;

    move-result-object v8

    .line 801
    invoke-static {v13, v10, v15, v8, v12}, Lcom/hktve/viutv/model/viutv/ad/AdManager;->getAdTag(Ljava/lang/String;Lcom/hktve/viutv/model/viutv/network/abs/AdResp;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    .line 809
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 811
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 812
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 814
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {v7, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v8, 0x1

    goto :goto_3

    .line 821
    :cond_4
    invoke-static {}, Lcom/hktve/viutv/util/Constants;->isForNowOne()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 823
    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->midrollHelper:Lcom/hktve/viutv/util/PlayerMidRollHelper;

    invoke-virtual {v3, v7}, Lcom/hktve/viutv/util/PlayerMidRollHelper;->setMidrollSchedule(Ljava/util/LinkedHashMap;)V

    .line 824
    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->midrollHelper:Lcom/hktve/viutv/util/PlayerMidRollHelper;

    new-instance v4, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda3;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-virtual {v3, v4}, Lcom/hktve/viutv/util/PlayerMidRollHelper;->setPlayAdCallback(Lcom/hktve/viutv/util/PlayerMidRollHelper$MidrollPlayCallback;)V

    .line 832
    :cond_5
    new-instance v3, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    invoke-direct {v3}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;-><init>()V

    .line 833
    invoke-virtual {v3, v1}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    if-eqz v2, :cond_6

    .line 834
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 835
    new-instance v4, Lcom/hktve/viutv/controller/page/player/DRMCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/hktve/viutv/controller/page/player/DRMCallback;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->mediaDrmCallback(Lcom/jwplayer/pub/api/media/drm/MediaDrmCallback;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    .line 838
    :cond_6
    invoke-virtual {v3}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->build()Lcom/jwplayer/pub/api/media/playlists/PlaylistItem;

    move-result-object v2

    .line 840
    iget-boolean v3, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    if-nez v3, :cond_7

    if-eqz p5, :cond_7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 841
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 842
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 843
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".srt"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".m3u8"

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 844
    new-instance v7, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    invoke-direct {v7}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;-><init>()V

    .line 847
    invoke-virtual {v7, v6}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->file(Ljava/lang/String;)Lcom/jwplayer/pub/api/media/captions/Caption$Builder;

    move-result-object v6

    .line 848
    invoke-virtual {v6}, Lcom/jwplayer/pub/api/media/captions/Caption$Builder;->build()Lcom/jwplayer/pub/api/media/captions/Caption;

    move-result-object v6

    .line 844
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 853
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 854
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v2

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1201c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    .line 858
    new-instance v3, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    invoke-direct {v3}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;-><init>()V

    .line 859
    invoke-virtual {v3, v2}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->imaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object v2

    .line 860
    invoke-virtual {v2, v5}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->schedule(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;

    move-result-object v2

    .line 861
    invoke-virtual {v2}, Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/ads/ima/ImaAdvertisingConfig;

    move-result-object v2

    .line 872
    new-instance v3, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    invoke-direct {v3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;-><init>()V

    .line 873
    invoke-virtual {v3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->hideAllControls()Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;

    move-result-object v3

    .line 874
    invoke-virtual {v3}, Lcom/jwplayer/pub/api/configuration/UiConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/UiConfig;

    move-result-object v3

    .line 876
    new-instance v4, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    invoke-direct {v4}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;-><init>()V

    const/4 v5, 0x1

    .line 877
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->autostart(Ljava/lang/Boolean;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v4

    .line 878
    invoke-virtual {v4, v1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->playlist(Ljava/util/List;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v1

    .line 880
    invoke-virtual {v1, v2}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->advertisingConfig(Lcom/jwplayer/pub/api/configuration/ads/AdvertisingConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v1

    .line 881
    invoke-virtual {v1, v3}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->uiConfig(Lcom/jwplayer/pub/api/configuration/UiConfig;)Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;

    move-result-object v1

    .line 882
    invoke-virtual {v1}, Lcom/jwplayer/pub/api/configuration/PlayerConfig$Builder;->build()Lcom/jwplayer/pub/api/configuration/PlayerConfig;

    move-result-object v1

    const-string v2, "Vincent"

    const-string v3, "init player"

    .line 884
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v2, Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-direct {v2, v0}, Lcom/jwplayer/pub/view/JWPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    .line 886
    invoke-virtual {v2, v0}, Lcom/jwplayer/pub/view/JWPlayerView;->getPlayer(Landroidx/lifecycle/LifecycleOwner;)Lcom/jwplayer/pub/api/JWPlayer;

    move-result-object v2

    iput-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    .line 889
    invoke-direct/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object v2

    .line 890
    new-instance v3, Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/npaw/youbora/lib6/plugin/Plugin;-><init>(Lcom/npaw/youbora/lib6/plugin/Options;Landroid/content/Context;)V

    iput-object v3, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 891
    invoke-virtual {v3, v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setActivity(Landroid/app/Activity;)V

    .line 892
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance v3, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdapter;

    iget-object v4, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {v3, v4}, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdapter(Lcom/npaw/youbora/lib6/adapter/PlayerAdapter;)V

    .line 893
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    new-instance v3, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdsAdapter;

    iget-object v4, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {v3, v4}, Lcom/hktve/viutv/controller/page/player/CustomYouboraJWPlayerAdsAdapter;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/lib6/plugin/Plugin;->setAdsAdapter(Lcom/npaw/youbora/lib6/adapter/AdAdapter;)V

    .line 895
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v2}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireInit()V

    .line 897
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v2, v1}, Lcom/jwplayer/pub/api/JWPlayer;->setup(Lcom/jwplayer/pub/api/configuration/PlayerConfig;)V

    .line 898
    new-instance v1, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-direct {v1, v2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;-><init>(Lcom/jwplayer/pub/api/JWPlayer;)V

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    .line 899
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->setEventListener(Lcom/hktve/viutv/controller/page/player/PlayerEventListener;)V

    .line 900
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    if-nez v1, :cond_8

    new-instance v1, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    invoke-direct {v1, v0}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    .line 901
    :cond_8
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    const-string v3, "player_load"

    invoke-virtual {v1, v3, v2}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->sendAwsTrackingEvent(Ljava/lang/String;Lcom/hktve/viutv/model/tracker/VideoTracker;)V

    .line 902
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 903
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 904
    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {v2, v1}, Lcom/jwplayer/pub/view/JWPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    iget-boolean v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    if-nez v1, :cond_9

    if-eqz p5, :cond_9

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x1

    .line 909
    invoke-direct {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setDefaultCaptionOption(I)V

    .line 912
    :cond_9
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 914
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v2, "MusicService"

    invoke-direct {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 915
    new-instance v2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$MediaSessionCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$MediaSessionCallback;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 916
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 935
    invoke-direct {v0, v3}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 938
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PREV_EPISODE_KEY"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 940
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 943
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_a

    .line 944
    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$3;

    invoke-direct {v1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$3;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    .line 950
    :cond_a
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_b

    .line 951
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 952
    iget-object v1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    iget v3, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->reInitPlayerInterval:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method private createYbOptions()Lcom/npaw/youbora/lib6/plugin/Options;
    .locals 23

    move-object/from16 v1, p0

    .line 605
    new-instance v2, Lcom/npaw/youbora/lib6/plugin/Options;

    invoke-direct {v2}, Lcom/npaw/youbora/lib6/plugin/Options;-><init>()V

    const/4 v0, 0x0

    .line 607
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentIsLive(Ljava/lang/Boolean;)V

    const-string v3, "viutv"

    .line 608
    invoke-virtual {v2, v3}, Lcom/npaw/youbora/lib6/plugin/Options;->setAccountCode(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setOffline(Z)V

    .line 610
    iget-object v0, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setUsername(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ViuTV"

    .line 613
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppName(Ljava/lang/String;)V

    const-string v0, "2.7.4"

    .line 614
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setAppReleaseVersion(Ljava/lang/String;)V

    .line 616
    iget-object v0, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-object v3, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result v3

    .line 618
    iget-object v4, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v4}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v4

    .line 619
    iget-object v5, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v5}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getMediaId()Ljava/lang/String;

    move-result-object v5

    .line 620
    iget-object v6, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v6}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 621
    iget-object v7, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgramme:Lcom/hktve/viutv/model/viutv/program/Programme;

    invoke-virtual {v7}, Lcom/hktve/viutv/model/viutv/program/Programme;->getProductHktamCleanVersionId()Ljava/lang/String;

    move-result-object v7

    .line 622
    iget-object v8, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v8}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getEpisodesCount()I

    move-result v8

    .line 623
    iget-object v9, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v9}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getSeasonNo()Ljava/lang/String;

    move-result-object v9

    .line 624
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 625
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 626
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getVideoMeta()Lcom/hktve/viutv/model/viutv/program/VideoMeta;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 627
    iget-object v10, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v10}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getVideoMeta()Lcom/hktve/viutv/model/viutv/program/VideoMeta;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hktve/viutv/model/viutv/program/VideoMeta;->getTags()Ljava/util/List;

    move-result-object v10

    .line 628
    iget-object v11, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v11}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getVideoMeta()Lcom/hktve/viutv/model/viutv/program/VideoMeta;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hktve/viutv/model/viutv/program/VideoMeta;->getActors()Ljava/util/List;

    move-result-object v11

    .line 630
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 631
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 632
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 633
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 634
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 635
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 636
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v12

    .line 638
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    if-eqz v12, :cond_2

    .line 639
    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getType()Ljava/util/List;

    move-result-object v12

    .line 640
    iget-object v13, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v13}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getTags()Ljava/util/List;

    move-result-object v13

    .line 641
    iget-object v14, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v14}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getNature()Ljava/util/List;

    move-result-object v14

    .line 642
    iget-object v15, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v15}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getProducer()Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v12

    .line 643
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getGenre()Ljava/util/List;

    move-result-object v12

    move-object/from16 v17, v12

    .line 644
    iget-object v12, v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    invoke-virtual {v12}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->getDirector()Ljava/util/List;

    move-result-object v12

    move-object/from16 v18, v12

    .line 645
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

    .line 649
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

    .line 650
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

    .line 652
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 655
    :cond_4
    invoke-virtual {v2, v13}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTitle(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v2, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentEpisodeTitle(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setProgram(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentTvShow(Ljava/lang/String;)V

    if-eqz v7, :cond_5

    .line 661
    invoke-virtual {v2, v7}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension2(Ljava/lang/String;)V

    :cond_5
    if-lez v8, :cond_6

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension3(Ljava/lang/String;)V

    :cond_6
    if-eqz v5, :cond_7

    .line 667
    invoke-virtual {v2, v5}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentId(Ljava/lang/String;)V

    :cond_7
    if-eqz v6, :cond_8

    .line 670
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentDuration(Ljava/lang/Double;)V

    :cond_8
    if-eqz v9, :cond_9

    .line 673
    invoke-virtual {v2, v9}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentSeason(Ljava/lang/String;)V

    :cond_9
    if-eqz v10, :cond_a

    .line 675
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 676
    invoke-direct {v1, v10}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension4(Ljava/lang/String;)V

    :cond_a
    if-eqz v11, :cond_b

    .line 678
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 679
    invoke-direct {v1, v11}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension5(Ljava/lang/String;)V

    :cond_b
    if-eqz v12, :cond_c

    .line 681
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 682
    invoke-direct {v1, v12}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension6(Ljava/lang/String;)V

    :cond_c
    if-eqz v18, :cond_d

    .line 684
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    move-object/from16 v13, v18

    .line 685
    invoke-direct {v1, v13}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension7(Ljava/lang/String;)V

    :cond_d
    if-eqz v17, :cond_e

    .line 687
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    move-object/from16 v14, v17

    .line 688
    invoke-direct {v1, v14}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension8(Ljava/lang/String;)V

    :cond_e
    if-eqz v16, :cond_f

    .line 690
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    move-object/from16 v15, v16

    .line 691
    invoke-direct {v1, v15}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension9(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, v20

    if-eqz v0, :cond_10

    .line 693
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 694
    invoke-direct {v1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension10(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, v21

    if-eqz v0, :cond_11

    .line 696
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 697
    invoke-direct {v1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension11(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v12, v22

    if-eqz v12, :cond_12

    .line 699
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 700
    invoke-direct {v1, v12}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->filterArrToYbString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentCustomDimension12(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 704
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

    .line 997
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_3

    .line 998
    sget-object v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$10;->$SwitchMap$com$jwplayer$pub$api$PlayerState:[I

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

    .line 600
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

    .line 601
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

    .line 1920
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1921
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

    .line 2171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "container_title"

    const-string v2, "vod_player"

    .line 2172
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getGA4VideoInfoParams()Landroid/os/Bundle;
    .locals 4

    .line 2178
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4CommonParams()Landroid/os/Bundle;

    move-result-object v0

    .line 2180
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-static {v1}, Lcom/hktve/viutv/util/GA4Helper;->parseToItemInfo(Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;

    move-result-object v1

    .line 2181
    iget-object v2, v1, Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;->itemInfo:Ljava/lang/String;

    const-string v3, "video_info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    iget-object v1, v1, Lcom/hktve/viutv/util/GA4Helper$GA4ItemInfo;->itemInfoEn:Ljava/lang/String;

    const-string v2, "video_info_en"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNextVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 3

    .line 1965
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPlayingTrailer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1967
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

    .line 1968
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-ltz v0, :cond_2

    .line 1969
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hktve/viutv/model/viutv/episode/Episode;

    return-object v0

    .line 1970
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getPrevVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;
    .locals 4

    .line 1986
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1989
    :cond_0
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPlayingTrailer()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1990
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

    .line 1992
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

    .line 1993
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    if-ltz v0, :cond_4

    .line 1994
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

    .line 1058
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

    .line 1059
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

    .line 1956
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1959
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

    .line 2081
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

    .line 1978
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPlayingTrailer()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1979
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

    .line 1981
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

    .line 600
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

    .line 1188
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->show(Z)V

    .line 1189
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->showRepeatButton(Z)V

    .line 1191
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateNowPlayingStatePosition()V

    .line 1192
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->tickle()V

    .line 1193
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 1194
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    :cond_0
    return-void
.end method

.method private playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V
    .locals 3

    .line 1930
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1931
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

    .line 1932
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->genreSlug:Ljava/lang/String;

    const-string v2, "GENRE_ID_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Episode"

    .line 1933
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1934
    iget-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    const-string v2, "IS_RETRYED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1935
    iget v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    const-string v2, "PREFER_AUDIO_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1936
    iget v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    const-string v2, "PREFER_CAPTION_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1938
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v1, p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getMatchHistory(Lcom/hktve/viutv/model/viutv/episode/Episode;)Lcom/hktve/viutv/model/viutv/user/History;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1940
    iget-wide v1, p1, Lcom/hktve/viutv/model/viutv/user/History;->last_stop_at:J

    const-string p1, "LAST_WATCH_POSITION"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x2000000

    .line 1942
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1943
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1944
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    return-void
.end method

.method private requestVod(Ljava/lang/String;)V
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Product ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestVod"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v0, Lcom/hktve/viutv/controller/network/now/request/VodRequest;

    invoke-direct {v0, p0, p1}, Lcom/hktve/viutv/controller/network/now/request/VodRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/now/request/VodRequest;->request()Lrx/Single;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object p1

    .line 519
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 520
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$2;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    .line 521
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    return-void
.end method

.method private seekClicked(Z)V
    .locals 9

    .line 1706
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1710
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seeking:Z

    .line 1711
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 1716
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    long-to-float v0, v0

    .line 1717
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    int-to-long v0, v0

    mul-long v0, v0, v6

    :cond_2
    if-eqz p1, :cond_3

    .line 1721
    iget-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    goto :goto_0

    .line 1723
    :cond_3
    iget-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1726
    :goto_0
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    iget-object v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v4}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    sub-long/2addr v4, v6

    cmp-long v8, v0, v4

    if-lez v8, :cond_4

    .line 1727
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1729
    :cond_4
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    .line 1730
    iput-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    .line 1733
    :cond_5
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    iget-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setCurrentTime(J)V

    .line 1735
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1736
    iget-wide v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekTarget:J

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    if-eqz p1, :cond_6

    const-string p1, "fast_forward_video"

    goto :goto_1

    :cond_6
    const-string p1, "rewind_video"

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1741
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1742
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendHeartbeatEvent()V
    .locals 5

    .line 2097
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_duration(D)V

    .line 2099
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_seconds_viewed(D)V

    .line 2100
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

    .line 2101
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setInterval(D)V

    .line 2102
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setStatus(Lcom/jwplayer/pub/api/PlayerState;)V

    .line 2103
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    const-string v2, "video_engagement"

    invoke-virtual {v0, v2, v1}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->sendAwsTrackingEvent(Ljava/lang/String;Lcom/hktve/viutv/model/tracker/VideoTracker;)V

    const/4 v0, 0x0

    .line 2104
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    .line 2105
    iput v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    .line 2106
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    :cond_0
    return-void
.end method

.method private setDefaultCaptionOption(I)V
    .locals 2

    .line 734
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PREFER_CAPTION_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 736
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0, p1}, Lcom/jwplayer/pub/api/JWPlayer;->setCurrentCaptions(I)V

    .line 737
    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    .line 738
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->updateYbOptions()V

    return-void
.end method

.method private setPlayerContainerMargin(I)V
    .locals 2

    int-to-float p1, p1

    .line 959
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 960
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 958
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 961
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 965
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 966
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSystemNowPlayerCard(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 971
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 974
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 975
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    .line 974
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 976
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 977
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 976
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 978
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 979
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 978
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 981
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 982
    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    .line 981
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 983
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    if-eqz p1, :cond_0

    const-string v1, "android.media.metadata.ART"

    .line 986
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 991
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private shouldSendEvent()Ljava/lang/Boolean;
    .locals 4

    .line 2085
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2086
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2089
    :cond_0
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->numOfSendTracking:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 2090
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2092
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

    .line 2018
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingNextFragment:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2021
    :cond_0
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2026
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2029
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getNextVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v3

    new-instance v4, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$8;

    invoke-direct {v4, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$8;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-static {p0, v3, v4}, Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;->newInstance(Landroid/content/Context;Lcom/hktve/viutv/model/viutv/episode/Episode;Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment$PlayNextDialogFragmentDelegate;)Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;

    move-result-object v3

    const v4, 0x7f1300ec

    .line 2043
    invoke-virtual {v3, v2, v4}, Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;->setStyle(II)V

    const-string v4, "PlayNextDialogFragment"

    .line 2044
    invoke-virtual {v3, v0, v4}, Lcom/hktve/viutv/controller/page/player/PlayNextDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2046
    iput-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingNextFragment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 2051
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2052
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    return v2
.end method

.method private showRequiredLoginFragment()V
    .locals 3

    .line 542
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingRequiredLoginFragment:Z

    if-eqz v0, :cond_0

    return-void

    .line 545
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    new-instance v1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$$ExternalSyntheticLambda2;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-static {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;->newInstance(Landroid/content/Context;Lcom/hktve/viutv/model/viutv/episode/Episode;Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment$RequiredLoginFragmentDelegate;)Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    const v0, 0x7f0b01ab

    .line 554
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 556
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b01a6

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mRequiredLoginFragment:Lcom/hktve/viutv/controller/page/player/RequiredLoginFragment;

    .line 560
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    .line 561
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v0, 0x1

    .line 564
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isShowingRequiredLoginFragment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 569
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showRetryError(Ljava/lang/String;)V
    .locals 2

    .line 2002
    new-instance v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2003
    :cond_0
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    :goto_0
    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->errorMsg:Ljava/lang/String;

    .line 2004
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    iput-object p1, v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->retryButtonMsg:Ljava/lang/String;

    .line 2005
    invoke-virtual {v0, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackErrorFragment;->setVideoPlaybackActivity(Landroid/app/Activity;)V

    .line 2007
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 2008
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/16 v1, 0x1001

    .line 2009
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0b01ab

    .line 2010
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 2011
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private toTimeString(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 2163
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 2164
    div-long v2, p1, v0

    .line 2165
    rem-long v0, p1, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 2166
    rem-long/2addr p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2167
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

    .line 1014
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x24e

    .line 1015
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 1020
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentPlayCardState()I

    move-result v1

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1021
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private updateYbOptions()V
    .locals 6

    const-string v0, "UpdateOptions"

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    if-eqz v2, :cond_1

    .line 712
    invoke-virtual {v1}, Lcom/npaw/youbora/lib6/plugin/Plugin;->getOptions()Lcom/npaw/youbora/lib6/plugin/Options;

    move-result-object v1

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCaption: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " setContentLanguage:language "

    if-ltz v2, :cond_0

    .line 716
    :try_start_1
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v2}, Lcom/jwplayer/pub/api/JWPlayer;->getCaptionsList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 718
    iget v4, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jwplayer/pub/api/media/captions/Caption;

    .line 719
    invoke-virtual {v2}, Lcom/jwplayer/pub/api/media/captions/Caption;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/npaw/youbora/lib6/plugin/Options;->setContentSubtitles(Ljava/lang/String;)V

    .line 720
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

    .line 724
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

    .line 725
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

    .line 728
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private upsertWatchPosition()V
    .locals 4

    .line 1025
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

    .line 1032
    :cond_0
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wes"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-wide v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoLastOnTimeValue:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1034
    invoke-direct {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPositionWithTime(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private upsertWatchPositionWithTime(J)V
    .locals 12

    .line 1038
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

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1047
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide p1

    :cond_2
    move-wide v4, p1

    .line 1050
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

    .line 1051
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

    .line 1881
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1882
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

    .line 1883
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object p1

    const-string v1, "change_volume"

    invoke-virtual {p1, v1, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getCurrentCaption()I
    .locals 1

    .line 1952
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->currentCaption:I

    return v0
.end method

.method public getPlayerCurrentAudioIndex()I
    .locals 1

    .line 1948
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 2159
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

.method synthetic lambda$createJWPlayer$2$com-hktve-viutv-controller-page-player-VideoPlaybackActivity(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1

    .line 826
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/jwplayer/pub/api/JWPlayer;->playAd([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$isAdultChecking$3$com-hktve-viutv-controller-page-player-VideoPlaybackActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1060
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showRequiredLoginFragment$0$com-hktve-viutv-controller-page-player-VideoPlaybackActivity()V
    .locals 5

    .line 549
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hktve/viutv/controller/page/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onOpenLogin"

    const-string v4, "exclusive"

    invoke-virtual {v1, v3, v4, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2711

    .line 551
    invoke-virtual {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 2136
    const-class v0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;

    invoke-super {p0, p1, p2, p3}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_1

    const/16 p3, 0x232a

    if-ne p2, p3, :cond_0

    .line 2140
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2141
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2142
    invoke-virtual {p0, p3}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 2144
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    :cond_1
    const/16 p3, 0x2712

    if-ne p1, p3, :cond_3

    const p1, 0x13881

    if-ne p2, p1, :cond_2

    .line 2149
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2150
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2151
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 2153
    :cond_2
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->isControlsOverlayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 473
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    const-string v2, "CURRENT_EPISODE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 474
    invoke-virtual {p0, v1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setResult(ILandroid/content/Intent;)V

    .line 475
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    .line 477
    :cond_0
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 358
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 359
    invoke-static {p0}, Lcom/hktve/viutv/util/Util;->setUserInterfaceLanguage(Landroid/content/Context;)V

    .line 360
    sput-object p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->instance:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;

    const p1, 0x7f1201c7

    .line 361
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorMsg:Ljava/lang/String;

    const p1, 0x7f1201d1

    .line 362
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerErrorRetryText:Ljava/lang/String;

    .line 364
    invoke-static {p0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    const p1, 0x7f0e0023

    .line 366
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0b0237

    .line 367
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->debugInfoContainer:Landroid/view/View;

    const p1, 0x7f0b039d

    .line 368
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->debugInfoTextView:Landroid/widget/TextView;

    const p1, 0x7f0b02fc

    .line 369
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b02ef

    .line 370
    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    .line 372
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SOURCE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->source:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "GENRE_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->genreSlug:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Episode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hktve/viutv/model/viutv/episode/Episode;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 376
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Program_trailer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hktve/viutv/model/viutv/episode/Episode;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mTrailer:Lcom/hktve/viutv/model/viutv/episode/Episode;

    .line 378
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_CLIP_ONLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isClipOnly:Z

    .line 381
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PREFER_AUDIO_INDEX"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    .line 383
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AD_SPEC_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    .line 384
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LAST_WATCH_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video start position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlaybackActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->debugInfoContainer:Landroid/view/View;

    invoke-static {}, Lcom/hktve/viutv/util/Constants;->shouldShowDebugLog()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 389
    new-instance p1, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    .line 390
    new-instance p1, Lcom/hktve/viutv/model/tracker/VideoTracker;

    invoke-direct {p1}, Lcom/hktve/viutv/model/tracker/VideoTracker;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    .line 391
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setUser(Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setSource(Ljava/lang/String;)V

    .line 393
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/encore/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setDestination(Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setSerie_id(Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_id(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNameU3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setEpisode_title(Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getOnAirStartDate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setOnair_datetime(Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setVideo_type(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createHeartbeatRunnable()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    .line 400
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_RETRYED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    .line 402
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgrammeMeta()Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mProgrammeMeta:Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/program/ProgrammeMeta;->isConsecutive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->consecutive:Z

    .line 405
    iget-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    const-wide/16 v2, 0x0

    .line 406
    iput-wide v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mVideoStartPosition:J

    .line 410
    :cond_2
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getRequiredLogin()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result p1

    if-nez p1, :cond_3

    .line 411
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->showRequiredLoginFragment()V

    return-void

    .line 416
    :cond_3
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAdultChecking()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v2, 0x7f0b01ab

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 421
    instance-of v3, p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    if-eqz v3, :cond_5

    .line 422
    check-cast p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    goto :goto_2

    .line 424
    :cond_5
    new-instance p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-direct {p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;-><init>()V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    .line 425
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {p1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 427
    :goto_2
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {p1, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->show(Z)V

    .line 428
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isNextVideoAvailable()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->showPlayNext(Z)V

    .line 429
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isPrevVideoAvailable()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->showPlayPrevious(Z)V

    .line 430
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object p1

    .line 431
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v2, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setVideoGAParams(Landroid/os/Bundle;)V

    .line 432
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 436
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

    .line 437
    :cond_6
    new-instance v3, Lcom/hktve/viutv/controller/network/viu/request/ProgrammeRequest;

    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgramme_slug()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/hktve/viutv/controller/network/viu/request/ProgrammeRequest;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSpiceManager()Lcom/octo/android/robospice/SpiceManager;

    move-result-object v2

    const-wide/16 v5, -0x1

    new-instance v7, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$ProgrammeRequestListener;

    const/4 p1, 0x0

    invoke-direct {v7, p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$ProgrammeRequestListener;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$1;)V

    const-string v4, "ProgrammeRequest"

    invoke-virtual/range {v2 .. v7}, Lcom/octo/android/robospice/SpiceManager;->execute(Lcom/octo/android/robospice/request/SpiceRequest;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/RequestListener;)V

    goto :goto_3

    .line 440
    :cond_7
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    if-eqz p1, :cond_8

    .line 441
    invoke-virtual {p1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->cancel(Z)Z

    .line 443
    :cond_8
    new-instance p1, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    invoke-direct {p1, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    new-array v2, v1, [Ljava/lang/Void;

    .line 444
    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 445
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mAdSpec:Lcom/hktve/viutv/model/viutv/ad/AdSpec;

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->setVideoAdSpc(Lcom/hktve/viutv/model/viutv/ad/AdSpec;)V

    .line 446
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getAdTarget()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->setVideoAdTarget(Ljava/util/HashMap;)V

    .line 447
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerURLAndAdsTask:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getMidrollAdbreaks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerURLAndAdsTask;->setMidrollTimes(Ljava/util/List;)V

    .line 448
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoTracker:Lcom/hktve/viutv/model/tracker/VideoTracker;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->genreSlug:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/model/tracker/VideoTracker;->setGenre_id(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProductId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Null"

    .line 450
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 451
    invoke-direct {p0, p1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->checkVPNAndRequestVod(Ljava/lang/String;)V

    .line 455
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {p1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getEpisodeNum()I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-le p1, v2, :cond_a

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 456
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

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getZhEpisodeNameU3()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "%s | \u7b2c%d\u96c6 | %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    new-array p1, v3, [Ljava/lang/Object;

    .line 458
    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getProgram_title()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/episode/Episode;->getZhEpisodeNameU3()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%s | %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 461
    :goto_4
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hktve/viutv/util/ViuTVTracker;->logScreen(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1138
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    const-string v2, "CURRENT_EPISODE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 1139
    invoke-virtual {p0, v1, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->setResult(ILandroid/content/Intent;)V

    .line 1141
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    .line 1148
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->eventHandler:Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/JWPlayerEventHandler;->onDestroy()V

    .line 1152
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->jwplayerContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1153
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireStop()V

    .line 1155
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdapter()V

    .line 1156
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->removeAdsAdapter()V

    .line 1157
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    .line 1159
    :cond_0
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_2

    .line 1164
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 1167
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1168
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 1169
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 1171
    :cond_3
    iget v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->video_seconds_viewed:I

    if-eqz v0, :cond_4

    .line 1172
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->sendHeartbeatEvent()V

    .line 1174
    :cond_4
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    if-eqz v0, :cond_5

    .line 1175
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->destory()V

    .line 1176
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    .line 1178
    :cond_5
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1179
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitRunnable:Ljava/lang/Runnable;

    .line 1180
    iput-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerReInitHandler:Landroid/os/Handler;

    .line 1181
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onDestroy()V

    .line 1182
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->createHeartbeatRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    if-eqz v0, :cond_2

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    return v2

    :cond_0
    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    .line 588
    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->isFirstRowFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {p1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->hideControlsOverlay(Z)V

    return v2

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v0, p1, p2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 596
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 1086
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onPause()V

    .line 1087
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1088
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1090
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    .line 1091
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->pasueAwsSession()V

    .line 1093
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v1

    sget-object v2, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1096
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVisibleBehind(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_1

    .line 1100
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    .line 1106
    :cond_1
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isVideoPlayed:Z

    if-eqz v0, :cond_4

    .line 1107
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1108
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "video_terminate"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1113
    :cond_2
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v1, :cond_3

    .line 1114
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    .line 1117
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->requestVisibleBehind(Z)Z

    .line 1119
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    if-eqz v0, :cond_5

    .line 1120
    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->pause()V

    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1070
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onResume()V

    .line 1071
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->awsVideoTrackingHelper:Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/player/AwsVideoTrackingHelper;->resumeAwsSession()V

    .line 1072
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_1

    .line 1074
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isHeartbeatRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->callTrackinghandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->heartbeatRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1075
    iget v2, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->interval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->play()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 575
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->skipLocale:Ljava/lang/Boolean;

    .line 576
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onStart()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 1128
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->upsertWatchPosition()V

    .line 1131
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->finish()V

    .line 1132
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsSpiceFragmentActivity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public playNextVideo()V
    .locals 3

    .line 1865
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

    .line 1867
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1868
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_next"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1871
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getNextVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1873
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    goto :goto_0

    .line 1875
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201cc

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

    .line 1670
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->ybPlugin:Lcom/npaw/youbora/lib6/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {v0}, Lcom/npaw/youbora/lib6/plugin/Plugin;->fireInit()V

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_1

    return-void

    .line 1678
    :cond_1
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1679
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getState()Lcom/jwplayer/pub/api/PlayerState;

    move-result-object v1

    sget-object v2, Lcom/jwplayer/pub/api/PlayerState;->PLAYING:Lcom/jwplayer/pub/api/PlayerState;

    if-ne v1, v2, :cond_2

    .line 1682
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_pause"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1683
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->pause()V

    goto :goto_0

    .line 1685
    :cond_2
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_resume"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1686
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->play()V

    :goto_0
    return-void
.end method

.method public playPreviousVideo()V
    .locals 3

    .line 1906
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getGA4VideoInfoParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1907
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->getCurrentTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    invoke-static {p0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v1

    const-string v2, "click_player_previous"

    invoke-virtual {v1, v2, v0}, Lcom/hktve/viutv/util/ViuTVTracker;->sendCustomEventTracker(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1910
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getPrevVideo()Lcom/hktve/viutv/model/viutv/episode/Episode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1912
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    goto :goto_0

    .line 1914
    :cond_0
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201cd

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

    .line 1888
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1891
    :cond_0
    iget-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isAlreadyPlaying:Z

    if-nez v0, :cond_2

    .line 1893
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1894
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    goto :goto_0

    .line 1896
    :cond_1
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisode:Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getEpisodeIndexFromList(Ljava/util/List;Lcom/hktve/viutv/model/viutv/episode/Episode;)I

    move-result v0

    .line 1897
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->mEpisodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hktve/viutv/model/viutv/episode/Episode;

    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playEpisode(Lcom/hktve/viutv/model/viutv/episode/Episode;)V

    :goto_0
    const/4 v0, 0x1

    .line 1899
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1901
    iput-boolean v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isRetryed:Z

    :goto_1
    return-void
.end method

.method public replay()V
    .locals 3

    .line 1758
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerEvent:Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;->access$4902(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$PlayerEvent;Z)Z

    .line 1759
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->videoPlaybackControlFragment:Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackControlFragment;->setFadingEnabled(Z)V

    .line 1760
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jwplayer/pub/api/JWPlayer;->seek(D)V

    :cond_0
    return-void
.end method

.method public seekBackward()V
    .locals 1

    const/4 v0, 0x0

    .line 1702
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekClicked(Z)V

    return-void
.end method

.method public seekForward()V
    .locals 1

    const/4 v0, 0x1

    .line 1694
    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->seekClicked(Z)V

    return-void
.end method

.method public showAudioChannelMenu()V
    .locals 8

    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v1}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1776
    :goto_0
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getAudioTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/16 v3, 0xa

    const v4, 0x7f1201c4

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 1779
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

    .line 1781
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

    .line 1786
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1787
    iget v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerCurrentAudioIndex:I

    invoke-static {v0, v3}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;

    move-result-object v3

    const v4, 0x7f1300ec

    .line 1788
    invoke-virtual {v3, v2, v4}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setStyle(II)V

    .line 1789
    new-instance v2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$5;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v0, "AudioMenuDialogFragment"

    .line 1802
    invoke-virtual {v3, v1, v0}, Lcom/hktve/viutv/controller/page/player/AudioMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showCaptionMenu()V
    .locals 5

    .line 1807
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1809
    iget-boolean v1, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->isDrmEnabled:Z

    if-eqz v1, :cond_0

    .line 1810
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

    .line 1812
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

    const v3, 0x7f1300ec

    .line 1814
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment;->setStyle(II)V

    .line 1815
    new-instance v2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$6;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$6;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "CaptionMenuDialogFragment"

    .line 1835
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showQualityMenu()V
    .locals 5

    .line 1840
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->playerView:Lcom/jwplayer/pub/view/JWPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v0}, Lcom/jwplayer/pub/api/JWPlayer;->getQualityLevels()Ljava/util/List;

    move-result-object v0

    .line 1846
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1847
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1848
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;

    invoke-virtual {v4}, Lcom/jwplayer/pub/api/media/adaptive/QualityLevel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1851
    :cond_1
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1852
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;->player:Lcom/jwplayer/pub/api/JWPlayer;

    invoke-interface {v3}, Lcom/jwplayer/pub/api/JWPlayer;->getCurrentQuality()I

    move-result v3

    invoke-static {v1, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;

    move-result-object v1

    const v3, 0x7f1300ec

    .line 1853
    invoke-virtual {v1, v2, v3}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setStyle(II)V

    .line 1854
    new-instance v2, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$7;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity$7;-><init>(Lcom/hktve/viutv/controller/page/player/VideoPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->setPlayerMenuDialogDidClickListener(Lcom/hktve/viutv/controller/page/player/AbstractPlayerMenuDialogFragment$PlayerMenuDialogDidClickListener;)V

    const-string v2, "QualityMenuDialogFragment"

    .line 1860
    invoke-virtual {v1, v0, v2}, Lcom/hktve/viutv/controller/page/player/QualityMenuDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
