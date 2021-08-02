.class public final Luk/co/uktv/dave/messaging/to/LicenseGotMessage;
.super Luk/co/uktv/dave/messaging/to/ToWebAppMessage;
.source "LicenseGotMessage.java"


# static fields
.field private static final PROP_KEY_LA_URL:Ljava/lang/String; = "laUrl"

.field private static final PROP_KEY_MANIFEST_URL:Ljava/lang/String; = "manifestUrl"

.field private static final TAG:Ljava/lang/String; = "LicenseGotMessage"

.field public static final TYPE:Ljava/lang/String; = "licenceGot"


# instance fields
.field public final laUrl:Ljava/lang/String;

.field public final manifestUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "licenceGot"

    .line 28
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/to/ToWebAppMessage;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->manifestUrl:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->laUrl:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Luk/co/uktv/dave/messaging/to/LicenseGotMessage;
    .locals 10

    const-string v0, "licenceGot"

    .line 42
    invoke-static {v0, p0}, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "manifestUrl"

    .line 45
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "fromJson: Missing \'%s\' property, messageJson=%s"

    if-eqz v5, :cond_1

    .line 47
    sget-object v0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->TAG:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object p0, v3, v6

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "laUrl"

    .line 51
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    sget-object v0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->TAG:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object p0, v3, v6

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 57
    :cond_2
    new-instance p0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;

    invoke-direct {p0, v3, v0}, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    iget-object v1, p0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->manifestUrl:Ljava/lang/String;

    const-string v2, "manifestUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->laUrl:Ljava/lang/String;

    const-string v2, "laUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "licenceGot"

    .line 65
    invoke-virtual {p0, v1, v0}, Luk/co/uktv/dave/messaging/to/LicenseGotMessage;->toJson(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
