.class public Luk/co/uktv/dave/launcher/SplashScreen;
.super Landroid/view/SurfaceView;
.source "SplashScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashScreen"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Luk/co/uktv/dave/launcher/SplashScreen;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Luk/co/uktv/dave/launcher/SplashScreen;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f070093

    .line 34
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0500c8

    .line 35
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 37
    invoke-virtual {p0}, Luk/co/uktv/dave/launcher/SplashScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 38
    invoke-virtual {p0}, Luk/co/uktv/dave/launcher/SplashScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Luk/co/uktv/dave/launcher/SplashScreen$1;

    invoke-direct {v2, p0, p1, v0}, Luk/co/uktv/dave/launcher/SplashScreen$1;-><init>(Luk/co/uktv/dave/launcher/SplashScreen;ILandroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$takeOff$0$SplashScreen(Landroid/os/Message;)Z
    .locals 0

    const/16 p1, 0x8

    .line 74
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/launcher/SplashScreen;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public takeOff()V
    .locals 4

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Luk/co/uktv/dave/launcher/SplashScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Luk/co/uktv/dave/launcher/-$$Lambda$SplashScreen$6oD7lXVCWN7smW2yR2JdUR_Ncs8;

    invoke-direct {v2, p0}, Luk/co/uktv/dave/launcher/-$$Lambda$SplashScreen$6oD7lXVCWN7smW2yR2JdUR_Ncs8;-><init>(Luk/co/uktv/dave/launcher/SplashScreen;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
