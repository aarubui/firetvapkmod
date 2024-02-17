.class public Luk/co/uktv/dave/UKTVPlayApp;
.super Luk/co/uktv/dave/UKTVPlayAppBase;
.source "UKTVPlayApp.java"


# static fields
.field private static freeViewFeatureEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayAppBase;-><init>()V

    return-void
.end method

.method public static getBrowserClass()Ljava/lang/Class;
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

    sget-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->freeViewFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 31
    const-class v0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser;

    goto :goto_0

    :cond_0
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayAppBase;->getBrowserClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->freeViewFeatureEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "fvp"

    goto :goto_0

    :cond_0
    const-string v0, "google"

    :goto_0
    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    const-string v0, "androidtv"

    return-object v0
.end method

.method public static getDeviceVariant()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->freeViewFeatureEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "vewd"

    goto :goto_0

    :cond_0
    const-string v0, "default"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 35
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayAppBase;->onCreate()V

    .line 37
    invoke-virtual {p0}, Luk/co/uktv/dave/UKTVPlayApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget v1, Luk/co/uktv/dave/R$string;->feature_freeview_firetv:I

    invoke-virtual {p0, v1}, Luk/co/uktv/dave/UKTVPlayApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Luk/co/uktv/dave/UKTVPlayApp;->freeViewFeatureEnabled:Z

    const-string v0, "CTCH634X"

    .line 41
    invoke-static {p0, v0}, Luk/co/uktv/dave/launcher/DeepLinkUtils;->videoOnlyLegacyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->printSampleAmazonDeepLink(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    invoke-static {p0, v0}, Luk/co/uktv/dave/launcher/DeepLinkUtils;->videoOnlyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->printSampleAmazonDeepLink(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    invoke-static {p0, v0}, Luk/co/uktv/dave/launcher/DeepLinkUtils;->videoOnlyIntentWithExtra(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->printSampleAmazonDeepLink(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    invoke-static {p0, v0}, Luk/co/uktv/dave/launcher/DeepLinkUtils;->webLinkForHouseNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->printSampleAmazonDeepLink(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v0, "/shows/madam-secretary/watch-online"

    .line 45
    invoke-static {p0, v0}, Luk/co/uktv/dave/launcher/DeepLinkUtils;->webLinkForPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->printSampleAmazonDeepLink(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
