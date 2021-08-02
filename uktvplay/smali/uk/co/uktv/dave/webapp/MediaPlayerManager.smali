.class public Luk/co/uktv/dave/webapp/MediaPlayerManager;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerManager"


# instance fields
.field private final mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

.field private final mediaPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/co/uktv/dave/media/MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Luk/co/uktv/dave/media/MediaPlayerView;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    .line 42
    new-instance v0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$YOIhvPer1VzJq6GT-4gUdIZnFu0;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$YOIhvPer1VzJq6GT-4gUdIZnFu0;-><init>(Luk/co/uktv/dave/webapp/MediaPlayerManager;)V

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->setOnPlaybackStateChangeHandler(Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackStateChangeHandler;)V

    .line 43
    new-instance v0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$ovqNbHtMEbmPW-IlbuoAvUcKYn4;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$ovqNbHtMEbmPW-IlbuoAvUcKYn4;-><init>(Luk/co/uktv/dave/webapp/MediaPlayerManager;)V

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->setOnPlaybackPositionChangeHandler(Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackPositionChangeHandler;)V

    .line 44
    new-instance v0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$iz2JnCN8mYpPP6rGJAtbLB2BL5Q;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$iz2JnCN8mYpPP6rGJAtbLB2BL5Q;-><init>(Luk/co/uktv/dave/webapp/MediaPlayerManager;)V

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->setOnPlaybackErrorHandler(Luk/co/uktv/dave/media/MediaPlayerView$OnPlaybackErrorHandler;)V

    return-void
.end method

.method public static synthetic lambda$YOIhvPer1VzJq6GT-4gUdIZnFu0(Luk/co/uktv/dave/webapp/MediaPlayerManager;Ljava/lang/String;IZJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Luk/co/uktv/dave/webapp/MediaPlayerManager;->onPlaybackStateChange(Ljava/lang/String;IZJ)V

    return-void
.end method

.method public static synthetic lambda$iz2JnCN8mYpPP6rGJAtbLB2BL5Q(Luk/co/uktv/dave/webapp/MediaPlayerManager;Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Luk/co/uktv/dave/webapp/MediaPlayerManager;->onPlaybackErrorHandler(Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onGetLicenseUrl$0(Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;Ljava/lang/String;)V
    .locals 3

    .line 121
    sget-object v0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Extracted license acquisition URL, laUrl=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;

    iget-object p0, p0, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->manifestUrl:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method public static synthetic lambda$ovqNbHtMEbmPW-IlbuoAvUcKYn4(Luk/co/uktv/dave/webapp/MediaPlayerManager;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Luk/co/uktv/dave/webapp/MediaPlayerManager;->onPlaybackPositionChange(Ljava/lang/String;J)V

    return-void
.end method

.method private onPlaybackErrorHandler(Ljava/lang/String;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 11

    .line 193
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayerInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 196
    sget-object p2, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "onPlaybackPositionChange: Can not update position of not existing media player, mediaPlayerId=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_0
    iget p1, p2, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v3, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    .line 230
    sget-object p1, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Generic:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    move-object p1, p2

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getOutOfMemoryError()Ljava/lang/OutOfMemoryError;

    move-result-object p1

    .line 221
    sget-object v4, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Generic:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object p1

    .line 225
    sget-object v4, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Generic:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object p1

    .line 204
    sget-object v4, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Decode:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p1

    .line 208
    instance-of v4, p1, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v4, :cond_5

    .line 209
    sget-object v4, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Incompat:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    goto :goto_0

    .line 210
    :cond_5
    instance-of v4, p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v4, :cond_6

    .line 212
    sget-object v4, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Format:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    goto :goto_0

    .line 213
    :cond_6
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 214
    sget-object v4, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Network:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    goto :goto_0

    .line 216
    :cond_7
    sget-object v4, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Generic:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    .line 232
    :goto_0
    sget-object v4, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getError()Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

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

    .line 233
    new-instance p1, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;

    .line 234
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getDuration()J

    move-result-wide v7

    .line 236
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getState()Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    move-result-object v9

    .line 237
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getError()Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;-><init>(Ljava/lang/String;JLuk/co/uktv/dave/media/MediaPlayerInfo$State;Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    .line 233
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method private onPlaybackPositionChange(Ljava/lang/String;J)V
    .locals 6

    .line 173
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayerInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 176
    sget-object p2, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "onPlaybackPositionChange: Can not update position of not existing media player, mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_0
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getPosition()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-nez v5, :cond_1

    return-void

    .line 184
    :cond_1
    sget-object v3, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

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

    .line 185
    invoke-virtual {v0, p2, p3}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setPosition(J)V

    .line 186
    new-instance p1, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;

    .line 187
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 188
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getPosition()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;-><init>(Ljava/lang/String;J)V

    .line 186
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method private onPlaybackStateChange(Ljava/lang/String;IZJ)V
    .locals 10

    .line 127
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayerInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 130
    sget-object p2, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "onPlaybackStateChange: Can not update state of not existing media player, mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getState()Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    move-result-object v3

    if-eq p2, v2, :cond_6

    const/4 v4, 0x2

    if-eq p2, v4, :cond_4

    const/4 v5, 0x3

    if-eq p2, v5, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    sget-object p2, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "onPlaybackStateChange: Player is ended, mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v3, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->COMPLETED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    goto :goto_1

    .line 146
    :cond_2
    sget-object p2, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    const-string p1, "onPlaybackStateChange: Player is ready, playWhenReady=%s, mediaPlayerId=%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    .line 147
    sget-object p1, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->PLAYING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    goto :goto_0

    :cond_3
    sget-object p1, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->PAUSED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    :goto_0
    move-object v3, p1

    goto :goto_1

    .line 138
    :cond_4
    sget-object p2, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "onPlaybackStateChange: Player is buffering, mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getState()Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    move-result-object p1

    sget-object p2, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->IDLE:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    invoke-virtual {p1, p2}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 140
    sget-object v3, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->PREPARING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    goto :goto_1

    .line 142
    :cond_5
    sget-object v3, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->BUFFERING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    goto :goto_1

    .line 150
    :cond_6
    sget-object p2, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "onPlaybackStateChange: Player is idle, mediaPlayerId=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v3, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->IDLE:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 159
    :goto_1
    invoke-virtual {v0, p4, p5}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setDuration(J)V

    .line 161
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getState()Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    move-result-object p1

    invoke-virtual {v3, p1}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 162
    invoke-virtual {v0, v3}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setState(Luk/co/uktv/dave/media/MediaPlayerInfo$State;)V

    .line 163
    new-instance p1, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;

    .line 164
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getDuration()J

    move-result-wide v6

    .line 166
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getState()Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    move-result-object v8

    .line 167
    invoke-virtual {v0}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getError()Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;-><init>(Ljava/lang/String;JLuk/co/uktv/dave/media/MediaPlayerInfo$State;Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    .line 163
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 242
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    new-instance v1, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$S1YBlvjuwveNVkpZ4kc4bF760aw;

    invoke-direct {v1, p0}, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$S1YBlvjuwveNVkpZ4kc4bF760aw;-><init>(Luk/co/uktv/dave/webapp/MediaPlayerManager;)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    .line 243
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic lambda$destroy$1$MediaPlayerManager(Ljava/lang/String;Luk/co/uktv/dave/media/MediaPlayerInfo;)V
    .locals 0

    .line 242
    iget-object p2, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {p2, p1}, Luk/co/uktv/dave/media/MediaPlayerView;->dismissPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public onControlMediaPlayer(Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 86
    iget-object v0, p1, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->playerId:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/uktv/dave/media/MediaPlayerInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 90
    sget-object p1, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Can not control not existing media player, mediaPlayerId=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_0
    sget-object v4, Luk/co/uktv/dave/webapp/MediaPlayerManager$1;->$SwitchMap$uk$co$uktv$dave$messaging$from$ControlMediaPlayerMessage$Action:[I

    iget-object v5, p1, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->action:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    invoke-virtual {v5}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 109
    sget-object v1, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object p1, p1, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->action:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    aput-object p1, v4, v2

    aput-object v0, v4, v3

    const-string p1, "Unsupported action \'%s\', mediaPlayerId=%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    iget-wide v2, p1, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->position:J

    invoke-virtual {v1, v2, v3}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setPosition(J)V

    .line 106
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getSourceBuilder()Lj$/util/function/Function;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v3, v1}, Luk/co/uktv/dave/media/MediaPlayerView;->startPlayback(Ljava/lang/String;JLj$/util/function/Function;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->stopPlayback(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/media/MediaPlayerView;->pausePlayback(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_4
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getSourceBuilder()Lj$/util/function/Function;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v3, v1}, Luk/co/uktv/dave/media/MediaPlayerView;->resumePlayback(Ljava/lang/String;JLj$/util/function/Function;)V

    :goto_0
    return-void
.end method

.method public onDisposeMediaPlayer(Luk/co/uktv/dave/messaging/from/DisposeMediaPlayerMessage;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    iget-object p1, p1, Luk/co/uktv/dave/messaging/from/DisposeMediaPlayerMessage;->playerId:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayerInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Can not dispose not existing media player, mediaPlayerId=%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/media/MediaPlayerView;->dismissPlayback(Ljava/lang/String;)V

    .line 72
    sget-object v0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "Disposed media player, mediaPlayerId=%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {p1}, Luk/co/uktv/dave/media/MediaPlayerView;->destroy()V

    goto :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 77
    iget-object v2, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "Remaining %s media player(s)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

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

    .line 79
    sget-object v1, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

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

.method public onGetLicenseUrl(Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 115
    iget-object v0, p1, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->manifestUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    sget-object p1, Luk/co/uktv/dave/webapp/MediaPlayerManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not get license, missing manifest URL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    iget-object v0, p1, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->manifestUrl:Ljava/lang/String;

    new-instance v1, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$XCxAK_mqb5zwMGQrykQebeb1cTE;

    invoke-direct {v1, p1}, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$XCxAK_mqb5zwMGQrykQebeb1cTE;-><init>(Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;)V

    invoke-static {v0, v1}, Luk/co/uktv/dave/media/ContentProtectionUtils;->extractLicenseAcquisitionUrl(Ljava/lang/String;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public onInitializeMediaPlayer(Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 49
    new-instance v7, Luk/co/uktv/dave/media/MediaPlayerInfo;

    iget-object v1, p1, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->playerId:Ljava/lang/String;

    iget-wide v2, p1, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->position:J

    iget-object v4, p1, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->mimeType:Ljava/lang/String;

    iget-object v5, p1, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->contentUrl:Ljava/lang/String;

    iget-object v6, p1, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->laUrl:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Luk/co/uktv/dave/media/MediaPlayerInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayers:Ljava/util/Map;

    iget-object p1, p1, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->playerId:Ljava/lang/String;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Luk/co/uktv/dave/webapp/MediaPlayerManager;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    invoke-virtual {v7}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getPosition()J

    move-result-wide v1

    invoke-virtual {v7}, Luk/co/uktv/dave/media/MediaPlayerInfo;->getSourceBuilder()Lj$/util/function/Function;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Luk/co/uktv/dave/media/MediaPlayerView;->startPlayback(Ljava/lang/String;JLj$/util/function/Function;)V

    return-void
.end method
