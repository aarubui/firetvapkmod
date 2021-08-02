.class public final Luk/co/uktv/dave/messaging/to/PauseAppMessage;
.super Luk/co/uktv/dave/messaging/to/ToWebAppMessage;
.source "PauseAppMessage.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "appPaused"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "appPaused"

    .line 13
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/ToWebAppMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/to/PauseAppMessage;
    .locals 1

    const-string v0, "appPaused"

    .line 22
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/to/PauseAppMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    new-instance p0, Luk/co/uktv/dave/messaging/to/PauseAppMessage;

    invoke-direct {p0}, Luk/co/uktv/dave/messaging/to/PauseAppMessage;-><init>()V

    return-object p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 2

    const-string v0, "appPaused"

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v0, v1}, Luk/co/uktv/dave/messaging/to/PauseAppMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
