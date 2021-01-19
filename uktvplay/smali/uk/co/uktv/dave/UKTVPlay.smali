.class public Luk/co/uktv/dave/UKTVPlay;
.super Luk/co/uktv/dave/core/AppHostActivity;
.source "UKTVPlay.java"

# interfaces
.implements Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;


# static fields
.field public static final ACTION_LAUNCH_VIDEO_ONLY:Ljava/lang/String; = "uk.co.uktv.dave.VIDEO_ONLY"

.field private static final KEY_APP_PAUSED:Ljava/lang/String; = "appPaused"

.field private static final KEY_DIRECTIVE:Ljava/lang/String; = "directive"

.field private static final KEY_DIRECTIVE_RECIEVED:Ljava/lang/String; = "directiveReceived"

.field private static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field private static final KEY_POSITION:Ljava/lang/String; = "position"

.field private static final KEY_POSITION_UPDATED:Ljava/lang/String; = "positionUpdated"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_STATE_CHANGED:Ljava/lang/String; = "stateChanged"

.field private static final MIME_TYPE_DASH:Ljava/lang/String; = "application/dash+xml"

.field private static final TAG:Ljava/lang/String; = "UKTVPlay"

.field private static final USER_AGENT:Ljava/lang/String; = "uktvplay"


# instance fields
.field private mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

.field private mHandler:Landroid/os/Handler;

.field private mLicenceAcquisitionURLProvider:Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;

.field private mMediaPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Luk/co/uktv/dave/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;-><init>()V

    return-void
.end method

.method private broadcastCapabilities()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Luk/co/uktv/dave/launcher/CapabilityBroadcaster;

    invoke-direct {v0}, Luk/co/uktv/dave/launcher/CapabilityBroadcaster;-><init>()V

    invoke-virtual {v0, p0}, Luk/co/uktv/dave/launcher/CapabilityBroadcaster;->broadcast(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method private onCreateUKTVPlay(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Luk/co/uktv/dave/core/AppHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    .line 57
    const-string v1, "uktvplay"

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/uktv/dave/UKTVPlay;->mUserAgent:Ljava/lang/String;

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Luk/co/uktv/dave/UKTVPlay;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlay;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f070004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Luk/co/uktv/dave/UKTVPlay;->mSurfaceView:Landroid/view/SurfaceView;

    .line 60
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlay;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 61
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlay;->broadcastCapabilities()V

    .line 62
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlay;->getAppLaunchUrl()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "appUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    const/16 v1, 0x29a

    invoke-virtual {p0, v1}, Luk/co/uktv/dave/UKTVPlay;->setErrorCode(I)V

    .line 65
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlay;->showErrorDialog()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v1, Luk/co/uktv/dave/MessageHandlerFactoryImpl;

    invoke-direct {v1}, Luk/co/uktv/dave/MessageHandlerFactoryImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Luk/co/uktv/dave/UKTVPlay;->loadApp(Ljava/lang/String;Luk/co/uktv/dave/core/MessageHandlerFactory;)V

    goto :goto_0
.end method

.method private onPauseUKTVPlay()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Luk/co/uktv/dave/core/MessageBuilder;

    const-string v1, "appPaused"

    invoke-direct {v0, v1}, Luk/co/uktv/dave/core/MessageBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Luk/co/uktv/dave/core/MessageBuilder;->send(Luk/co/uktv/dave/core/AppHostActivity;)V

    .line 73
    invoke-super {p0}, Luk/co/uktv/dave/core/AppHostActivity;->onPause()V

    .line 74
    return-void
.end method

.method private tearDownExoPlayerProvider()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlay;->mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "UKTVPlay"

    const-string v1, "Tearing down exo player provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlay;->mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

    invoke-virtual {v0}, Luk/co/uktv/dave/media/ExoPlayerProvider;->dispose()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/uktv/dave/UKTVPlay;->mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

    .line 190
    :cond_0
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlay;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 191
    return-void
.end method


# virtual methods
.method disposeMediaPlayer(Ljava/lang/String;)V
    .locals 6
    .param p1, "playerId"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/uktv/dave/media/MediaPlayer;

    .line 154
    .local v1, "mediaPlayer":Luk/co/uktv/dave/media/MediaPlayer;
    if-eqz v1, :cond_1

    .line 155
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayer;->dispose()V

    .line 157
    const-string v2, "UKTVPlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " disposed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlay;->tearDownExoPlayerProvider()V

    .line 169
    :cond_0
    return-void

    .line 159
    :cond_1
    const-string v2, "UKTVPlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot dispose: no player found with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_2
    const-string v2, "UKTVPlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " media players remain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "key":Ljava/lang/String;
    const-string v3, "UKTVPlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getAppLaunchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlay;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMediaPlayer(Ljava/lang/String;)Luk/co/uktv/dave/media/MediaPlayer;
    .locals 1
    .param p1, "playerId"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayer;

    return-object v0
.end method

.method protected getSplashView()Landroid/view/View;
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlay;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f070008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method initializePlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "playerId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "contentUrl"    # Ljava/lang/String;
    .param p4, "laUrl"    # Ljava/lang/String;
    .param p5, "initialPosition"    # J

    .prologue
    .line 123
    const-string v2, "UKTVPlay"

    const-string v3, "initializePlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p4, :cond_1

    .line 126
    const-string v2, "UKTVPlay"

    const-string v3, "LA URL present - create new exoplayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayer;

    .line 128
    .local v0, "mediaPlayer":Luk/co/uktv/dave/media/MediaPlayer;
    const-string v3, "UKTVPlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tearing down player "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayer;->stop()V

    .line 130
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayer;->dispose()V

    goto :goto_0

    .line 132
    .end local v0    # "mediaPlayer":Luk/co/uktv/dave/media/MediaPlayer;
    :cond_0
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 133
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlay;->tearDownExoPlayerProvider()V

    .line 135
    :cond_1
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

    if-nez v2, :cond_2

    .line 136
    new-instance v2, Luk/co/uktv/dave/media/ExoPlayerProvider;

    iget-object v3, p0, Luk/co/uktv/dave/UKTVPlay;->mUserAgent:Ljava/lang/String;

    iget-object v4, p0, Luk/co/uktv/dave/UKTVPlay;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, p4, v3, v4}, Luk/co/uktv/dave/media/ExoPlayerProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

    .line 137
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

    invoke-virtual {v2}, Luk/co/uktv/dave/media/ExoPlayerProvider;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    iget-object v3, p0, Luk/co/uktv/dave/UKTVPlay;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 139
    :cond_2
    const/4 v5, 0x0

    .line 140
    .local v5, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    const-string v2, "application/dash+xml"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mUserAgent:Ljava/lang/String;

    iget-object v3, p0, Luk/co/uktv/dave/UKTVPlay;->mHandler:Landroid/os/Handler;

    invoke-static {p0, p3, v2, v3}, Luk/co/uktv/dave/media/Utils;->getDashMediaSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v5

    .line 145
    :goto_1
    new-instance v1, Luk/co/uktv/dave/media/MediaPlayer;

    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mExoPlayerProvider:Luk/co/uktv/dave/media/ExoPlayerProvider;

    invoke-virtual {v2}, Luk/co/uktv/dave/media/ExoPlayerProvider;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    move-object v2, p1

    move-object v3, p0

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Luk/co/uktv/dave/media/MediaPlayer;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;J)V

    .line 146
    .local v1, "player":Luk/co/uktv/dave/media/MediaPlayer;
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v1, p0}, Luk/co/uktv/dave/media/MediaPlayer;->setMediaPlayerListener(Luk/co/uktv/dave/media/MediaPlayer$MediaPlayerListener;)V

    .line 148
    invoke-virtual {v1, p5, p6}, Luk/co/uktv/dave/media/MediaPlayer;->playFrom(J)V

    .line 149
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlay;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 150
    return-void

    .line 143
    .end local v1    # "player":Luk/co/uktv/dave/media/MediaPlayer;
    :cond_3
    iget-object v2, p0, Luk/co/uktv/dave/UKTVPlay;->mUserAgent:Ljava/lang/String;

    invoke-static {p0, p3, v2}, Luk/co/uktv/dave/media/Utils;->getExtractorMediaSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v5

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/android/Kiwi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Luk/co/uktv/dave/core/AppHostActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Luk/co/uktv/dave/UKTVPlay;->onCreateUKTVPlay(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Luk/co/uktv/dave/core/AppHostActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Luk/co/uktv/dave/core/AppHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Luk/co/uktv/dave/core/AppHostActivity;->onDestroy()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    const-string v2, "UKTVPlay"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlay;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "directive":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    new-instance v2, Luk/co/uktv/dave/core/MessageBuilder;

    const-string v3, "directiveReceived"

    invoke-direct {v2, v3}, Luk/co/uktv/dave/core/MessageBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "directive"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, v3, v4}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, p0}, Luk/co/uktv/dave/core/MessageBuilder;->send(Luk/co/uktv/dave/core/AppHostActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v2, "UKTVPlay"

    const-string v3, "new intent received with no directive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlay;->onPauseUKTVPlay()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onPlaybackStateChange(Luk/co/uktv/dave/media/MediaPlayer;Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;)V
    .locals 4
    .param p1, "player"    # Luk/co/uktv/dave/media/MediaPlayer;
    .param p2, "state"    # Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .prologue
    .line 87
    const-string v1, "UKTVPlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaybackStateChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Luk/co/uktv/dave/core/MessageBuilder;

    const-string v2, "stateChanged"

    invoke-direct {v1, v2}, Luk/co/uktv/dave/core/MessageBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "playerId"

    .line 89
    invoke-virtual {p1}, Luk/co/uktv/dave/media/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    move-result-object v1

    const-string v2, "state"

    .line 90
    invoke-virtual {v1, v2, p2}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    move-result-object v0

    .line 91
    .local v0, "messageBuilder":Luk/co/uktv/dave/core/MessageBuilder;
    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->ERROR:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-virtual {v1, p2}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "errorCode"

    invoke-virtual {p1}, Luk/co/uktv/dave/media/MediaPlayer;->getError()Luk/co/uktv/dave/media/Error;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/uktv/dave/media/Error;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    .line 94
    :cond_0
    invoke-virtual {v0, p0}, Luk/co/uktv/dave/core/MessageBuilder;->send(Luk/co/uktv/dave/core/AppHostActivity;)V

    .line 95
    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->COMPLETED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-virtual {v1, p2}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Luk/co/uktv/dave/UKTVPlay;->mMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Luk/co/uktv/dave/media/MediaPlayer;->dispose()V

    .line 99
    :cond_1
    return-void
.end method

.method public onPlayheadUpdate(Luk/co/uktv/dave/media/MediaPlayer;J)V
    .locals 4
    .param p1, "player"    # Luk/co/uktv/dave/media/MediaPlayer;
    .param p2, "position"    # J

    .prologue
    .line 78
    const-string v0, "UKTVPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayheadUpdate position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Luk/co/uktv/dave/core/MessageBuilder;

    const-string v1, "positionUpdated"

    invoke-direct {v0, v1}, Luk/co/uktv/dave/core/MessageBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "playerId"

    .line 80
    invoke-virtual {p1}, Luk/co/uktv/dave/media/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    move-result-object v0

    const-string v1, "position"

    .line 81
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Luk/co/uktv/dave/core/MessageBuilder;->send(Luk/co/uktv/dave/core/AppHostActivity;)V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Luk/co/uktv/dave/core/AppHostActivity;->onResume()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Luk/co/uktv/dave/core/AppHostActivity;->onStart()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Luk/co/uktv/dave/core/AppHostActivity;->onStop()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    return-void
.end method
