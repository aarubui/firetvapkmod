.class public final Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;
.super Luk/co/uktv/dave/messaging/from/FromWebAppMessage;
.source "ControlMediaPlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;
    }
.end annotation


# static fields
.field private static final PROP_KEY_ACTION:Ljava/lang/String; = "action"

.field private static final PROP_KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field private static final PROP_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String; = "ControlMediaPlayerMessage"

.field public static final TYPE:Ljava/lang/String; = "controlMediaPlayer"


# instance fields
.field public final action:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

.field public final playerId:Ljava/lang/String;

.field public final position:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;J)V
    .locals 1

    const-string v0, "controlMediaPlayer"

    .line 38
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/from/FromWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->playerId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->action:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    .line 41
    iput-wide p3, p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->position:J

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;
    .locals 10

    const-string v0, "controlMediaPlayer"

    .line 54
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "playerId"

    .line 57
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "fromJson: Missing \'%s\' property, messageJson=%s"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v5, :cond_1

    .line 59
    sget-object v0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "action"

    .line 63
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    sget-object v0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 68
    :cond_2
    invoke-static {}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->values()[Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    move-result-object v4

    invoke-static {v4}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v4

    new-instance v6, Luk/co/uktv/dave/messaging/from/-$$Lambda$ControlMediaPlayerMessage$3SuXVza4icN7RcC_JhdkbOfvEc8;

    invoke-direct {v6, v5}, Luk/co/uktv/dave/messaging/from/-$$Lambda$ControlMediaPlayerMessage$3SuXVza4icN7RcC_JhdkbOfvEc8;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {v4, v6}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v4

    .line 70
    invoke-interface {v4}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    if-nez v4, :cond_3

    .line 72
    sget-object v0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object p0, v3, v7

    const-string p0, "fromJson: Unrecognized \'%s\' property, messageJson=%s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const-string p0, "position"

    .line 76
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 78
    new-instance p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;

    invoke-direct {p0, v3, v4, v0, v1}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;-><init>(Ljava/lang/String;Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;J)V

    return-object p0
.end method

.method static synthetic lambda$fromJson$0(Ljava/lang/String;Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;)Z
    .locals 0

    .line 69
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    iget-object v1, p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->playerId:Ljava/lang/String;

    const-string v2, "playerId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->action:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    invoke-virtual {v1}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-wide v1, p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "controlMediaPlayer"

    .line 87
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
