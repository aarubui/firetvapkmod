.class public final Luk/co/uktv/dave/media/ContentProtectionUtils;
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

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Luk/co/uktv/dave/media/ContentProtectionUtils;->PLAY_READY_HEADER_LA_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeLicenseAcquisitionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 151
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 152
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 153
    sget-object p0, Luk/co/uktv/dave/media/ContentProtectionUtils;->PLAY_READY_HEADER_LA_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static downloadMpdManifest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 49
    sget-object v0, Luk/co/uktv/dave/media/ContentProtectionUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v4, "Downloading MPD manifest, mpdManifestUrl=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 56
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 57
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 59
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v5

    .line 51
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v6

    .line 59
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    .line 51
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v5

    if-eqz v2, :cond_1

    .line 59
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v2

    :try_start_a
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v2

    .line 60
    sget-object v4, Luk/co/uktv/dave/media/ContentProtectionUtils;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string p0, "Could not download MPD manifest, mpdManifestUrl=%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractLicenseAcquisitionUrl(Ljava/lang/String;Lj$/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj$/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;

    invoke-direct {v2, p0, v0, p1}, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;-><init>(Ljava/lang/String;Landroid/os/Handler;Lj$/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$extractLicenseAcquisitionUrl$1(Ljava/lang/String;Landroid/os/Handler;Lj$/util/function/Consumer;)V
    .locals 1

    .line 41
    invoke-static {p0}, Luk/co/uktv/dave/media/ContentProtectionUtils;->downloadMpdManifest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Luk/co/uktv/dave/media/ContentProtectionUtils;->readEncodedPlayReadyHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Luk/co/uktv/dave/media/ContentProtectionUtils;->decodeLicenseAcquisitionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    new-instance v0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$Ac3FF3nDr_ofWLwVuSETF2gGe14;

    invoke-direct {v0, p2, p0}, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$Ac3FF3nDr_ofWLwVuSETF2gGe14;-><init>(Lj$/util/function/Consumer;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$null$0(Lj$/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-interface {p0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static readEncodedPlayReadyHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 91
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 92
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 93
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 94
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

    .line 100
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "schemeIdUri"

    .line 101
    invoke-interface {v1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v7, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 102
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    if-eqz v6, :cond_4

    .line 106
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v7, "pro"

    .line 107
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const-string v7, "pssh"

    .line 109
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_2
    const/4 v7, 0x4

    if-ne p0, v7, :cond_3

    if-eqz v5, :cond_4

    .line 115
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x3

    if-ne p0, v7, :cond_4

    .line 119
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v6, 0x0

    .line 123
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

    .line 127
    :goto_3
    sget-object v1, Luk/co/uktv/dave/media/ContentProtectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not extract license acquisition URL from manifest"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
