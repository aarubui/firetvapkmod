.class public final Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;
.super Luk/co/uktv/dave/messaging/from/FromWebAppMessage;
.source "GetLicenseUrlMessage.java"


# static fields
.field private static final PROP_KEY_MANIFEST_URL:Ljava/lang/String; = "manifestUrl"

.field private static final TAG:Ljava/lang/String; = "GetLicenseUrlMessage"

.field public static final TYPE:Ljava/lang/String; = "getLicenceUrl"


# instance fields
.field public final manifestUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "getLicenceUrl"

    .line 26
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/from/FromWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->manifestUrl:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;
    .locals 5

    const-string v0, "getLicenceUrl"

    .line 38
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "manifestUrl"

    .line 41
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    sget-object v0, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p0, v3, v2

    const-string p0, "fromJson: Missing \'%s\' property, messageJson=%s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 47
    :cond_1
    new-instance p0, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;

    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    iget-object v1, p0, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->manifestUrl:Ljava/lang/String;

    const-string v2, "manifestUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getLicenceUrl"

    .line 54
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
