.class public Lcom/tvbusa/encore/tv/SearchFragment;
.super Landroidx/leanback/app/BrowseSupportFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;
    }
.end annotation


# instance fields
.field idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/SearchSeries;",
            ">;"
        }
    .end annotation
.end field

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchFragment;->searchList:Ljava/util/List;

    .line 31
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchFragment;->idList:Ljava/util/List;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchFragment;->title:Ljava/lang/String;

    return-void
.end method

.method private loadRows()V
    .locals 6

    .line 92
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 93
    new-instance v0, Lcom/tvbusa/encore/tv/SearchSeriesPresenter;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/SearchSeriesPresenter;-><init>()V

    .line 96
    .local v0, "seriesPresenter":Lcom/tvbusa/encore/tv/SearchSeriesPresenter;
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 97
    .local v1, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchFragment;->searchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchFragment;->idList:Ljava/util/List;

    iget-object v4, p0, Lcom/tvbusa/encore/tv/SearchFragment;->searchList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tvbusa/encore/tv/SearchSeries;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/SearchSeries;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchFragment;->searchList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const-wide/16 v3, 0x0

    const-string v5, "  "

    invoke-direct {v2, v3, v4, v5}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 102
    .local v2, "header":Landroidx/leanback/widget/HeaderItem;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v4, Landroidx/leanback/widget/ListRow;

    invoke-direct {v4, v2, v1}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 107
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchFragment;->rowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/tv/SearchFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 108
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

    .line 49
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchFragment;->workaroundFocus()V

    .line 50
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/SearchFragment;->loadRows()V

    .line 52
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

    .line 38
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchFragment;->setHeadersState(I)V

    .line 40
    new-instance v0, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/SearchFragment;Lcom/tvbusa/encore/tv/SearchFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/SearchFragment;->searchList:Ljava/util/List;

    .line 45
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

    .line 75
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 77
    .local v1, "containerDock":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 78
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 79
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 80
    .local v4, "newHeaderMargin":I
    const v6, 0x7f0700cc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    .line 81
    .local v6, "offsetToZero":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, -0x3e100000    # -30.0f

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 82
    .local v5, "newLeftMargin":I
    add-int v7, v6, v4

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 83
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-object v0
.end method

.method public workaroundFocus()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/BrowseFrameLayout;

    .line 58
    .local v0, "browseFrameLayout":Landroidx/leanback/widget/BrowseFrameLayout;
    new-instance v1, Lcom/tvbusa/encore/tv/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/SearchFragment$1;-><init>(Lcom/tvbusa/encore/tv/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 70
    .end local v0    # "browseFrameLayout":Landroidx/leanback/widget/BrowseFrameLayout;
    :cond_0
    return-void
.end method
