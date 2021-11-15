.class public Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;
.super Landroid/os/AsyncTask;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/CategoryActivity;
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
.field final synthetic this$0:Lcom/tvbusa/encore/tv/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/tvbusa/encore/tv/CategoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/CategoryActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/CategoryActivity;

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

    .line 56
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 62
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/CategoryActivity;

    iget-object v2, v2, Lcom/tvbusa/encore/tv/CategoryActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 63
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 64
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .local v3, "res":Ljava/lang/String;
    return-object v3

    .line 66
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "response":Lokhttp3/Response;
    .end local v3    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
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

    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/tvbusa/encore/tv/CategoryFragment;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/CategoryFragment;-><init>()V

    .line 76
    .local v0, "mainFragment":Lcom/tvbusa/encore/tv/CategoryFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v1, "arguments":Landroid/os/Bundle;
    const-string v2, "json"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/CategoryActivity;

    iget-object v2, v2, Lcom/tvbusa/encore/tv/CategoryActivity;->key:Ljava/lang/String;

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/CategoryActivity;

    iget-object v2, v2, Lcom/tvbusa/encore/tv/CategoryActivity;->userRegion:Ljava/lang/String;

    const-string v3, "userRegion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->this$0:Lcom/tvbusa/encore/tv/CategoryActivity;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/CategoryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0b014e

    const-string v4, "CategoryFragment"

    invoke-virtual {v2, v3, v0, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 83
    return-void
.end method
