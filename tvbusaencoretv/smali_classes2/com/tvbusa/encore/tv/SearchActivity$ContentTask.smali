.class public Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;
.super Landroid/os/AsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentTask"
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
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/tvbusa/encore/tv/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SearchActivity;

    .line 66
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;->this$0:Lcom/tvbusa/encore/tv/SearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 71
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 72
    .local v0, "client":Lokhttp3/OkHttpClient;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;->this$0:Lcom/tvbusa/encore/tv/SearchActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 74
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 75
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .local v4, "res":Ljava/lang/String;
    return-object v4

    .line 77
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 83
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;->this$0:Lcom/tvbusa/encore/tv/SearchActivity;

    invoke-static {v0, p1}, Lcom/tvbusa/encore/tv/SearchActivity;->access$100(Lcom/tvbusa/encore/tv/SearchActivity;Ljava/lang/String;)V

    .line 85
    return-void
.end method
