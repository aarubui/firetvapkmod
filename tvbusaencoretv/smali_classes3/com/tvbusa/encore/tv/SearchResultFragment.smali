.class public Lcom/tvbusa/encore/tv/SearchResultFragment;
.super Landroidx/leanback/app/VerticalGridSupportFragment;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;,
        Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewClickedListener;
    }
.end annotation


# instance fields
.field searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Series;",
            ">;"
        }
    .end annotation
.end field

.field userRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultFragment;->searchList:Ljava/util/List;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultFragment;->userRegion:Ljava/lang/String;

    return-void
.end method

.method private setupFragment()V
    .locals 3

    .line 77
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 78
    .local v0, "mAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SearchResultFragment;->searchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SearchResultFragment;->searchList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchResultFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
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
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewClickedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/SearchResultFragment;Lcom/tvbusa/encore/tv/SearchResultFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchResultFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 49
    new-instance v0, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/SearchResultFragment;Lcom/tvbusa/encore/tv/SearchResultFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchResultFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 63
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/SearchResultFragment;->searchList:Ljava/util/List;

    .line 64
    const-string v1, "userRegion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/SearchResultFragment;->userRegion:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search Result - Region - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SearchResultFragment;->userRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/SearchResultFragment;->setupFragment()V

    .line 69
    :cond_0
    new-instance v1, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>()V

    .line 70
    .local v1, "gridPresenter":Landroidx/leanback/widget/VerticalGridPresenter;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/SearchResultFragment;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;->onPause()V

    .line 55
    return-void
.end method
