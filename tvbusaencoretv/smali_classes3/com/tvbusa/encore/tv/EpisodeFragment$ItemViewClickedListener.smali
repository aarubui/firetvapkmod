.class final Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "EpisodeFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/EpisodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/EpisodeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/EpisodeFragment;Lcom/tvbusa/encore/tv/EpisodeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/EpisodeFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/EpisodeFragment$1;

    .line 125
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/EpisodeFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 5
    .param p1, "itemViewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroidx/leanback/widget/Row;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/EpisodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p2

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    .line 133
    .local v1, "episode":Lcom/tvbusa/encore/tv/Episode;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    iget-object v2, v2, Lcom/tvbusa/encore/tv/EpisodeFragment;->idList:Ljava/util/List;

    move-object v3, p2

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 134
    .local v2, "position":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Position - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EpisodeFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object v3, p2

    check-cast v3, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/EpisodeFragment;->episodeList:Ljava/util/List;

    check-cast v3, Ljava/io/Serializable;

    const-string v4, "episodes"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    const-string v3, "selectedIndex"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/EpisodeFragment;->title:Ljava/lang/String;

    const-string v4, "parent"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/EpisodeFragment;->pid:Ljava/lang/String;

    const-string v4, "pid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v3, "hasHistory"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string v3, "historyTime"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    iget-object v3, v3, Lcom/tvbusa/encore/tv/EpisodeFragment;->banner:Ljava/lang/String;

    const-string v4, "banner"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    iget v3, v3, Lcom/tvbusa/encore/tv/EpisodeFragment;->adConfigType:I

    const-string v4, "adconfig"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    invoke-virtual {v3, v0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 125
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
