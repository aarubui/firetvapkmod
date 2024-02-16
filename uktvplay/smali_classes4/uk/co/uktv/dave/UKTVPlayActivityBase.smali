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

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initializeWebApp(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    iget-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    .line 107
    iget-object v0, v0, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->splashScreen:Luk/co/uktv/dave/launcher/SplashScreen;

    invoke-virtual {v0}, Luk/co/uktv/dave/launcher/SplashScreen;->show()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 111
    new-instance v1, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/UKTVPlayActivityBase;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Luk/co/uktv/dave/network/ConnectivityMonitor;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$initializeWebApp$1$uk-co-uktv-dave-UKTVPlayActivityBase(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .locals 1

    .line 112
    invoke-static {}, Luk/co/uktv/dave/network/ConnectivityMonitor;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 114
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Luk/co/uktv/dave/launcher/DeepLinkUtils;->webAppUrl(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    const-string p2, "Could not start UKTVPlay CTV app, lack of connectivity"

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget p1, Luk/co/uktv/dave/R$string;->dialog_body_network_unavailable:I

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_1

    sget-object p2, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "Could not start UKTVPlay CTV app, invalid url: %s"

    .line 123
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget p1, Luk/co/uktv/dave/R$string;->dialog_body_generic_error:I

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 128
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 129
    sget v0, Luk/co/uktv/dave/R$string;->key_web_app_url:I

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p3, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object p3, p3, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->browserContainer:Landroidx/fragment/app/FragmentContainerView;

    .line 133
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentContainerView;->getId()I

    move-result p3

    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->getBrowserClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p3, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method synthetic lambda$onShowError$0$uk-co-uktv-dave-UKTVPlayActivityBase(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
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

    .line 39
    sget v0, Luk/co/uktv/dave/R$style;->UKTVPlayTheme_Base:I

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->setTheme(I)V

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    .line 43
    invoke-virtual {v0}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->initializeWebApp(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    .line 67
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

    .line 92
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->finishAndRemoveTask()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    sget-object v0, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Received new intent: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Luk/co/uktv/dave/launcher/DeepLinkUtils;->isDeepLink(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->initializeWebApp(Landroid/content/Intent;)V

    :cond_0
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

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Luk/co/uktv/dave/R$string;->dialog_title_error:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Luk/co/uktv/dave/messaging/internal/ShowErrorMessage;->getMessageId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/UKTVPlayActivityBase$$ExternalSyntheticLambda1;-><init>(Luk/co/uktv/dave/UKTVPlayActivityBase;)V

    const v1, 0x104000a

    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 54
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    .line 55
    invoke-static {p0}, Luk/co/uktv/dave/launcher/HdmiAudioChangeHandler;->register(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    .line 60
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 61
    invoke-static {p0}, Luk/co/uktv/dave/launcher/HdmiAudioChangeHandler;->unregister(Landroid/content/Context;)V

    .line 62
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

    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    .line 72
    iget-object p1, p1, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->splashScreen:Luk/co/uktv/dave/launcher/SplashScreen;

    invoke-virtual {p1}, Luk/co/uktv/dave/launcher/SplashScreen;->takeOff()V

    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    .line 73
    iget-object p1, p1, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->browserContainer:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainerView;->requestFocus()Z

    return-void
.end method
