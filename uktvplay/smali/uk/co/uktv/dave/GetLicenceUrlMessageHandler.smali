.class public Luk/co/uktv/dave/GetLicenceUrlMessageHandler;
.super Luk/co/uktv/dave/core/MessageHandler;
.source "GetLicenceUrlMessageHandler.java"


# static fields
.field protected static final KEY_LA_URL:Ljava/lang/String; = "laUrl"

.field protected static final KEY_LICENCE_GOT:Ljava/lang/String; = "licenceGot"

.field protected static final KEY_MANIFEST_URL:Ljava/lang/String; = "manifestUrl"

.field public static final TAG:Ljava/lang/String; = "GetLicenceUrlMessageHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Luk/co/uktv/dave/core/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
    .locals 3
    .param p1, "appHost"    # Luk/co/uktv/dave/core/AppHostActivity;
    .param p2, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    const-string v1, "manifestUrl"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "manifestUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    .line 35
    :cond_0
    new-instance v1, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;

    new-instance v2, Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;

    invoke-direct {v2, p0, v0, p1}, Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;-><init>(Luk/co/uktv/dave/GetLicenceUrlMessageHandler;Ljava/lang/String;Luk/co/uktv/dave/core/AppHostActivity;)V

    invoke-direct {v1, v2}, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;-><init>(Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;)V

    .line 43
    invoke-virtual {v1, v0}, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;->getLicenceAcquisitionURL(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    goto :goto_0
.end method
