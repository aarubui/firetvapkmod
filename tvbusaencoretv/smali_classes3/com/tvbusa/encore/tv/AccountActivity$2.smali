.class Lcom/tvbusa/encore/tv/AccountActivity$2;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/AccountActivity;->parseAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/AccountActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/AccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/AccountActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/tvbusa/encore/tv/AccountActivity$2;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

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

    .line 77
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
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

    .line 82
    const-string v0, ""

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "json":Ljava/lang/String;
    const-string v2, "Login JSON"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "g"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "gender":Ljava/lang/String;
    const-string v4, "e"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "email":Ljava/lang/String;
    const-string v5, "n"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "nickname":Ljava/lang/String;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/AccountActivity$2;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    new-instance v6, Lcom/tvbusa/encore/tv/AccountActivity$2$1;

    invoke-direct {v6, p0, v3, v4, v0}, Lcom/tvbusa/encore/tv/AccountActivity$2$1;-><init>(Lcom/tvbusa/encore/tv/AccountActivity$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/tvbusa/encore/tv/AccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "nickname":Ljava/lang/String;
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "gender":Ljava/lang/String;
    .end local v4    # "email":Ljava/lang/String;
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

    .line 100
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
