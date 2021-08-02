.class public Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;
.super Landroid/os/AsyncTask;
.source "SeriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/SeriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgramTask"
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
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SeriesActivity;


# direct methods
.method public constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 330
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 335
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 336
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v2, v2, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 338
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 339
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .local v4, "res":Ljava/lang/String;
    return-object v4

    .line 341
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 347
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v0, p1}, Lcom/tvbusa/encore/tv/SeriesActivity;->requestContent(Ljava/lang/String;)V

    .line 349
    return-void
.end method
