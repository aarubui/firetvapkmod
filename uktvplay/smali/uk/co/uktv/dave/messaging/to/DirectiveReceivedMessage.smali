.class public final Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;
.super Luk/co/uktv/dave/messaging/to/ToWebAppMessage;
.source "DirectiveReceivedMessage.java"


# static fields
.field private static final PROP_KEY_DIRECTIVE:Ljava/lang/String; = "directive"

.field private static final TAG:Ljava/lang/String; = "DirectiveReceivedMessage"

.field public static final TYPE:Ljava/lang/String; = "directiveReceived"


# instance fields
.field public final directive:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "directiveReceived"

    .line 27
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/ToWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;->directive:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;
    .locals 5

    const-string v0, "directiveReceived"

    .line 39
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "directive"

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    sget-object v0, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p0, v3, v2

    const-string p0, "fromJson: Missing \'%s\' property, messageJson=%s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 48
    :cond_1
    new-instance p0, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    const-string v1, "directive"

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;->directive:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    sget-object v2, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse directive"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v1, "directiveReceived"

    .line 59
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
