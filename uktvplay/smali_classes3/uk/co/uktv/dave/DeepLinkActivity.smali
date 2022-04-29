.class public Luk/co/uktv/dave/DeepLinkActivity;
.super Luk/co/uktv/dave/UKTVPlayActivity;
.source "DeepLinkActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeepLinkActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Luk/co/uktv/dave/UKTVPlayActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWebAppUrl()Ljava/lang/String;
    .locals 5

    .line 16
    invoke-virtual {p0}, Luk/co/uktv/dave/DeepLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f1000cb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 23
    invoke-super {p0}, Luk/co/uktv/dave/UKTVPlayActivity;->getWebAppUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Luk/co/uktv/dave/DeepLinkActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :cond_1
    :goto_0
    sget-object v0, Luk/co/uktv/dave/DeepLinkActivity;->TAG:Ljava/lang/String;

    const-string v1, "Intent doesn\'t contain houseNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
