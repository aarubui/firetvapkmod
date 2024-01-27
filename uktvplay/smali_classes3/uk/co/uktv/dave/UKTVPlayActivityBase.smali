.class public Luk/co/uktv/dave/UKTVPlayActivityBase;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UKTVPlayActivityBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayActivityBase"


# instance fields
.field protected viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initializeWebApp()V
    .locals 2

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 108
    new-instance v1, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/UKTVPlayActivityBase;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 134
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
    .locals 4

    .line 92
    sget v0, Luk/co/uktv/dave/R$string;->web_app_url:I

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Luk/co/uktv/dave/R$string;->web_app_hostname_url:I

    .line 94
    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 95
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getDeviceBrand()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 96
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 97
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getDeviceVariant()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget v2, Luk/co/uktv/dave/R$string;->version:I

    .line 98
    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget v2, Luk/co/uktv/dave/R$string;->hash:I

    .line 99
    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 92
    invoke-virtual {p0, v0, v1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$initializeWebApp$1$uk-co-uktv-dave-UKTVPlayActivityBase(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V
    .locals 2

    .line 109
    invoke-static {}, Luk/co/uktv/dave/network/ConnectivityMonitor;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 111
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getWebAppUrl()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 114
    sget-object p1, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    const-string p2, "Could not start UKTVPlay TAL app, lack of connectivity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget p1, Luk/co/uktv/dave/R$string;->dialog_body_network_unavailable:I

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 119
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 120
    sget-object p2, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not start UKTVPlay TAL app, invalid url: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget p1, Luk/co/uktv/dave/R$string;->dialog_body_generic_error:I

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 125
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 126
    sget p2, Luk/co/uktv/dave/R$string;->key_web_app_url:I

    invoke-virtual {p0, p2}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getWebAppUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 129
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object v0, v0, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->browserContainer:Landroidx/fragment/app/FragmentContainerView;

    .line 130
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainerView;->getId()I

    move-result v0

    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getBrowserClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method synthetic lambda$onShowError$0$uk-co-uktv-dave-UKTVPlayActivityBase(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 80
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->finish()V

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

    .line 35
    sget v0, Luk/co/uktv/dave/R$style;->UKTVPlayTheme_Base:I

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->setTheme(I)V

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    .line 39
    invoke-virtual {v0}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 43
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->initializeWebApp()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    .line 63
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onExitApp(Luk/co/uktv/dave/messaging/internal/ExitAppMessage;)V
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

    .line 88
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->finishAndRemoveTask()V

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

    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Luk/co/uktv/dave/R$string;->dialog_title_error:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/internal/ShowErrorMessage;->getMessageId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda1;-><init>(Luk/co/uktv/dave/UKTVPlayActivityBase;)V

    const v1, 0x104000a

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    .line 49
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 50
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 51
    invoke-static {p0}, Luk/co/uktv/dave/launcher/HdmiAudioChangeHandler;->register(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    .line 56
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 57
    invoke-static {p0}, Luk/co/uktv/dave/launcher/HdmiAudioChangeHandler;->unregister(Landroid/content/Context;)V

    .line 58
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

    .line 68
    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object p1, p1, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->splashScreen:Luk/co/uktv/dave/launcher/SplashScreen;

    invoke-virtual {p1}, Luk/co/uktv/dave/launcher/SplashScreen;->takeOff()V

    .line 69
    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object p1, p1, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->browserContainer:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainerView;->requestFocus()Z

    return-void
.end method
