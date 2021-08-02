.class public final Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;
.super Luk/co/uktv/dave/messaging/to/ToWebAppMessage;
.source "PlayerStateChangedMessage.java"


# static fields
.field private static final PROP_KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final PROP_KEY_ERROR:Ljava/lang/String; = "error"

.field private static final PROP_KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field private static final PROP_KEY_STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "PlayerStateChangedMessage"

.field public static final TYPE:Ljava/lang/String; = "stateChanged"


# instance fields
.field public final duration:J

.field public final error:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

.field public final playerId:Ljava/lang/String;

.field public final state:Luk/co/uktv/dave/media/MediaPlayerInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLuk/co/uktv/dave/media/MediaPlayerInfo$State;Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V
    .locals 1

    const-string v0, "stateChanged"

    .line 35
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/ToWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->playerId:Ljava/lang/String;

    .line 37
    iput-wide p2, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->duration:J

    .line 38
    iput-object p4, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->state:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 39
    iput-object p5, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->error:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;
    .locals 14

    const-string v0, "stateChanged"

    .line 53
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "playerId"

    .line 56
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "fromJson: Missing \'%s\' property, messageJson=%s"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v5, :cond_1

    .line 58
    sget-object v0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "duration"

    const-wide/high16 v10, -0x8000000000000000L

    .line 62
    invoke-virtual {v0, v2, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-nez v5, :cond_2

    .line 64
    sget-object v0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v2, "state"

    .line 68
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 70
    sget-object v0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 73
    :cond_3
    invoke-static {}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->values()[Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    move-result-object v6

    invoke-static {v6}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v10, Luk/co/uktv/dave/messaging/to/-$$Lambda$PlayerStateChangedMessage$XyY0IcFkzZq4rnYJtsKzthcSY6o;

    invoke-direct {v10, v5}, Luk/co/uktv/dave/messaging/to/-$$Lambda$PlayerStateChangedMessage$XyY0IcFkzZq4rnYJtsKzthcSY6o;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-interface {v6, v10}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v5

    .line 75
    invoke-interface {v5}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v5, "fromJson: Unrecognized \'%s\' property, messageJson=%s"

    if-nez v10, :cond_4

    .line 77
    sget-object v0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    const-string v2, "error"

    .line 81
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 84
    invoke-static {}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->values()[Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    move-result-object v3

    invoke-static {v3}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v6, Luk/co/uktv/dave/messaging/to/-$$Lambda$PlayerStateChangedMessage$qriWK1e0dYKlQ8_1Z1bkU73jnf4;

    invoke-direct {v6, v0}, Luk/co/uktv/dave/messaging/to/-$$Lambda$PlayerStateChangedMessage$qriWK1e0dYKlQ8_1Z1bkU73jnf4;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-interface {v3, v6}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    if-nez v0, :cond_5

    .line 88
    sget-object v0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    move-object v8, v0

    goto :goto_0

    :cond_6
    move-object v8, v1

    .line 93
    :goto_0
    new-instance p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;

    move-object v3, p0

    move-wide v5, v12

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;-><init>(Ljava/lang/String;JLuk/co/uktv/dave/media/MediaPlayerInfo$State;Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V

    return-object p0
.end method

.method static synthetic lambda$fromJson$0(Ljava/lang/String;Luk/co/uktv/dave/media/MediaPlayerInfo$State;)Z
    .locals 0

    .line 74
    invoke-virtual {p1}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$fromJson$1(Ljava/lang/String;Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)Z
    .locals 0

    .line 85
    invoke-virtual {p1}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    iget-object v1, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->playerId:Ljava/lang/String;

    const-string v2, "playerId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-wide v1, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->state:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->error:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "stateChanged"

    .line 103
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
