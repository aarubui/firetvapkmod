.class public Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;
.super Luk/co/uktv/dave/core/MessageHandler;
.source "InitializeMediaPlayerMessageHandler.java"


# static fields
.field protected static final KEY_CONTENT_URL:Ljava/lang/String; = "contentUrl"

.field protected static final KEY_LA_URL:Ljava/lang/String; = "laUrl"

.field protected static final KEY_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field protected static final KEY_POSITION:Ljava/lang/String; = "position"

.field public static final TAG:Ljava/lang/String; = "InitializeMediaPlayerMessageHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Luk/co/uktv/dave/core/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
    .locals 10
    .param p1, "appHost"    # Luk/co/uktv/dave/core/AppHostActivity;
    .param p2, "params"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string v0, "playerId"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "playerId":Ljava/lang/String;
    const-string v0, "mimeType"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "mimeType":Ljava/lang/String;
    const-string v0, "contentUrl"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "contentUrl":Ljava/lang/String;
    const-string v0, "laUrl"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "laUrl":Ljava/lang/String;
    const-string v0, "position"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 45
    .local v8, "position":J
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 46
    :cond_0
    const-string v0, "InitializeMediaPlayerMessageHandler"

    const-string v1, "playerId, mimeType or contentUrl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "InitializeMediaPlayerMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "InitializeMediaPlayerMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "InitializeMediaPlayerMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 52
    :cond_1
    new-instance v1, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;-><init>(Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;Luk/co/uktv/dave/core/AppHostActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1, v1}, Luk/co/uktv/dave/core/AppHostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method
