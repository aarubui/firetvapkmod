.class public Luk/co/uktv/dave/dd/util/Base64FragmentProvider;
.super Ljava/lang/Object;
.source "Base64FragmentProvider.java"


# static fields
.field private static final ATTR_NAME_SCHEME_ID_URI:Ljava/lang/String; = "schemeIdUri"

.field private static final ATTR_VALUE_SCHEME_ID_URI:Ljava/lang/String; = "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

.field private static final TAG:Ljava/lang/String; = "Base64FragmentProvider"

.field private static final TAG_CONTENT_PROTECTION:Ljava/lang/String; = "ContentProtection"

.field private static final TAG_PRO:Ljava/lang/String; = "pro"

.field private static final TAG_PSSH:Ljava/lang/String; = "pssh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "documentText"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 20
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 21
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 22
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 23
    .local v8, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 24
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 25
    .local v2, "eventType":I
    const/4 v4, 0x0

    .line 26
    .local v4, "isProcessing":Z
    const/4 v6, 0x0

    .line 27
    .local v6, "readText":Z
    const/4 v7, 0x0

    .line 28
    .local v7, "result":Ljava/lang/String;
    :goto_0
    if-eq v2, v12, :cond_5

    .line 29
    const/4 v10, 0x2

    if-ne v2, v10, :cond_3

    .line 30
    const-string v10, "ContentProtection"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 31
    const/4 v10, 0x0

    const-string v11, "schemeIdUri"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "attr":Ljava/lang/String;
    const-string v10, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 33
    const/4 v4, 0x1

    .line 53
    .end local v0    # "attr":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 35
    :cond_1
    if-eqz v4, :cond_0

    .line 36
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "name":Ljava/lang/String;
    const-string v10, "pro"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v7, :cond_2

    .line 38
    const/4 v6, 0x1

    goto :goto_1

    .line 39
    :cond_2
    const-string v10, "pssh"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 40
    const/4 v6, 0x1

    goto :goto_1

    .line 43
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x4

    if-ne v2, v10, :cond_4

    .line 44
    if-eqz v6, :cond_0

    .line 45
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 46
    const/4 v6, 0x0

    goto :goto_1

    .line 48
    :cond_4
    const/4 v10, 0x3

    if-ne v2, v10, :cond_0

    .line 49
    const-string v10, "ContentProtection"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_0

    .line 50
    const/4 v4, 0x0

    goto :goto_1

    .line 56
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "isProcessing":Z
    .end local v6    # "readText":Z
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v7, v9

    .line 61
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_2
    return-object v7

    .line 59
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v9

    .line 61
    goto :goto_2
.end method
