.class public Luk/co/uktv/dave/UKTVPlayActivity;
.super Luk/co/uktv/dave/UKTVPlayActivityBase;
.source "UKTVPlayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UKTVPlayActivity"


# instance fields
.field private wasAppPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 21
    invoke-super {p0, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->broadcast(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->schedule(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    .line 32
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    .line 37
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivityBase;->onResume()V

    iget-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/uktv/dave/UKTVPlayActivity;->wasAppPaused:Z

    .line 40
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public onWebAppReady(Luk/co/uktv/dave/messaging/ajb/WebAppReadyMessage;)V
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

    .line 46
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->reportFullyDrawn()V

    return-void
.end method
