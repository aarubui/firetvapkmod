.class public final Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;
.super Luk/co/uktv/dave/messaging/from/FromWebAppMessage;
.source "InitializeMediaPlayerMessage.java"


# static fields
.field private static final PROP_KEY_CONTENT_URL:Ljava/lang/String; = "contentUrl"

.field private static final PROP_KEY_LA_URL:Ljava/lang/String; = "laUrl"

.field private static final PROP_KEY_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field private static final PROP_KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field private static final PROP_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String; = "InitializeMediaPlayerMessage"

.field public static final TYPE:Ljava/lang/String; = "inititializeMediaPlayer"


# instance fields
.field public final contentUrl:Ljava/lang/String;

.field public final laUrl:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final playerId:Ljava/lang/String;

.field public final position:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "inititializeMediaPlayer"

    .line 34
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/from/FromWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->playerId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->mimeType:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->contentUrl:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->laUrl:Ljava/lang/String;

    .line 39
    const-string v0, "http://cdn.http.anno.channel4.com/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :goto_0

    const-wide/32 p5, 0x1d4c0

    :goto_0
    iput-wide p5, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->position:J

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;
    .locals 11

    const-string v0, "inititializeMediaPlayer"

    .line 54
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "playerId"

    .line 57
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "fromJson: Missing \'%s\' property, messageJson=%s"

    if-eqz v5, :cond_1

    .line 59
    sget-object v0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->TAG:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object p0, v3, v6

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "mimeType"

    .line 63
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 65
    sget-object v0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->TAG:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object p0, v3, v6

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v2, "contentUrl"

    .line 69
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 70
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    sget-object v0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->TAG:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object p0, v3, v6

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const-string p0, "laUrl"

    .line 75
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "position"

    .line 77
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 79
    new-instance p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;

    move-object v3, p0

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    iget-object v1, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->playerId:Ljava/lang/String;

    const-string v2, "playerId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->mimeType:Ljava/lang/String;

    const-string v2, "mimeType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->contentUrl:Ljava/lang/String;

    const-string v2, "contentUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->laUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "laUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    iget-wide v1, p0, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inititializeMediaPlayer"

    .line 90
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/from/InitializeMediaPlayerMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
