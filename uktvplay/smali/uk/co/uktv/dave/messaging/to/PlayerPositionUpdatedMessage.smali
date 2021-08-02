.class public final Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;
.super Luk/co/uktv/dave/messaging/to/ToWebAppMessage;
.source "PlayerPositionUpdatedMessage.java"


# static fields
.field private static final PROP_KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field private static final PROP_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String; = "PlayerPositionUpdatedMessage"

.field public static final TYPE:Ljava/lang/String; = "positionUpdated"


# instance fields
.field public final playerId:Ljava/lang/String;

.field public final position:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "positionUpdated"

    .line 28
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/ToWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->playerId:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->position:J

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;
    .locals 13

    const-string v0, "positionUpdated"

    .line 42
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "playerId"

    .line 45
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "fromJson: Missing \'%s\' property, messageJson=%s"

    if-eqz v4, :cond_1

    .line 47
    sget-object v0, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object p0, v3, v5

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "position"

    const-wide/high16 v9, -0x8000000000000000L

    .line 51
    invoke-virtual {v0, v2, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-nez v0, :cond_2

    .line 53
    sget-object v0, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object p0, v3, v5

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 57
    :cond_2
    new-instance p0, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;

    invoke-direct {p0, v3, v11, v12}, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;-><init>(Ljava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    iget-object v1, p0, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->playerId:Ljava/lang/String;

    const-string v2, "playerId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-wide v1, p0, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "positionUpdated"

    .line 65
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/to/PlayerPositionUpdatedMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
