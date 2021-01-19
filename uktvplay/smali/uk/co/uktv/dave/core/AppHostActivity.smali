.class public abstract Luk/co/uktv/dave/core/AppHostActivity;
.super Landroid/app/Activity;
.source "AppHostActivity.java"


# static fields
.field private static final DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field public static final DEFAULT_TIMEOUT_DURATION_MILLIS:I = 0x2710

.field public static final ERROR_CODE_LOAD_FAILED:I = 0x3

.field public static final ERROR_CODE_NETWORK_UNAVAILABLE:I = 0x2

.field public static final ERROR_CODE_NONE:I = 0x0

.field public static final ERROR_CODE_TIMEOUT:I = 0x4

.field public static final ERROR_CODE_UNKNOWN:I = 0x1

.field public static final EXTRA_APP_URL:Ljava/lang/String; = "EXTRA_APP_URL"

.field private static final TAG:Ljava/lang/String; = "AppHostActivity"


# instance fields
.field private appUrl:Ljava/lang/String;

.field private errorCode:I

.field private isAppLoaded:Z

.field private messageHandlerFactory:Luk/co/uktv/dave/core/MessageHandlerFactory;

.field private resourceProvider:Luk/co/uktv/dave/core/ResourceProvider;

.field private splashView:Landroid/view/View;

.field private timeoutDuration:J

.field private viewContainer:Landroid/view/ViewGroup;

.field private webView:Landroid/webkit/WebView;

.field private webViewInterface:Luk/co/uktv/dave/core/AppHostWebViewInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Luk/co/uktv/dave/core/AppHostActivity;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hideWebView()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 246
    return-void
.end method

.method private initWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 209
    invoke-virtual {p0}, Luk/co/uktv/dave/core/AppHostActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 210
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 213
    :cond_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    .line 214
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 215
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 217
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 218
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 219
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 220
    new-instance v1, Luk/co/uktv/dave/core/AppHostWebViewInterface;

    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Luk/co/uktv/dave/core/AppHostActivity;->messageHandlerFactory:Luk/co/uktv/dave/core/MessageHandlerFactory;

    invoke-direct {v1, p0, v2, v3}, Luk/co/uktv/dave/core/AppHostWebViewInterface;-><init>(Luk/co/uktv/dave/core/AppHostActivity;Landroid/webkit/WebView;Luk/co/uktv/dave/core/MessageHandlerFactory;)V

    iput-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webViewInterface:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    .line 221
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->webViewInterface:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    const-string v3, "AJBHost"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Luk/co/uktv/dave/core/AppHostWebViewClient;

    iget-object v3, p0, Luk/co/uktv/dave/core/AppHostActivity;->appUrl:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Luk/co/uktv/dave/core/AppHostWebViewClient;-><init>(Luk/co/uktv/dave/core/AppHostActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 223
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    sget-object v3, Luk/co/uktv/dave/core/AppHostActivity;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->appUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private isErrorState()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->errorCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 3

    .prologue
    .line 250
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Luk/co/uktv/dave/core/AppHostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 252
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 254
    const/4 v2, 0x0

    .line 256
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method private removeSplash()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->splashView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->splashView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->splashView:Landroid/view/View;

    .line 238
    :cond_0
    return-void
.end method

.method private showSplash()V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Luk/co/uktv/dave/core/AppHostActivity;->getSplashView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->splashView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->splashView:Landroid/view/View;

    sget-object v2, Luk/co/uktv/dave/core/AppHostActivity;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-void
.end method

.method private showWebView()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 242
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Luk/co/uktv/dave/core/AppHostActivity;->finish()V

    .line 110
    return-void
.end method

.method protected getErrorMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :pswitch_0
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->resourceProvider:Luk/co/uktv/dave/core/ResourceProvider;

    const-string v1, "dialog_body_generic_error"

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/core/ResourceProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 166
    :pswitch_1
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->resourceProvider:Luk/co/uktv/dave/core/ResourceProvider;

    const-string v1, "dialog_body_timeout"

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/core/ResourceProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->resourceProvider:Luk/co/uktv/dave/core/ResourceProvider;

    const-string v1, "dialog_body_network_unavailable"

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/core/ResourceProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract getSplashView()Landroid/view/View;
.end method

.method protected initRootViewContainer()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    .line 204
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/core/AppHostActivity;->setContentView(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method protected launch()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;->removeSplash()V

    .line 142
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;->isErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Luk/co/uktv/dave/core/AppHostActivity;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/core/AppHostActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;->showWebView()V

    goto :goto_0
.end method

.method protected loadApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 113
    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0}, Luk/co/uktv/dave/core/AppHostActivity;->loadApp(Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method protected loadApp(Ljava/lang/String;I)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "timeoutDuration"    # I

    .prologue
    .line 117
    new-instance v0, Luk/co/uktv/dave/core/AppHostActivity$1;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/core/AppHostActivity$1;-><init>(Luk/co/uktv/dave/core/AppHostActivity;)V

    invoke-virtual {p0, p1, p2, v0}, Luk/co/uktv/dave/core/AppHostActivity;->loadApp(Ljava/lang/String;ILuk/co/uktv/dave/core/MessageHandlerFactory;)V

    .line 122
    return-void
.end method

.method protected loadApp(Ljava/lang/String;ILuk/co/uktv/dave/core/MessageHandlerFactory;)V
    .locals 3
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "timeoutDuration"    # I
    .param p3, "messageHandlerFactory"    # Luk/co/uktv/dave/core/MessageHandlerFactory;

    .prologue
    .line 129
    const-string v0, "AppHostActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;->isErrorState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iput-object p1, p0, Luk/co/uktv/dave/core/AppHostActivity;->appUrl:Ljava/lang/String;

    .line 132
    int-to-long v0, p2

    iput-wide v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->timeoutDuration:J

    .line 133
    iput-object p3, p0, Luk/co/uktv/dave/core/AppHostActivity;->messageHandlerFactory:Luk/co/uktv/dave/core/MessageHandlerFactory;

    .line 134
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;->initWebView()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "AppHostActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load app as already in error state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loadApp(Ljava/lang/String;Luk/co/uktv/dave/core/MessageHandlerFactory;)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "messageHandlerFactory"    # Luk/co/uktv/dave/core/MessageHandlerFactory;

    .prologue
    .line 125
    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, p2}, Luk/co/uktv/dave/core/AppHostActivity;->loadApp(Ljava/lang/String;ILuk/co/uktv/dave/core/MessageHandlerFactory;)V

    .line 126
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->webViewInterface:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    if-eqz v2, :cond_0

    .line 91
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "navigation"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "value"

    const-string v3, "back"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v2, p0, Luk/co/uktv/dave/core/AppHostActivity;->webViewInterface:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    invoke-virtual {v2, v1}, Luk/co/uktv/dave/core/AppHostWebViewInterface;->sendMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Luk/co/uktv/dave/core/ResourceProvider;->getInstance(Landroid/content/Context;)Luk/co/uktv/dave/core/ResourceProvider;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->resourceProvider:Luk/co/uktv/dave/core/ResourceProvider;

    .line 69
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/core/AppHostActivity;->setErrorCode(I)V

    .line 71
    invoke-virtual {p0}, Luk/co/uktv/dave/core/AppHostActivity;->showErrorDialog()V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Luk/co/uktv/dave/core/AppHostActivity;->initRootViewContainer()V

    .line 74
    invoke-direct {p0}, Luk/co/uktv/dave/core/AppHostActivity;->showSplash()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected sendMessage(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->webViewInterface:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->webViewInterface:Luk/co/uktv/dave/core/AppHostWebViewInterface;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/core/AppHostWebViewInterface;->sendMessage(Lorg/json/JSONObject;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 156
    iput p1, p0, Luk/co/uktv/dave/core/AppHostActivity;->errorCode:I

    .line 157
    return-void
.end method

.method protected showErrorDialog()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Luk/co/uktv/dave/core/AppHostActivity;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/core/AppHostActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method protected showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Luk/co/uktv/dave/core/AppHostActivity;->viewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Luk/co/uktv/dave/core/AppHostActivity;->resourceProvider:Luk/co/uktv/dave/core/ResourceProvider;

    const-string v2, "dialog_title_error"

    .line 188
    invoke-virtual {v1, v2}, Luk/co/uktv/dave/core/ResourceProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Luk/co/uktv/dave/core/AppHostActivity$2;

    invoke-direct {v2, p0}, Luk/co/uktv/dave/core/AppHostActivity$2;-><init>(Luk/co/uktv/dave/core/AppHostActivity;)V

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 200
    return-void
.end method
