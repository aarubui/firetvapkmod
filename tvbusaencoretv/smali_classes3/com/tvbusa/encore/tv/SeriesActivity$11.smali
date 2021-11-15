.class Lcom/tvbusa/encore/tv/SeriesActivity$11;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Lcom/brightcove/player/edge/PlaylistListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 512
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 513
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/tvbusa/encore/tv/SeriesActivity$11$1;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$11$1;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity$11;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    return-void
.end method

.method public onPlaylist(Lcom/brightcove/player/model/Playlist;)V
    .locals 12
    .param p1, "playlist"    # Lcom/brightcove/player/model/Playlist;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playlist"
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 471
    :try_start_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brightcove/player/model/Video;

    .line 472
    .local v1, "video":Lcom/brightcove/player/model/Video;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 473
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "customFields"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 475
    .local v3, "fields":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lcom/brightcove/player/model/Video;->getName()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/brightcove/player/model/Video;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "description":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/brightcove/player/model/Video;->getPosterImage()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "thumbnail":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/brightcove/player/model/Video;->getId()Ljava/lang/String;

    move-result-object v7

    .line 480
    .local v7, "id":Ljava/lang/String;
    new-instance v8, Lcom/tvbusa/encore/tv/Episode;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/tvbusa/encore/tv/Episode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v8, "episode":Lcom/tvbusa/encore/tv/Episode;
    iget-object v9, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v9, v9, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getCount()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_0

    .line 484
    iget-object v9, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v9, v9, Lcom/tvbusa/encore/tv/SeriesActivity;->playButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    iget-object v9, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v9}, Lcom/tvbusa/encore/tv/SeriesActivity;->checkAllHistory()V

    .line 488
    :cond_0
    const-string v9, "Series"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "count - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; size - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/brightcove/player/model/Playlist;->getCount()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    nop

    .end local v1    # "video":Lcom/brightcove/player/model/Video;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "fields":Lorg/json/JSONObject;
    .end local v8    # "episode":Lcom/tvbusa/encore/tv/Episode;
    add-int/lit8 v0, v0, 0x1

    .line 493
    goto/16 :goto_0

    .line 491
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "thumbnail":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 493
    .end local v1    # "e":Lorg/json/JSONException;
    goto/16 :goto_0

    .line 498
    :cond_1
    new-instance v1, Lcom/tvbusa/encore/tv/EpisodeFragment;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/EpisodeFragment;-><init>()V

    .line 499
    .local v1, "episodeFragment":Lcom/tvbusa/encore/tv/EpisodeFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v2, "arguments":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    const-string v4, "pid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    check-cast v3, Ljava/io/Serializable;

    const-string v4, "episodes"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 502
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    const-string v4, "secondary_title"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    const-string v4, "banner"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/EpisodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 506
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity$11;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0b014e

    const-string v5, "BrowseFragment"

    invoke-virtual {v3, v4, v1, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 508
    return-void
.end method
