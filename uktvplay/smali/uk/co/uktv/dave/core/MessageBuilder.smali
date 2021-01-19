.class public Luk/co/uktv/dave/core/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Luk/co/uktv/dave/core/MessageBuilder;->mData:Lorg/json/JSONObject;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Luk/co/uktv/dave/core/MessageBuilder;->mData:Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/core/MessageBuilder;->setType(Ljava/lang/String;)Luk/co/uktv/dave/core/MessageBuilder;

    .line 24
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Luk/co/uktv/dave/core/MessageBuilder;->mData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    return-object p0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public send(Luk/co/uktv/dave/core/AppHostActivity;)V
    .locals 1
    .param p1, "appHost"    # Luk/co/uktv/dave/core/AppHostActivity;

    .prologue
    .line 53
    iget-object v0, p0, Luk/co/uktv/dave/core/MessageBuilder;->mData:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Luk/co/uktv/dave/core/AppHostActivity;->sendMessage(Lorg/json/JSONObject;)V

    .line 54
    return-void
.end method

.method public setType(Ljava/lang/String;)Luk/co/uktv/dave/core/MessageBuilder;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    .line 30
    return-object p0
.end method
