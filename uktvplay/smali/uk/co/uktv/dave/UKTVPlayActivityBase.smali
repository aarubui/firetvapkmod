.class public abstract Luk/co/uktv/dave/UKTVPlayActivityBase;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UKTVPlayActivityBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayActivityBase"


# instance fields
.field private viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

.field protected webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initializeWebApp()V
    .locals 2

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 114
    new-instance v1, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$Tz8kIJmeFRq4hh0moTG8Bs5--_A;

    invoke-direct {v1, p0, v0}, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$Tz8kIJmeFRq4hh0moTG8Bs5--_A;-><init>(Luk/co/uktv/dave/UKTVPlayActivityBase;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected getWebAppUrl()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0d0073

    .line 105
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initializeWebApp(Ljava/lang/String;)V
.end method

.method public synthetic lambda$initializeWebApp$1$UKTVPlayActivityBase(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V
    .locals 2

    .line 115
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->isConnected()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 117
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getWebAppUrl()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 120
    sget-object p1, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    const-string p2, "Could not start UKTVPlay TAL app, lack of connectivity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d002b

    .line 121
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 126
    sget-object p2, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not start UKTVPlay TAL app, invalid url: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d002a

    .line 127
    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->postError(I)V

    return-void

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->initializeWebApp(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onShowError$0$UKTVPlayActivityBase(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0e0208

    .line 38
    invoke-virtual {p0, v0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->setTheme(I)V

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    .line 44
    invoke-virtual {p1}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {p1}, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->bind(Landroid/view/View;)Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->webAppViewBinding:Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    .line 45
    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    invoke-virtual {p1}, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->initializeWebApp()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onExitApp(Luk/co/uktv/dave/messaging/from/ExitAppMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 101
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 69
    sget-object v0, Luk/co/uktv/dave/UKTVPlayActivityBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Received new intent: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const v2, 0x7f0d001b

    .line 72
    invoke-virtual {p0, v2}, Luk/co/uktv/dave/UKTVPlayActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Directive not found, ignoring intent: %s"

    .line 74
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    new-instance p1, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;

    invoke-direct {p1, v2}, Luk/co/uktv/dave/messaging/to/DirectiveReceivedMessage;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method public onShowError(Luk/co/uktv/dave/messaging/ShowErrorMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d002d

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget p1, p1, Luk/co/uktv/dave/messaging/ShowErrorMessage;->messageId:I

    .line 89
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$kbOlZTXMUnGEzRhxYwe6ekVnNfY;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$kbOlZTXMUnGEzRhxYwe6ekVnNfY;-><init>(Luk/co/uktv/dave/UKTVPlayActivityBase;)V

    const v1, 0x104000a

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 53
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->registerSubscriber(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 58
    invoke-static {p0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->unregisterSubscriber(Ljava/lang/Object;)V

    .line 59
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onWebAppLoaded(Luk/co/uktv/dave/messaging/WebAppLoadedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 82
    iget-object p1, p0, Luk/co/uktv/dave/UKTVPlayActivityBase;->viewBinding:Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;

    iget-object p1, p1, Luk/co/uktv/dave/databinding/ActivityUktvplayBinding;->splashScreen:Luk/co/uktv/dave/launcher/SplashScreen;

    invoke-virtual {p1}, Luk/co/uktv/dave/launcher/SplashScreen;->takeOff()V

    return-void
.end method
