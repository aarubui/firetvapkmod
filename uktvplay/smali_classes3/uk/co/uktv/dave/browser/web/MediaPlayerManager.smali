.class Luk/co/uktv/dave/browser/web/MediaPlayerManager;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerManager"


# instance fields
.field private final mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

.field private final mediaPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/co/uktv/dave/browser/web/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gKeXuqR-RtwKUWQ1yqktenl6FYE(Luk/co/uktv/dave/browser/web/MediaPlayerManager;Ljava/lang/String;IZJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->onPlaybackStateChange(Ljava/lang/String;IZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hUjQAYd7rbZ8bd-QxWl1Jgbwex4(Luk/co/uktv/dave/browser/web/MediaPlayerManager;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->onPlaybackPositionChange(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9YGHFFjSgUZc1ZKnmksPZHlrnY(Luk/co/uktv/dave/browser/web/MediaPlayerManager;Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->onPlaybackErrorHandler(Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Luk/co/uktv/dave/browser/web/MediaPlayerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPlayerView"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    .line 39
    new-instance v0, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda4;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerManager;)V

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setOnPlaybackStateChangeHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackStateChangeHandler;)V

    .line 40
    new-instance v0, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda3;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerManager;)V

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setOnPlaybackPositionChangeHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackPositionChangeHandler;)V

    .line 41
    new-instance v0, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda2;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerManager;)V

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->setOnPlaybackErrorHandler(Luk/co/uktv/dave/browser/web/MediaPlayerView$OnPlaybackErrorHandler;)V

    return-void
.end method

.method static synthetic lambda$onGetLicenseUrl$0(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;Ljava/lang/String;)V
    .locals 3

    .line 120
    sget-object v0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Extracted license acquisition URL, laUrl=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;

    invoke-virtual {p0}, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;->getManifestUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method private onPlaybackErrorHandler(Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaPlayerId",
            "error"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/browser/web/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 197
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "onPlaybackPositionChange: Can not update position of not existing media player, mediaPlayerId=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    iget p1, p2, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    .line 227
    sget-object p1, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Generic:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    move-object p1, p2

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object p1

    .line 222
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Generic:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object p1

    .line 205
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Decode:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p1

    .line 209
    instance-of v4, p1, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v4, :cond_4

    .line 210
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Incompat:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    goto :goto_0

    .line 211
    :cond_4
    instance-of v4, p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v4, :cond_5

    .line 213
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Format:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    goto :goto_0

    .line 214
    :cond_5
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Luk/co/uktv/dave/network/ConnectivityMonitor;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_6

    .line 215
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Network:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    goto :goto_0

    .line 217
    :cond_6
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Generic:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    .line 229
    :goto_0
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getError()Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    move-result-object v5

    aput-object v5, v3, v1

    iget p2, p2, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "onPlaybackStateChange: error=%s, type=%d"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    new-instance p1, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;

    .line 231
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getDuration()J

    move-result-wide v7

    .line 233
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    move-result-object v9

    .line 234
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getError()Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;-><init>(Ljava/lang/String;JLuk/co/uktv/dave/browser/web/MediaPlayer$State;Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    .line 230
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method private onPlaybackPositionChange(Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaPlayerId",
            "position"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/browser/web/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 177
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "onPlaybackPositionChange: Can not update position of not existing media player, mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_0
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getPosition()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-nez v5, :cond_1

    return-void

    .line 185
    :cond_1
    sget-object v3, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v2

    const-string p1, "onPlaybackPositionChange: position=%d, mediaPlayerId=%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0, p2, p3}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setPosition(J)V

    .line 187
    new-instance p1, Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;

    .line 188
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getPosition()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;-><init>(Ljava/lang/String;J)V

    .line 187
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method private onPlaybackStateChange(Ljava/lang/String;IZJ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaPlayerId",
            "state",
            "isPlaying",
            "duration"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/browser/web/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 130
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "onPlaybackStateChange: Can not update state of not existing media player, mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p2, v2, :cond_6

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string v3, "onPlaybackStateChange: Player is ended, mediaPlayerId=%s"

    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v3, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->COMPLETED:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    goto :goto_1

    .line 146
    :cond_2
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v1

    aput-object p1, v3, v2

    const-string v6, "onPlaybackStateChange: Player is ready, isPlaying=%s, mediaPlayerId=%s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    .line 147
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->PLAYING:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    goto :goto_0

    :cond_3
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->PAUSED:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 138
    :cond_4
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string v3, "onPlaybackStateChange: Player is buffering, mediaPlayerId=%s"

    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    move-result-object p2

    sget-object p3, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->IDLE:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    invoke-virtual {p2, p3}, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 140
    sget-object v3, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->PREPARING:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    goto :goto_1

    .line 142
    :cond_5
    sget-object v3, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->BUFFERING:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    goto :goto_1

    .line 150
    :cond_6
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string v3, "onPlaybackStateChange: Player is idle, mediaPlayerId=%s"

    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v3, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->IDLE:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    .line 159
    :goto_1
    invoke-virtual {v0, p4, p5}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setDuration(J)V

    .line 161
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    move-result-object p2

    invoke-virtual {v3, p2}, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 162
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    move-result-object p4

    aput-object p4, p3, v1

    aput-object v3, p3, v2

    aput-object p1, p3, v5

    const-string p1, "onPlaybackStateChange: Changing player state from \'%s\' to \'%s\', mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v0, v3}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setState(Luk/co/uktv/dave/browser/web/MediaPlayer$State;)V

    .line 164
    new-instance p1, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;

    .line 165
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getDuration()J

    move-result-wide v6

    .line 167
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    move-result-object v8

    .line 168
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getError()Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;-><init>(Ljava/lang/String;JLuk/co/uktv/dave/browser/web/MediaPlayer$State;Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V

    .line 164
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 239
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    new-instance v1, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/browser/web/MediaPlayerManager;)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    .line 240
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic lambda$destroy$1$uk-co-uktv-dave-browser-web-MediaPlayerManager(Ljava/lang/String;Luk/co/uktv/dave/browser/web/MediaPlayer;)V
    .locals 0

    .line 239
    iget-object p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {p2, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->dismissPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public onControlMediaPlayer(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 83
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/uktv/dave/browser/web/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 87
    sget-object p1, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Can not control not existing media player, mediaPlayerId=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    sget-object v4, Luk/co/uktv/dave/browser/web/MediaPlayerManager$1;->$SwitchMap$uk$co$uktv$dave$messaging$tal$ControlMediaPlayerFromTalMessage$Action:[I

    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->getAction()Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;

    move-result-object v5

    invoke-virtual {v5}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 105
    sget-object v1, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->getAction()Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;

    move-result-object p1

    aput-object p1, v4, v2

    aput-object v0, v4, v3

    const-string p1, "Unsupported action \'%s\', mediaPlayerId=%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->getPosition()J

    move-result-wide v3

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {v0, v2, v3, v4, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->startPlayback(Ljava/lang/String;JLcom/google/android/exoplayer2/MediaItem;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->stopPlayback(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->pausePlayback(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v3, v1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->resumePlayback(Ljava/lang/String;JLcom/google/android/exoplayer2/MediaItem;)V

    :goto_0
    return-void
.end method

.method public onDisposeMediaPlayer(Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/browser/web/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Can not dispose not existing media player, mediaPlayerId=%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->dismissPlayback(Ljava/lang/String;)V

    .line 69
    sget-object v0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "Disposed media player, mediaPlayerId=%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {p1}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->destroy()V

    goto :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "Remaining %s media player(s)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    sget-object v1, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onGetLicenseUrl(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 111
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;->getManifestUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    sget-object p1, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not get license, missing manifest URL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    .line 117
    invoke-virtual {v0}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;->getManifestUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Luk/co/uktv/dave/browser/web/MediaPlayerManager$$ExternalSyntheticLambda1;-><init>(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;)V

    .line 116
    invoke-static {v0, v1, v2}, Luk/co/uktv/dave/browser/web/ContentProtectionUtils;->extractLicenseAcquisitionUrl(Landroid/content/Context;Ljava/lang/String;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public onInitializeMediaPlayer(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    new-instance v7, Luk/co/uktv/dave/browser/web/MediaPlayer;

    .line 47
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->getPosition()J

    move-result-wide v2

    .line 49
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->getContentUrl()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->getLaUrl()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Luk/co/uktv/dave/browser/web/MediaPlayer;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    invoke-virtual {v7}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getPosition()J

    move-result-wide v1

    invoke-virtual {v7}, Luk/co/uktv/dave/browser/web/MediaPlayer;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Luk/co/uktv/dave/browser/web/MediaPlayerView;->startPlayback(Ljava/lang/String;JLcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method
