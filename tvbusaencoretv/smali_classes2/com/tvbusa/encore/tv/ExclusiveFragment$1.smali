.class Lcom/tvbusa/encore/tv/ExclusiveFragment$1;
.super Ljava/lang/Object;
.source "ExclusiveFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/ExclusiveFragment;->parseExclusive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/ExclusiveFragment;

    .line 91
    iput-object p1, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$1;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 93
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "json":Ljava/lang/String;
    const-string v1, "Login JSON"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 103
    .local v2, "count":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 104
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 105
    .local v3, "lastItem":I
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 106
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "n"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "title":Ljava/lang/String;
    const-string v5, "i"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "thumb":Ljava/lang/String;
    const-string v5, "pid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "id":Ljava/lang/String;
    const-string v5, "d"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "status":Ljava/lang/String;
    new-instance v5, Lcom/tvbusa/encore/tv/Series;

    const-string v11, ""

    const-string v12, ""

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/tvbusa/encore/tv/Series;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v5, "drama":Lcom/tvbusa/encore/tv/Series;
    iget-object v6, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$1;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    iget-object v6, v6, Lcom/tvbusa/encore/tv/ExclusiveFragment;->dramaList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v6, "Exclusive"

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/Series;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-ne v2, v3, :cond_0

    .line 114
    iget-object v6, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$1;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v11, Lcom/tvbusa/encore/tv/ExclusiveFragment$1$1;

    invoke-direct {v11, p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment$1$1;-><init>(Lcom/tvbusa/encore/tv/ExclusiveFragment$1;)V

    invoke-virtual {v6, v11}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    nop

    .end local v3    # "lastItem":I
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "drama":Lcom/tvbusa/encore/tv/Series;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "status":Ljava/lang/String;
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "thumb":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 122
    goto :goto_0

    .line 125
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "count":I
    :cond_1
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
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

    .line 126
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
