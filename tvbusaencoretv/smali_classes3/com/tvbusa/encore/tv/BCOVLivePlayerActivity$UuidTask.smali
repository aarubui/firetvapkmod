.class public Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;
.super Landroid/os/AsyncTask;
.source "BCOVLivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UuidTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
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

    .line 180
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "limit_ad_tracking"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 191
    .local v1, "limitAdTracking":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 192
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    const-string v3, ""

    iput-object v3, v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->advertisingID:Ljava/lang/String;

    goto :goto_1

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->advertisingID:Ljava/lang/String;

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget-object v2, v2, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->advertisingID:Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 198
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "limitAdTracking":Z
    :catch_0
    move-exception v0

    .line 203
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->advertisingID:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 207
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$UuidTask;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-virtual {v0, p1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->playThisChannel(Ljava/lang/String;)V

    .line 209
    const-string v0, "ChannelDebug"

    const-string v1, "Done UUID Task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method
