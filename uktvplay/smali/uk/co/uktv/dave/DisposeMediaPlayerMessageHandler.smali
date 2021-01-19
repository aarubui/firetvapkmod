.class public Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;
.super Luk/co/uktv/dave/core/MessageHandler;
.source "DisposeMediaPlayerMessageHandler.java"


# static fields
.field protected static final KEY_PLAYER_ID:Ljava/lang/String; = "playerId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Luk/co/uktv/dave/core/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
    .locals 3
    .param p1, "appHost"    # Luk/co/uktv/dave/core/AppHostActivity;
    .param p2, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    const-string v1, "playerId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "playerId":Ljava/lang/String;
    new-instance v1, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;

    invoke-direct {v1, p0, p1, v0}, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;-><init>(Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;Luk/co/uktv/dave/core/AppHostActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Luk/co/uktv/dave/core/AppHostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    const/4 v1, 0x1

    return v1
.end method
