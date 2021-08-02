.class public abstract Luk/co/uktv/dave/messaging/from/FromWebAppMessage;
.super Luk/co/uktv/dave/messaging/WebAppMessage;
.source "FromWebAppMessage.java"


# static fields
.field protected static final PROP_KEY_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "FromWebAppMessage"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Luk/co/uktv/dave/messaging/WebAppMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected static fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 34
    invoke-static {p0, p1}, Luk/co/uktv/dave/messaging/WebAppMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "value"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    .line 39
    sget-object p0, Luk/co/uktv/dave/messaging/from/FromWebAppMessage;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "fromJson: Missing \'%s\' property, messageJson=%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "value"

    .line 51
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-super {p0, p1, v0}, Luk/co/uktv/dave/messaging/WebAppMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
