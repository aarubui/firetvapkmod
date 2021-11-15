.class public Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;
.super Landroid/os/AsyncTask;
.source "BCOVLivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelTask"
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
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;


# direct methods
.method public constructor <init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 136
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 141
    const-string v0, ""

    const-string v1, "stringValue"

    :try_start_0
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 142
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget-object v4, v4, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 143
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 144
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "res":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    .local v6, "object":Lorg/json/JSONObject;
    const-string v7, "fields"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 148
    .local v7, "fields":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    const-string v9, "banner"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->thumb:Ljava/lang/String;

    .line 149
    iget-object v8, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    const-string v9, "firetv"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->ad_config_value:Ljava/lang/String;

    .line 150
    iget-object v8, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    const-string v9, "videoId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->videoId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 152
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v5    # "res":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "fields":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 136
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 158
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 161
    const-string v0, "ChannelDebug"

    const-string v1, "Done Channel Task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$ChannelTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;-><init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method
