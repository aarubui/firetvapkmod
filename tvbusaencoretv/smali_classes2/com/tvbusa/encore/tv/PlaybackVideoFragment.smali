.class public Lcom/tvbusa/encore/tv/PlaybackVideoFragment;
.super Landroidx/leanback/app/VideoSupportFragment;
.source "PlaybackVideoFragment.java"


# instance fields
.field private mTransportControlGlue:Landroidx/leanback/media/PlaybackTransportControlGlue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/leanback/media/PlaybackTransportControlGlue<",
            "Landroidx/leanback/media/MediaPlayerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/leanback/app/VideoSupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroidx/leanback/app/VideoSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Movie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/Movie;

    .line 40
    .local v0, "movie":Lcom/tvbusa/encore/tv/Movie;
    new-instance v1, Landroidx/leanback/app/VideoSupportFragmentGlueHost;

    invoke-direct {v1, p0}, Landroidx/leanback/app/VideoSupportFragmentGlueHost;-><init>(Landroidx/leanback/app/VideoSupportFragment;)V

    .line 43
    .local v1, "glueHost":Landroidx/leanback/app/VideoSupportFragmentGlueHost;
    new-instance v2, Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/media/MediaPlayerAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, "playerAdapter":Landroidx/leanback/media/MediaPlayerAdapter;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/leanback/media/MediaPlayerAdapter;->setRepeatAction(I)V

    .line 46
    new-instance v3, Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/leanback/media/PlaybackTransportControlGlue;-><init>(Landroid/content/Context;Landroidx/leanback/media/PlayerAdapter;)V

    iput-object v3, p0, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->mTransportControlGlue:Landroidx/leanback/media/PlaybackTransportControlGlue;

    .line 47
    iget-object v3, p0, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->mTransportControlGlue:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v3, v1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->setHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    .line 48
    iget-object v3, p0, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->mTransportControlGlue:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Movie;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/leanback/media/PlaybackTransportControlGlue;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, p0, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->mTransportControlGlue:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Movie;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/leanback/media/PlaybackTransportControlGlue;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v3, p0, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->mTransportControlGlue:Landroidx/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v3}, Landroidx/leanback/media/PlaybackTransportControlGlue;->playWhenPrepared()V

    .line 51
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Movie;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/media/MediaPlayerAdapter;->setDataSource(Landroid/net/Uri;)Z

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroidx/leanback/app/VideoSupportFragment;->onPause()V

    .line 57
    iget-object v0, p0, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;->mTransportControlGlue:Landroidx/leanback/media/PlaybackTransportControlGlue;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->pause()V

    .line 60
    :cond_0
    return-void
.end method
