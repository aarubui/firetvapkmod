.class final Luk/co/uktv/dave/browser/web/ContentProtectionUtils;
.super Ljava/lang/Object;
.source "ContentProtectionUtils.java"


# static fields
.field private static final MPD_MANIFEST_ATTR_NAME_SCHEME_ID_URI:Ljava/lang/String; = "schemeIdUri"

.field private static final MPD_MANIFEST_ATTR_VALUE_SCHEME_ID_URI:Ljava/lang/String; = "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

.field private static final MPD_MANIFEST_TAG_CONTENT_PROTECTION:Ljava/lang/String; = "ContentProtection"

.field private static final MPD_MANIFEST_TAG_PRO:Ljava/lang/String; = "pro"

.field private static final MPD_MANIFEST_TAG_PSSH:Ljava/lang/String; = "pssh"

.field private static final PLAY_READY_HEADER_LA_URL_REGEX:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ContentProtectionUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^.*<LA_URL>(.*)</LA_URL>.*$"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Luk/co/uktv/dave/browser/web/ContentProtectionUtils;->PLAY_READY_HEADER_LA_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeLicenseAcquisitionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedPlayReadyHeader"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 126
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 127
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 128
    sget-object p0, Luk/co/uktv/dave/browser/web/ContentProtectionUtils;->PLAY_READY_HEADER_LA_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static extractLicenseAcquisitionUrl(Landroid/content/Context;Ljava/lang/String;Lj$/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mpdManifestUrl",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lj$/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Luk/co/uktv/dave/network/VolleyRequests;->getInstance(Landroid/content/Context;)Luk/co/uktv/dave/network/VolleyRequests;

    move-result-object p0

    new-instance v0, Luk/co/uktv/dave/browser/web/ContentProtectionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Luk/co/uktv/dave/browser/web/ContentProtectionUtils$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/Consumer;)V

    invoke-virtual {p0, p1, v0}, Luk/co/uktv/dave/network/VolleyRequests;->requestForString(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    return-void
.end method

.method static synthetic lambda$extractLicenseAcquisitionUrl$0(Lj$/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p1}, Luk/co/uktv/dave/browser/web/ContentProtectionUtils;->readEncodedPlayReadyHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Luk/co/uktv/dave/browser/web/ContentProtectionUtils;->decodeLicenseAcquisitionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static readEncodedPlayReadyHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mpdManifest"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 67
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 68
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 69
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-eq p0, v2, :cond_5

    const/4 v7, 0x2

    const-string v8, "ContentProtection"

    if-ne p0, v7, :cond_2

    .line 75
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "schemeIdUri"

    .line 76
    invoke-interface {v1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v7, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 77
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    if-eqz v6, :cond_4

    .line 81
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v7, "pro"

    .line 82
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const-string v7, "pssh"

    .line 84
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_2
    const/4 v7, 0x4

    if-ne p0, v7, :cond_3

    if-eqz v5, :cond_4

    .line 90
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x3

    if-ne p0, v7, :cond_4

    .line 94
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v6, 0x0

    .line 98
    :cond_4
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    return-object v4

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 102
    :goto_3
    sget-object v1, Luk/co/uktv/dave/browser/web/ContentProtectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not extract license acquisition URL from manifest"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
