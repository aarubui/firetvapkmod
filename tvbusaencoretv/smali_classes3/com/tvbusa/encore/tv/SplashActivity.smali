.class public Lcom/tvbusa/encore/tv/SplashActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/SplashActivity$MiscTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
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

    .line 189
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 192
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tvbusa/encore/tv/SplashActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 193
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 194
    return v0

    .line 191
    .end local v3    # "success":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 198
    .end local v1    # "children":[Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 201
    :cond_3
    return v0
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/tvbusa/encore/tv/SplashActivity;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .end local v0    # "dir":Ljava/io/File;
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TestIMA"

    const-string v2, "Clear Cache Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getUniqueId()V
    .locals 9

    .line 85
    const-string v0, ""

    .line 86
    .local v0, "sss":Ljava/lang/String;
    const-string v1, "generalInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tvbusa/encore/tv/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "generalInfo":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 90
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 91
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 92
    .local v5, "get":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "ro.serialno"

    aput-object v7, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    .line 93
    const-string v6, "SN# From Serial Number"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v4

    .line 95
    .local v4, "ignored":Ljava/lang/Exception;
    const-string v0, "123213123123123123123132"

    .line 98
    .end local v4    # "ignored":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "deviceNumber"

    if-nez v4, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 101
    .local v4, "cr":Landroid/content/ContentResolver;
    const-string v6, "android_id"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v6, "SN# From Advertising ID"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    invoke-virtual {p0, v0, v2}, Lcom/tvbusa/encore/tv/SplashActivity;->snPing(Ljava/lang/String;I)V

    .line 107
    .end local v4    # "cr":Landroid/content/ContentResolver;
    goto :goto_1

    .line 108
    :cond_0
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    invoke-virtual {p0, v0, v2}, Lcom/tvbusa/encore/tv/SplashActivity;->snPing(Ljava/lang/String;I)V

    .line 112
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

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SplashActivity;->setContentView(I)V

    .line 79
    new-instance v0, Lcom/tvbusa/encore/tv/SplashActivity$MiscTask;

    invoke-direct {v0, p0}, Lcom/tvbusa/encore/tv/SplashActivity$MiscTask;-><init>(Lcom/tvbusa/encore/tv/SplashActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SplashActivity$MiscTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SplashActivity;->getUniqueId()V

    .line 81
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SplashActivity;->clearCache()V

    .line 82
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

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 158
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

    .line 159
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 160
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 161
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 162
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 163
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 164
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/SplashActivity$1;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/SplashActivity$1;-><init>(Lcom/tvbusa/encore/tv/SplashActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 177
    return-void
.end method
