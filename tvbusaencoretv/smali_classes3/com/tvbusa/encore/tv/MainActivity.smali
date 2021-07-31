.class public Lcom/tvbusa/encore/tv/MainActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;
    }
.end annotation


# instance fields
.field mApp:Lcom/tvbusa/encore/tv/MainApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 75
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tvbusa/encore/tv/MainActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 76
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 77
    return v0

    .line 74
    .end local v3    # "success":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 81
    .end local v1    # "children":[Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 84
    :cond_3
    return v0
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/tvbusa/encore/tv/MainActivity;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .end local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TestIMA"

    const-string v2, "Clear Cache Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getUniqueId()V
    .locals 7

    .line 89
    const-string v0, ""

    .line 91
    .local v0, "sss":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 92
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 93
    .local v3, "get":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ro.serialno"

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 94
    const-string v4, "SN# From Serial Number"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "ignored":Ljava/lang/Exception;
    const-string v0, "123213123123123123123132"

    .line 99
    .end local v2    # "ignored":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 106
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/MainActivity;->snPing(Ljava/lang/String;I)V

    .line 107
    .end local v2    # "cr":Landroid/content/ContentResolver;
    goto :goto_1

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v2, v0}, Lcom/tvbusa/encore/tv/MainApplication;->setNumber(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/MainActivity;->snPing(Ljava/lang/String;I)V

    .line 111
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    .line 57
    new-instance v0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;

    invoke-direct {v0, p0}, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;-><init>(Lcom/tvbusa/encore/tv/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->getUniqueId()V

    .line 59
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->clearCache()V

    .line 60
    return-void
.end method

.method public snPing(Ljava/lang/String;I)V
    .locals 8
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sn",
            "type"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"sn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"t\":\"session\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 161
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 162
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 163
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 164
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 165
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/MainActivity$1;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/MainActivity$1;-><init>(Lcom/tvbusa/encore/tv/MainActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 178
    return-void
.end method
