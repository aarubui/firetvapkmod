.class public Lcom/tvbusa/encore/tv/CategoryFragment;
.super Landroidx/leanback/app/VerticalGridSupportFragment;
.source "CategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewClickedListener;,
        Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;
    }
.end annotation


# instance fields
.field dramaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Series;",
            ">;"
        }
    .end annotation
.end field

.field json:Ljava/lang/String;

.field key:Ljava/lang/String;

.field mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->json:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->key:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    .line 43
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-void
.end method

.method private setupFragment()V
    .locals 3

    .line 102
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 103
    .local v0, "mAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/CategoryFragment;Lcom/tvbusa/encore/tv/CategoryFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 49
    new-instance v0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewClickedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/CategoryFragment;Lcom/tvbusa/encore/tv/CategoryFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/CategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->json:Ljava/lang/String;

    .line 65
    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->key:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->json:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment;->parseLayout(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v1, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>()V

    .line 70
    .local v1, "gridPresenter":Landroidx/leanback/widget/VerticalGridPresenter;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;->onPause()V

    .line 56
    return-void
.end method

.method public parseLayout(Ljava/lang/String;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/String;

    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "contentObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 79
    .local v1, "categoryLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 80
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 81
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 82
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 83
    .local v4, "jObject":Lorg/json/JSONObject;
    const v5, 0x7f11005b

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "name":Ljava/lang/String;
    const v5, 0x7f110139

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "viet":Ljava/lang/String;
    const-string v5, "pid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "id":Ljava/lang/String;
    const-string v5, "thumb"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "thumb":Ljava/lang/String;
    const-string v5, "banner"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "banner":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "year"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "genre"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, "info":Ljava/lang/String;
    new-instance v5, Lcom/tvbusa/encore/tv/Series;

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/tvbusa/encore/tv/Series;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v5, "drama":Lcom/tvbusa/encore/tv/Series;
    iget-object v6, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    if-ne v2, v3, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setupFragment()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    nop

    .end local v4    # "jObject":Lorg/json/JSONObject;
    .end local v5    # "drama":Lcom/tvbusa/encore/tv/Series;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "viet":Ljava/lang/String;
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "thumb":Ljava/lang/String;
    .end local v11    # "banner":Ljava/lang/String;
    .end local v12    # "info":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_0

    .line 98
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v1    # "categoryLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
