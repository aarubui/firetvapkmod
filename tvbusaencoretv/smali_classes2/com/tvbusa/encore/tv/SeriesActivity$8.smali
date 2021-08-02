.class Lcom/tvbusa/encore/tv/SeriesActivity$8;
.super Lcom/brightcove/player/edge/PlaylistListener;
.source "SeriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity;->requestBCOV(Ljava/lang/String;)V
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

    .line 412
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Lcom/brightcove/player/edge/PlaylistListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .line 458
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 459
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/tvbusa/encore/tv/SeriesActivity$8$1;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$8$1;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity$8;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    return-void
.end method

.method public onPlaylist(Lcom/brightcove/player/model/Playlist;)V
    .locals 13
    .param p1, "playlist"    # Lcom/brightcove/player/model/Playlist;

    .line 416
    const-string v0, " "

    const/4 v1, 0x0

    .line 417
    .local v1, "count":I
    :goto_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 419
    :try_start_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brightcove/player/model/Video;

    .line 420
    .local v2, "video":Lcom/brightcove/player/model/Video;
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 421
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "customFields"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 422
    .local v4, "fields":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "description":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/brightcove/player/model/Video;->getThumbnail()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "thumbnail":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/brightcove/player/model/Video;->getId()Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, "id":Ljava/lang/String;
    new-instance v9, Lcom/tvbusa/encore/tv/Episode;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/tvbusa/encore/tv/Episode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v9, "episode":Lcom/tvbusa/encore/tv/Episode;
    iget-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v10, v10, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_0

    .line 430
    iget-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v10, v10, Lcom/tvbusa/encore/tv/SeriesActivity;->playButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 432
    iget-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v10}, Lcom/tvbusa/encore/tv/SeriesActivity;->checkAllHistory()V

    .line 434
    :cond_0
    const-string v10, "Series"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "count - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "; size - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getCount()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    nop

    .end local v2    # "video":Lcom/brightcove/player/model/Video;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "fields":Lorg/json/JSONObject;
    .end local v9    # "episode":Lcom/tvbusa/encore/tv/Episode;
    add-int/lit8 v1, v1, 0x1

    .line 439
    goto/16 :goto_0

    .line 437
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "description":Ljava/lang/String;
    .end local v7    # "thumbnail":Ljava/lang/String;
    .end local v8    # "id":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 438
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 439
    .end local v2    # "e":Lorg/json/JSONException;
    goto/16 :goto_0

    .line 444
    :cond_1
    new-instance v0, Lcom/tvbusa/encore/tv/EpisodeFragment;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/EpisodeFragment;-><init>()V

    .line 445
    .local v0, "episodeFragment":Lcom/tvbusa/encore/tv/EpisodeFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v2, "arguments":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    const-string v4, "pid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    check-cast v3, Ljava/io/Serializable;

    const-string v4, "episodes"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 448
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    const-string v4, "secondary_title"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    const-string v4, "banner"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, v2}, Lcom/tvbusa/encore/tv/EpisodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 452
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0a00fa

    const-string v5, "BrowseFragment"

    invoke-virtual {v3, v4, v0, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 454
    return-void
.end method
