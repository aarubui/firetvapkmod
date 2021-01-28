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

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getUniqueId()V
    .locals 7

    .line 61
    const-string v0, ""

    .line 63
    .local v0, "sss":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 64
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 65
    .local v3, "get":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ro.serialno"

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 66
    const-string v4, "SN# From Serial Number"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 71
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 74
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "advertising_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v3, "SN# From Advertising ID"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v3, v0}, Lcom/tvbusa/encore/tv/MainApplication;->setNumber(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/MainActivity;->snPing(Ljava/lang/String;I)V

    .line 79
    .end local v2    # "cr":Landroid/content/ContentResolver;
    goto :goto_1

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v2, v0}, Lcom/tvbusa/encore/tv/MainApplication;->setNumber(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/MainActivity;->snPing(Ljava/lang/String;I)V

    .line 83
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    .line 56
    new-instance v0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;

    invoke-direct {v0, p0}, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;-><init>(Lcom/tvbusa/encore/tv/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainActivity;->getUniqueId()V

    .line 58
    return-void
.end method

.method public snPing(Ljava/lang/String;I)V
    .locals 8
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 132
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

    .line 133
    .local v0, "params":Ljava/lang/String;
    const-string v1, "https://us-central1-encoretvb-firetv-chinese.cloudfunctions.net/fireTvPing"

    .line 134
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 135
    .local v2, "client":Lokhttp3/OkHttpClient;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 136
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 137
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 138
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/MainActivity$1;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/MainActivity$1;-><init>(Lcom/tvbusa/encore/tv/MainActivity;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 151
    return-void
.end method
