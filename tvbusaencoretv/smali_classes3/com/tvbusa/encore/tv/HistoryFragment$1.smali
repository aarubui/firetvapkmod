.class Lcom/tvbusa/encore/tv/HistoryFragment$1;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/HistoryFragment;->parseHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/HistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/HistoryFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryFragment$1;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "e"
        }
    .end annotation

    .line 101
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "json":Ljava/lang/String;
    const-string v1, "Login JSON"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 110
    .local v2, "count":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 111
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 112
    .local v3, "lastItem":I
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 113
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "n"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "title":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "parent":Ljava/lang/String;
    const-string v5, "pid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "pid":Ljava/lang/String;
    const-string v5, "img"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 117
    .local v11, "banner":Ljava/lang/String;
    new-instance v5, Lcom/tvbusa/encore/tv/HistoryItem;

    const-string v10, ""

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/tvbusa/encore/tv/HistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v5, "item":Lcom/tvbusa/encore/tv/HistoryItem;
    iget-object v6, p0, Lcom/tvbusa/encore/tv/HistoryFragment$1;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    iget-object v6, v6, Lcom/tvbusa/encore/tv/HistoryFragment;->historyList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    if-ne v2, v3, :cond_0

    .line 120
    iget-object v6, p0, Lcom/tvbusa/encore/tv/HistoryFragment$1;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v10, Lcom/tvbusa/encore/tv/HistoryFragment$1$1;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/tv/HistoryFragment$1$1;-><init>(Lcom/tvbusa/encore/tv/HistoryFragment$1;)V

    invoke-virtual {v6, v10}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    nop

    .end local v3    # "lastItem":I
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "item":Lcom/tvbusa/encore/tv/HistoryItem;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "parent":Ljava/lang/String;
    .end local v9    # "pid":Ljava/lang/String;
    .end local v11    # "banner":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 128
    goto :goto_0

    .line 129
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "count":I
    :cond_1
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

    .line 130
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
