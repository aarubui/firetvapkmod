.class Lcom/tvbusa/encore/tv/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/LoginActivity;->signIn(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/LoginActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/LoginActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/LoginActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LoginActivity$3;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    iput-object p2, p0, Lcom/tvbusa/encore/tv/LoginActivity$3;->val$dialog:Landroid/app/ProgressDialog;

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

    .line 100
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9
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

    .line 104
    const-string v0, "token"

    const-string v1, "uid"

    iget-object v2, p0, Lcom/tvbusa/encore/tv/LoginActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 107
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "json":Ljava/lang/String;
    const-string v3, "Login JSON"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "uid":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "token":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 113
    iget-object v6, p0, Lcom/tvbusa/encore/tv/LoginActivity$3;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "UserProfile"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 114
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 115
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v7, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LoginActivity$3;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/LoginActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "uid":Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    goto :goto_0

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

    .line 125
    iget-object v1, p0, Lcom/tvbusa/encore/tv/LoginActivity$3;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    new-instance v2, Lcom/tvbusa/encore/tv/LoginActivity$3$1;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/LoginActivity$3$1;-><init>(Lcom/tvbusa/encore/tv/LoginActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
