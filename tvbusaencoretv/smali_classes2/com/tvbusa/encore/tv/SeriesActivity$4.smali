.class Lcom/tvbusa/encore/tv/SeriesActivity$4;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity;->checkFav()V
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

    .line 154
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 156
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "json":Ljava/lang/String;
    const-string v1, "Check Fav JSON"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "isFav"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$002(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$002(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    new-instance v3, Lcom/tvbusa/encore/tv/SeriesActivity$4$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$4$1;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_1

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

    .line 176
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
