.class Lcom/tvbusa/encore/tv/SeriesActivity$6;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity;->checkAllHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SeriesActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 247
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 249
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "json":Ljava/lang/String;
    const-string v1, "Login JSON"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "hasHistory"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 259
    .local v2, "s":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$102(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const-string v3, "t"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 262
    .local v3, "ttt":Ljava/lang/Long;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, v4, Lcom/tvbusa/encore/tv/SeriesActivity;->historyTime:I

    .line 264
    .end local v3    # "ttt":Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    new-instance v4, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;

    invoke-direct {v4, p0, v2}, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity$6;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v4}, Lcom/tvbusa/encore/tv/SeriesActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "s":Ljava/lang/Boolean;
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "t":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOGIN-JSON"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
