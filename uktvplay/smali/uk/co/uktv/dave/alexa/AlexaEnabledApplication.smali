.class public Luk/co/uktv/dave/alexa/AlexaEnabledApplication;
.super Landroid/app/Application;
.source "AlexaEnabledApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AlexaEnabledApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    const-string v3, "AlexaEnabledApplication"

    const-string v4, "AlexaEnabledApplication Is Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :try_start_0
    invoke-virtual {p0}, Luk/co/uktv/dave/alexa/AlexaEnabledApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "arr":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 19
    .local v2, "item":Ljava/lang/String;
    const-string v5, "AlexaEnabledApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "AlexaEnabledApplication"

    const-string v4, "asset error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0

    .line 27
    return-void
.end method
