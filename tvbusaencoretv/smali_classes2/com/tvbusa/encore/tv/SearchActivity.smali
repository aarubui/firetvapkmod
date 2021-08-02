.class public Lcom/tvbusa/encore/tv/SearchActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;
    }
.end annotation


# instance fields
.field contentArray:Lorg/json/JSONArray;

.field contentObject:Lorg/json/JSONObject;

.field key:Ljava/lang/String;

.field mApp:Lcom/tvbusa/encore/tv/MainApplication;

.field name:Ljava/lang/String;

.field resultIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/SearchSeries;",
            ">;"
        }
    .end annotation
.end field

.field searchInput:Landroid/widget/EditText;

.field seriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/SearchSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->name:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->key:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->seriesList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultIdList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SearchActivity;

    .line 34
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/SearchActivity;->searchContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/SearchActivity;->parseSearchJson(Ljava/lang/String;)V

    return-void
.end method

.method private parseSearchJson(Ljava/lang/String;)V
    .locals 11
    .param p1, "searchJson"    # Ljava/lang/String;

    .line 126
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->contentObject:Lorg/json/JSONObject;

    .line 127
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->contentObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SearchActivity;->contentObject:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/SearchActivity;->contentArray:Lorg/json/JSONArray;

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "category":I
    const-string v2, "Search"

    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchActivity;->contentArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SearchActivity;->contentArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SearchActivity;->contentArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 134
    .local v2, "cObject":Lorg/json/JSONObject;
    const v3, 0x7f11005b

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/tv/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f110139

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/tv/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "eng":Ljava/lang/String;
    const-string v4, "thumb"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "thumb":Ljava/lang/String;
    const-string v4, "pid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "id":Ljava/lang/String;
    const-string v4, "keyword"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "keyword":Ljava/lang/String;
    new-instance v10, Lcom/tvbusa/encore/tv/SearchSeries;

    move-object v4, v10

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/tvbusa/encore/tv/SearchSeries;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    .line 140
    .local v4, "searchSeries":Lcom/tvbusa/encore/tv/SearchSeries;
    const-string v5, "Initial Search"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v5, p0, Lcom/tvbusa/encore/tv/SearchActivity;->seriesList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .end local v2    # "cObject":Lorg/json/JSONObject;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "searchSeries":Lcom/tvbusa/encore/tv/SearchSeries;
    .end local v6    # "eng":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "thumb":Ljava/lang/String;
    .end local v9    # "keyword":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 143
    goto :goto_1

    .line 144
    .end local v1    # "category":I
    :cond_0
    goto :goto_0

    .line 147
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    goto :goto_2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private searchContent()V
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "searchCount":I
    :goto_0
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SearchActivity;->seriesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SearchActivity;->seriesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/SearchSeries;

    .line 96
    .local v1, "checkDrama":Lcom/tvbusa/encore/tv/SearchSeries;
    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SearchSeries;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "keyword":Ljava/lang/String;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "q":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultIdList:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SearchSeries;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Search Result"

    if-eqz v4, :cond_0

    .line 100
    const-string v4, "Duplicate"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :cond_0
    const-string v4, "Should Add"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v4, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultIdList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SearchSeries;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    :goto_1
    nop

    .end local v1    # "checkDrama":Lcom/tvbusa/encore/tv/SearchSeries;
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "q":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    new-instance v1, Lcom/tvbusa/encore/tv/SearchFragment;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/SearchFragment;-><init>()V

    .line 118
    .local v1, "searchFragment":Lcom/tvbusa/encore/tv/SearchFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v2, "arguments":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchActivity;->resultList:Ljava/util/List;

    check-cast v3, Ljava/io/Serializable;

    const-string v4, "result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 120
    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0a00fa

    const-string v5, "BrowseFragment"

    invoke-virtual {v3, v4, v1, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 122
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchActivity;->setContentView(I)V

    .line 50
    new-instance v0, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;

    invoke-direct {v0, p0}, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;-><init>(Lcom/tvbusa/encore/tv/SearchActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SearchActivity$ContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->searchInput:Landroid/widget/EditText;

    .line 53
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    .line 56
    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "searchBtn":Landroid/widget/Button;
    new-instance v1, Lcom/tvbusa/encore/tv/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/SearchActivity$1;-><init>(Lcom/tvbusa/encore/tv/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
