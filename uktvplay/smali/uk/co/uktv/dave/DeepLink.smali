.class public Luk/co/uktv/dave/DeepLink;
.super Luk/co/uktv/dave/UKTVPlay;
.source "DeepLink.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlay;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAppLaunchUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 11
    invoke-virtual {p0}, Luk/co/uktv/dave/DeepLink;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, "houseNumber":Ljava/lang/String;
    const v2, 0x7f090017

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Luk/co/uktv/dave/DeepLink;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method
