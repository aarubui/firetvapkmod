.class public Lcom/tvbusa/encore/tv/SearchResultActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/SearchResultActivity$SearchTask;
    }
.end annotation


# instance fields
.field apiUrl:Ljava/lang/String;

.field contentArray:Lorg/json/JSONArray;

.field seriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Series;",
            ">;"
        }
    .end annotation
.end field

.field type:I

.field userRegion:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->type:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->apiUrl:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->value:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->seriesList:Ljava/util/List;

    .line 46
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->userRegion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/SearchResultActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SearchResultActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/SearchResultActivity;->parseSearchJson(Ljava/lang/String;)V

    return-void
.end method

.method private parseSearchJson(Ljava/lang/String;)V
    .locals 13
    .param p1, "searchJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchJson"
        }
    .end annotation

    .line 111
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->contentArray:Lorg/json/JSONArray;

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "category":I
    const-string v2, "Search"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->contentArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->contentArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    .local v0, "cObject":Lorg/json/JSONObject;
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "title":Ljava/lang/String;
    const-string v3, "poster"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 118
    .local v10, "poster":Ljava/lang/String;
    const-string v3, "pid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"bucket\":\"tvbaw-na\",\"key\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"edits\":{\"resize\": {\"width\":472,\"height\":675,\"fit\":\"cover\"} }}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 120
    .local v11, "bannerBody":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://img.tvbaw.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "encodedBanner":Ljava/lang/String;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->userRegion:Ljava/lang/String;

    const-string v4, "CA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "blockInCA"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->userRegion:Ljava/lang/String;

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "blockInUSA"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    :cond_1
    const-string v3, "Region"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    :cond_2
    new-instance v12, Lcom/tvbusa/encore/tv/Series;

    const-string v5, ""

    const-string v8, ""

    const-string v9, ""

    move-object v3, v12

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/tvbusa/encore/tv/Series;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v12

    .line 126
    .local v3, "s":Lcom/tvbusa/encore/tv/Series;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->seriesList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v3    # "s":Lcom/tvbusa/encore/tv/Series;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 131
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->contentArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/SearchResultActivity;->searchContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "cObject":Lorg/json/JSONObject;
    .end local v2    # "title":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "encodedBanner":Ljava/lang/String;
    .end local v10    # "poster":Ljava/lang/String;
    .end local v11    # "bannerBody":Ljava/lang/String;
    :cond_3
    goto/16 :goto_0

    .line 137
    .end local v1    # "category":I
    :cond_4
    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private searchContent()V
    .locals 5

    .line 100
    new-instance v0, Lcom/tvbusa/encore/tv/SearchResultFragment;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/SearchResultFragment;-><init>()V

    .line 101
    .local v0, "searchFragment":Lcom/tvbusa/encore/tv/SearchResultFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v1, "arguments":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->seriesList:Ljava/util/List;

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 103
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->userRegion:Ljava/lang/String;

    const-string v3, "userRegion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SearchResultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchResultActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a0130

    const-string v4, "SearchResultFragment"

    invoke-virtual {v2, v3, v0, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 107
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SearchResultActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 55
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->type:I

    .line 56
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->value:Ljava/lang/String;

    .line 59
    :cond_0
    const-string v2, "generalInfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/tvbusa/encore/tv/SearchResultActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 60
    .local v2, "generalInfo":Landroid/content/SharedPreferences;
    const-string v4, "userRegion"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->userRegion:Ljava/lang/String;

    .line 62
    const-string v4, ""

    .line 63
    .local v4, "typeWording":Ljava/lang/String;
    iget v5, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->type:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    const-string v4, "\u5206\u985e"

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->apiUrl:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_1
    const-string v4, "\u6f14\u54e1"

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->apiUrl:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v4, "\u5e74\u4efd"

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110168

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->apiUrl:Ljava/lang/String;

    .line 68
    :goto_0
    const v5, 0x7f0a024d

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 69
    .local v5, "searchTitleView":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u641c\u7d22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tvbusa/encore/tv/SearchResultActivity;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v6, Lcom/tvbusa/encore/tv/SearchResultActivity$SearchTask;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/SearchResultActivity$SearchTask;-><init>(Lcom/tvbusa/encore/tv/SearchResultActivity;)V

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/tvbusa/encore/tv/SearchResultActivity$SearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
