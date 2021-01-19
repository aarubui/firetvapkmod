.class public Luk/co/uktv/dave/dd/util/URLExtractor;
.super Ljava/lang/Object;
.source "URLExtractor.java"


# static fields
.field private static final REGEX:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "URLExtractor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "^.*<LA_URL>(.*)</LA_URL>.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Luk/co/uktv/dave/dd/util/URLExtractor;->REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getURLFromBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "base64"    # Ljava/lang/String;

    .prologue
    .line 12
    if-eqz p1, :cond_1

    .line 13
    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 14
    .local v0, "decoded":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 15
    .local v3, "string":Ljava/lang/String;
    sget-object v4, Luk/co/uktv/dave/dd/util/URLExtractor;->REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 16
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 17
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    .end local v0    # "decoded":[B
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
