.class public final Luk/co/uktv/dave/messaging/to/NavigationMessage;
.super Luk/co/uktv/dave/messaging/to/ToWebAppMessage;
.source "NavigationMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;
    }
.end annotation


# static fields
.field private static final PROP_KEY_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "NavigationMessage"

.field public static final TYPE:Ljava/lang/String; = "navigation"


# instance fields
.field public final value:Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;)V
    .locals 1

    const-string v0, "navigation"

    .line 31
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/ToWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Luk/co/uktv/dave/messaging/to/NavigationMessage;->value:Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/to/NavigationMessage;
    .locals 8

    const-string v0, "navigation"

    .line 43
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/to/NavigationMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "value"

    .line 46
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    .line 48
    sget-object v0, Luk/co/uktv/dave/messaging/to/NavigationMessage;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object p0, v3, v4

    const-string p0, "fromJson: Missing \'%s\' property, messageJson=%s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 51
    :cond_1
    invoke-static {}, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->values()[Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    move-result-object v3

    invoke-static {v3}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v7, Luk/co/uktv/dave/messaging/to/-$$Lambda$NavigationMessage$B68ExknFM8ArGWDQbOomd3QYTso;

    invoke-direct {v7, v0}, Luk/co/uktv/dave/messaging/to/-$$Lambda$NavigationMessage$B68ExknFM8ArGWDQbOomd3QYTso;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-interface {v3, v7}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    if-nez v0, :cond_2

    .line 55
    sget-object v0, Luk/co/uktv/dave/messaging/to/NavigationMessage;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object p0, v3, v4

    const-string p0, "fromJson: Unrecognized \'%s\' property, messageJson=%s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 59
    :cond_2
    new-instance p0, Luk/co/uktv/dave/messaging/to/NavigationMessage;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/NavigationMessage;-><init>(Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;)V

    return-object p0
.end method

.method static synthetic lambda$fromJson$0(Ljava/lang/String;Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;)Z
    .locals 0

    .line 52
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    iget-object v1, p0, Luk/co/uktv/dave/messaging/to/NavigationMessage;->value:Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    invoke-virtual {v1}, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "navigation"

    .line 66
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/to/NavigationMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
