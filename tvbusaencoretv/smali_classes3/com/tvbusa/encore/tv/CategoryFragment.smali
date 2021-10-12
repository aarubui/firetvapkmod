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

.field userRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->json:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->key:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    .line 46
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;

    invoke-direct {v2}, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;-><init>()V

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 48
    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->userRegion:Ljava/lang/String;

    return-void
.end method

.method private setupFragment()V
    .locals 3

    .line 115
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 116
    .local v0, "mAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 120
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

    .line 52
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/CategoryFragment;Lcom/tvbusa/encore/tv/CategoryFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 54
    new-instance v0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewClickedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/CategoryFragment;Lcom/tvbusa/encore/tv/CategoryFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 55
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

    .line 64
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/CategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->json:Ljava/lang/String;

    .line 68
    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->key:Ljava/lang/String;

    .line 69
    const-string v1, "userRegion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->userRegion:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Region - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->userRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/tvbusa/encore/tv/CategoryFragment;->json:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment;->parseLayout(Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v1, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>()V

    .line 76
    .local v1, "gridPresenter":Landroidx/leanback/widget/VerticalGridPresenter;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/CategoryFragment;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 78
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;->onPause()V

    .line 60
    return-void
.end method

.method public parseLayout(Ljava/lang/String;)V
    .locals 20
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 83
    move-object/from16 v1, p0

    const-string v0, "n"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "contentObject":Lorg/json/JSONObject;
    iget-object v4, v1, Lcom/tvbusa/encore/tv/CategoryFragment;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 85
    .local v4, "categoryLayout":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 86
    .local v5, "count":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 87
    .local v6, "lastItem":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 88
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 89
    .local v8, "jObject":Lorg/json/JSONObject;
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "viet":Ljava/lang/String;
    const-string v10, "pid"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "id":Ljava/lang/String;
    const-string v10, "p"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 93
    .local v15, "thumb":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{\"bucket\":\"tvbaw-na\",\"key\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\",\"edits\":{\"resize\": {\"width\":315,\"height\":450,\"fit\":\"cover\"} }}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 94
    .local v17, "posterBody":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://img.tvbaw.com/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v14, 0x2

    invoke-static {v11, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, "encodedPoster":Ljava/lang/String;
    const-string v16, ""

    .line 97
    .local v16, "info":Ljava/lang/String;
    iget-object v10, v1, Lcom/tvbusa/encore/tv/CategoryFragment;->userRegion:Ljava/lang/String;

    const-string v11, "CA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "bc"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v7, :cond_1

    :cond_0
    iget-object v10, v1, Lcom/tvbusa/encore/tv/CategoryFragment;->userRegion:Ljava/lang/String;

    const-string v11, "US"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "bu"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v7, :cond_2

    .line 98
    :cond_1
    const-string v10, "Category"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Block - "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v15

    goto :goto_1

    .line 100
    :cond_2
    new-instance v7, Lcom/tvbusa/encore/tv/Series;

    const-string v18, ""

    move-object v10, v7

    move-object v11, v9

    move-object/from16 v19, v15

    .end local v15    # "thumb":Ljava/lang/String;
    .local v19, "thumb":Ljava/lang/String;
    move-object/from16 v15, v18

    invoke-direct/range {v10 .. v16}, Lcom/tvbusa/encore/tv/Series;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v7, "drama":Lcom/tvbusa/encore/tv/Series;
    iget-object v10, v1, Lcom/tvbusa/encore/tv/CategoryFragment;->dramaList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v7    # "drama":Lcom/tvbusa/encore/tv/Series;
    :goto_1
    if-ne v5, v6, :cond_3

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/tvbusa/encore/tv/CategoryFragment;->setupFragment()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :cond_3
    nop

    .end local v8    # "jObject":Lorg/json/JSONObject;
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "viet":Ljava/lang/String;
    .end local v13    # "id":Ljava/lang/String;
    .end local v14    # "encodedPoster":Ljava/lang/String;
    .end local v16    # "info":Ljava/lang/String;
    .end local v17    # "posterBody":Ljava/lang/String;
    .end local v19    # "thumb":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 108
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 111
    .end local v2    # "contentObject":Lorg/json/JSONObject;
    .end local v4    # "categoryLayout":Lorg/json/JSONArray;
    .end local v5    # "count":I
    .end local v6    # "lastItem":I
    :cond_4
    goto :goto_3

    .line 109
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method
