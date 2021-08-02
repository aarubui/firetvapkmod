.class public Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tvbusa/encore/tv/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/MainActivity;

    .line 85
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 90
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 91
    .local v0, "client":Lokhttp3/OkHttpClient;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/MainActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 93
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 94
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v4, "res":Ljava/lang/String;
    return-object v4

    .line 96
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .line 102
    const-string v0, "AdRule"

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 105
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "json_result":Lorg/json/JSONObject;
    const-string v2, "AmazonFireTV"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 107
    .local v2, "adArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 108
    .local v4, "adObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/MainActivity;

    iget-object v5, v5, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tvbusa/encore/tv/MainApplication;->setVideoAdRule(Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/MainActivity;

    iget-object v5, v5, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    const-string v6, "MidRoll"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tvbusa/encore/tv/MainApplication;->setNumOfAdsInPod(Ljava/lang/Integer;)V

    .line 110
    const-string v5, "LiveStream"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 111
    .local v5, "liveArray":Lorg/json/JSONArray;
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 112
    .local v3, "liveObject":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/MainActivity;

    iget-object v6, v6, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    const-string v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tvbusa/encore/tv/MainApplication;->setLiveStreamURL(Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/MainActivity;

    iget-object v6, v6, Lcom/tvbusa/encore/tv/MainActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainApplication;->getLiveStreamURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .end local v1    # "json_result":Lorg/json/JSONObject;
    .end local v2    # "adArray":Lorg/json/JSONArray;
    .end local v3    # "liveObject":Lorg/json/JSONObject;
    .end local v4    # "adObject":Lorg/json/JSONObject;
    .end local v5    # "liveArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 119
    :goto_0
    new-instance v0, Lcom/tvbusa/encore/tv/MainFragment;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/MainFragment;-><init>()V

    .line 120
    .local v0, "mainFragment":Lcom/tvbusa/encore/tv/MainFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, "arguments":Landroid/os/Bundle;
    const-string v2, "json"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainFragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/MainActivity;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a00fa

    const-string v4, "MainFragment"

    invoke-virtual {v2, v3, v0, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 125
    return-void
.end method
