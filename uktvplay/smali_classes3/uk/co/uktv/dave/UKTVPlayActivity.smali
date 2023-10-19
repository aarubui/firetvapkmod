.class public Luk/co/uktv/dave/UKTVPlayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UKTVPlayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayActivity"


# instance fields
.field private viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getBrowserClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isFreeViewPlayFireTV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-class v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    return-object v0

    .line 137
    :cond_0
    const-class v0, Luk/co/uktv/dave/browser/web/WebBrowser;

    return-object v0
.end method

.method private initializeWebApp()V
    .locals 2

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 144
    new-instance v1, Luk/co/uktv/dave/UKTVPlayActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Luk/co/uktv/dave/UKTVPlayActivity$$ExternalSyntheticLambda1;-><init>(Luk/co/uktv/dave/UKTVPlayActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Luk/co/uktv/dave/network/ConnectivityMonitor;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected getWebAppUrl()Ljava/lang/String;
    .locals 12

    const v0, 0x7f1100cc

    .line 124
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isFreeViewPlayFireTV()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const-string v4, "firetv"

    const/4 v5, 0x2

    const-string v6, "amazon"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const v10, 0x7f1100cd

    const-string v11, "4.4.3"

    if-eqz v1, :cond_0

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v0, v1, v8

    aput-object v6, v1, v7

    aput-object v4, v1, v5

    const-string v0, "fvp"

    aput-object v0, v1, v3

    aput-object v11, v1, v2

    .line 128
    invoke-virtual {p0, v10, v1}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v1, v9, [Ljava/lang/Object;

    aput-object v0, v1, v8

    aput-object v6, v1, v7

    aput-object v4, v1, v5

    const-string v0, "default"

    aput-object v0, v1, v3

    aput-object v11, v1, v2

    .line 130
    invoke-virtual {p0, v10, v1}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$initializeWebApp$1$uk-co-uktv-dave-UKTVPlayActivity(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V
    .locals 2

    .line 145
    invoke-static {}, Luk/co/uktv/dave/network/ConnectivityMonitor;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 147
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getWebAppUrl()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 150
    sget-object p1, Luk/co/uktv/dave/UKTVPlayActivity;->TAG:Ljava/lang/String;

    const-string p2, "Could not start UKTVPlay TAL app, lack of connectivity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f11002a

    .line 151
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 156
    sget-object p2, Luk/co/uktv/dave/UKTVPlayActivity;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not start UKTVPlay TAL app, invalid url: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f110029

    .line 157
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 161
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const p2, 0x7f11006d

    .line 162
    invoke-virtual {p0, p2}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getWebAppUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 165
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->browserContainer:Landroidx/fragment/app/FragmentContainerView;

    .line 166
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainerView;->getId()I

    move-result v0

    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getBrowserClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public synthetic lambda$onShowError$0$uk-co-uktv-dave-UKTVPlayActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    const v0, 0x7f1202c5

    .line 45
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivity;->setTheme(I)V

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->broadcast(Landroid/content/Context;)V

    .line 49
    invoke-static {p0}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->schedule(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    .line 52
    invoke-virtual {v0}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivity;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 56
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->initializeWebApp()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    .line 76
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onExitApp(Luk/co/uktv/dave/messaging/tal/ExitAppFromTalMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 120
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 81
    sget-object v0, Luk/co/uktv/dave/UKTVPlayActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Received new intent: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const v2, 0x7f11006b

    .line 84
    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Directive not found, ignoring intent: %s"

    .line 86
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 92
    new-instance v0, Luk/co/uktv/dave/messaging/tal/DirectiveReceivedToTalMessage;

    invoke-direct {v0, p1}, Luk/co/uktv/dave/messaging/tal/DirectiveReceivedToTalMessage;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object v0, Luk/co/uktv/dave/UKTVPlayActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "Could not parse directive: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onShowError(Luk/co/uktv/dave/messaging/internal/ShowErrorMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11002c

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/internal/ShowErrorMessage;->getMessageId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Luk/co/uktv/dave/UKTVPlayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/UKTVPlayActivity$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/UKTVPlayActivity;)V

    const v1, 0x104000a

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    .line 62
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 63
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 64
    invoke-static {p0}, Luk/co/uktv/dave/launcher/HdmiAudioChangeHandler;->register(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    .line 69
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 70
    invoke-static {p0}, Luk/co/uktv/dave/launcher/HdmiAudioChangeHandler;->unregister(Landroid/content/Context;)V

    .line 71
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onWebAppLoaded(Luk/co/uktv/dave/messaging/internal/WebAppLoadedMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 100
    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object p1, p1, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->splashScreen:Luk/co/uktv/dave/launcher/SplashScreen;

    invoke-virtual {p1}, Luk/co/uktv/dave/launcher/SplashScreen;->takeOff()V

    .line 101
    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object p1, p1, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->browserContainer:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainerView;->requestFocus()Z

    return-void
.end method
