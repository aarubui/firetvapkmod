.class public final synthetic Luk/co/uktv/dave/launcher/SplashScreen$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/launcher/SplashScreen;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/launcher/SplashScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/launcher/SplashScreen$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/launcher/SplashScreen;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/launcher/SplashScreen$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/launcher/SplashScreen;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/launcher/SplashScreen;->lambda$takeOff$0$uk-co-uktv-dave-launcher-SplashScreen(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
