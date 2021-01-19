.class public Luk/co/uktv/dave/core/AppHostWebViewInterface;
.super Ljava/lang/Object;
.source "AppHostWebViewInterface.java"


# static fields
.field private static final EXTRA_MESSAGE_DATA:Ljava/lang/String; = "WebViewInterface.EXTRA_MESSAGE_DATA"

.field public static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_MESSAGE_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "AppHostWebViewInterface"

.field public static final VALUE_MESSAGE_NONE:Ljava/lang/String; = "none"


# instance fields
.field private appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

.field private handler:Landroid/os/Handler;

.field private messageHandlerFactory:Luk/co/uktv/dave/core/MessageHandlerFactory;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Luk/co/uktv/dave/core/AppHostActivity;Landroid/webkit/WebView;Luk/co/uktv/dave/core/MessageHandlerFactory;)V
    .locals 2
    .param p1, "appHostActivity"    # Luk/co/uktv/dave/core/AppHostActivity;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "messageHandlerFactory"    # Luk/co/uktv/dave/core/MessageHandlerFactory;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Luk/co/uktv/dave/core/AppHostWebViewInterface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Luk/co/uktv/dave/core/AppHostWebViewInterface$1;-><init>(Luk/co/uktv/dave/core/AppHostWebViewInterface;Landroid/os/Looper;)V

    iput-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->handler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

    .line 46
    iput-object p2, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->webView:Landroid/webkit/WebView;

    .line 47
    iput-object p3, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->messageHandlerFactory:Luk/co/uktv/dave/core/MessageHandlerFactory;

    .line 48
    return-void
.end method

.method static synthetic access$000(Luk/co/uktv/dave/core/AppHostWebViewInterface;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Luk/co/uktv/dave/core/AppHostWebViewInterface;

    .prologue
    .line 17
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private parseIncomingMessage(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public exitApp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

    invoke-virtual {v0}, Luk/co/uktv/dave/core/AppHostActivity;->exit()V

    .line 61
    return-void
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Luk/co/uktv/dave/core/AppHostWebViewInterface;->parseIncomingMessage(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    .local v0, "message":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 67
    const-string v3, "type"

    const-string v4, "none"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "type":Ljava/lang/String;
    const-string v3, "AppHostWebViewInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lookup handler for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v3, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->messageHandlerFactory:Luk/co/uktv/dave/core/MessageHandlerFactory;

    invoke-interface {v3, v2}, Luk/co/uktv/dave/core/MessageHandlerFactory;->getHandler(Ljava/lang/String;)Luk/co/uktv/dave/core/MessageHandler;

    move-result-object v1

    .line 70
    .local v1, "messageHandler":Luk/co/uktv/dave/core/MessageHandler;
    const-string v3, "AppHostWebViewInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handler for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz v1, :cond_0

    .line 72
    iget-object v3, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->appHostActivity:Luk/co/uktv/dave/core/AppHostActivity;

    const-string v4, "value"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Luk/co/uktv/dave/core/MessageHandler;->handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z

    .line 77
    .end local v1    # "messageHandler":Luk/co/uktv/dave/core/MessageHandler;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v3, "AppHostWebViewInterface"

    const-string v4, "Message parsed to null object"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMessage(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "WebViewInterface.EXTRA_MESSAGE_DATA"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface;->handler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 54
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 56
    return-void
.end method
