.class public Lcom/tvbusa/encore/tv/EpisodeFragment;
.super Landroidx/leanback/app/BrowseSupportFragment;
.source "EpisodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final GRID_ITEM_HEIGHT:I = 0x10e

.field private static final GRID_ITEM_WIDTH:I = 0x1e0


# instance fields
.field banner:Ljava/lang/String;

.field episodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Episode;",
            ">;"
        }
    .end annotation
.end field

.field idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isUpdating:Ljava/lang/Boolean;

.field legacy_id:Ljava/lang/String;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field pid:Ljava/lang/String;

.field playlist_id:Ljava/lang/String;

.field rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field secondary_title:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->episodeList:Ljava/util/List;

    .line 34
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->idList:Ljava/util/List;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->title:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->pid:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->secondary_title:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->legacy_id:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->playlist_id:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->isUpdating:Ljava/lang/Boolean;

    .line 43
    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->banner:Ljava/lang/String;

    return-void
.end method

.method private loadRows()V
    .locals 6

    .line 104
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 105
    new-instance v0, Lcom/tvbusa/encore/tv/EpisodePresenter;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/EpisodePresenter;-><init>()V

    .line 108
    .local v0, "episodePresenter":Lcom/tvbusa/encore/tv/EpisodePresenter;
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 109
    .local v1, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->episodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->idList:Ljava/util/List;

    iget-object v4, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->episodeList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->episodeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const-wide/16 v3, 0x0

    const-string v5, "\u96c6\u6578"

    invoke-direct {v2, v3, v4, v5}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 114
    .local v2, "header":Landroidx/leanback/widget/HeaderItem;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v4, Landroidx/leanback/widget/ListRow;

    invoke-direct {v4, v2, v1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a0199

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 117
    .local v3, "loadingFrame":Landroid/widget/FrameLayout;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 119
    iget-object v4, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/tv/EpisodeFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->workaroundFocus()V

    .line 62
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->loadRows()V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->setHeadersState(I)V

    .line 49
    new-instance v0, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/EpisodeFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/EpisodeFragment;Lcom/tvbusa/encore/tv/EpisodeFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "episodes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->episodeList:Ljava/util/List;

    .line 53
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->pid:Ljava/lang/String;

    .line 54
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->title:Ljava/lang/String;

    .line 55
    const-string v1, "banner"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->banner:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 89
    .local v1, "containerDock":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 91
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 92
    .local v4, "newHeaderMargin":I
    const v6, 0x7f0700cc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    .line 93
    .local v6, "offsetToZero":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, -0x3e100000    # -30.0f

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 94
    .local v5, "newLeftMargin":I
    add-int v7, v6, v4

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 95
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-object v0
.end method

.method public startPlayerActivity(I)V
    .locals 4
    .param p1, "selectedIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedIndex"
        }
    .end annotation

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "playerIntent":Landroid/content/Intent;
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->playlist_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->isUpdating:Ljava/lang/Boolean;

    const-string v2, "isUpdating"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->title:Ljava/lang/String;

    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->secondary_title:Ljava/lang/String;

    const-string v2, "secondaryTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->episodeList:Ljava/util/List;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "episodes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment;->legacy_id:Ljava/lang/String;

    const-string v2, "legacy_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public workaroundFocus()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/BrowseFrameLayout;

    .line 70
    .local v0, "browseFrameLayout":Landroidx/leanback/widget/BrowseFrameLayout;
    new-instance v1, Lcom/tvbusa/encore/tv/EpisodeFragment$1;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/EpisodeFragment$1;-><init>(Lcom/tvbusa/encore/tv/EpisodeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 82
    .end local v0    # "browseFrameLayout":Landroidx/leanback/widget/BrowseFrameLayout;
    :cond_0
    return-void
.end method
