.class public Luk/co/uktv/dave/ControlMediaPlayerMessageHandler;
.super Luk/co/uktv/dave/core/MessageHandler;
.source "ControlMediaPlayerMessageHandler.java"


# static fields
.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field private static final KEY_POSITION:Ljava/lang/String; = "position"

.field public static final TAG:Ljava/lang/String; = "ControlMediaPlayerMessageHandler"

.field private static final VALUE_PAUSE:Ljava/lang/String; = "pause"

.field private static final VALUE_RESUME:Ljava/lang/String; = "resume"

.field private static final VALUE_SEEK:Ljava/lang/String; = "seek"

.field private static final VALUE_STOP:Ljava/lang/String; = "stop"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Luk/co/uktv/dave/core/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
    .locals 8
    .param p1, "appHost"    # Luk/co/uktv/dave/core/AppHostActivity;
    .param p2, "params"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 29
    const-string v5, "playerId"

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "playerId":Ljava/lang/String;
    check-cast p1, Luk/co/uktv/dave/UKTVPlay;

    .end local p1    # "appHost":Luk/co/uktv/dave/core/AppHostActivity;
    invoke-virtual {p1, v2}, Luk/co/uktv/dave/UKTVPlay;->getMediaPlayer(Ljava/lang/String;)Luk/co/uktv/dave/media/MediaPlayer;

    move-result-object v1

    .line 31
    .local v1, "mediaPlayer":Luk/co/uktv/dave/media/MediaPlayer;
    if-nez v1, :cond_0

    .line 32
    const-string v4, "ControlMediaPlayerMessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No media player found for ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return v3

    .line 35
    :cond_0
    const-string v5, "action"

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayer;->resume()V

    move v3, v4

    .line 39
    goto :goto_0

    .line 36
    :sswitch_0
    const-string v6, "resume"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_1

    :sswitch_1
    const-string v6, "pause"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_1

    :sswitch_2
    const-string v6, "stop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "seek"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    .line 41
    :pswitch_1
    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayer;->pause()V

    move v3, v4

    .line 42
    goto :goto_0

    .line 44
    :pswitch_2
    invoke-virtual {v1}, Luk/co/uktv/dave/media/MediaPlayer;->stop()V

    move v3, v4

    .line 45
    goto :goto_0

    .line 47
    :pswitch_3
    const-string v3, "position"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Luk/co/uktv/dave/media/MediaPlayer;->playFrom(J)V

    move v3, v4

    .line 48
    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        -0x37b237d3 -> :sswitch_0
        0x35ce78 -> :sswitch_3
        0x360802 -> :sswitch_2
        0x65825f6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
