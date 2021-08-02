.class public Lcom/tvbusa/encore/tv/ExclusiveFragment;
.super Landroidx/leanback/app/VerticalGridSupportFragment;
.source "ExclusiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;,
        Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;
    }
.end annotation


# instance fields
.field client:Lokhttp3/OkHttpClient;

.field dramaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Series;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->name:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->dramaList:Ljava/util/List;

    .line 51
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 53
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/ExclusiveFragment;

    .line 47
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->setupFragment()V

    return-void
.end method

.method private setupFragment()V
    .locals 3

    .line 209
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/CategorySeriesPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 210
    .local v0, "mAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->dramaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->dramaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;Lcom/tvbusa/encore/tv/ExclusiveFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 59
    new-instance v0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;Lcom/tvbusa/encore/tv/ExclusiveFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "Exclusive"

    const-string v1, "Parse DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 75
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->name:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->name:Ljava/lang/String;

    const-string v2, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->parseFav()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->parseExclusive()V

    .line 79
    :cond_1
    :goto_0
    new-instance v1, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>()V

    .line 80
    .local v1, "gridPresenter":Landroidx/leanback/widget/VerticalGridPresenter;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 82
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;->onPause()V

    .line 66
    return-void
.end method

.method public parseExclusive()V
    .locals 7

    .line 85
    const-string v0, "Exclusive"

    const-string v1, "Run DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getExclusive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "url":Ljava/lang/String;
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 88
    .local v1, "JSON":Lokhttp3/MediaType;
    const-string v2, "{}"

    .line 89
    .local v2, "params":Ljava/lang/String;
    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 90
    .local v3, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 91
    .local v4, "request":Lokhttp3/Request;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/tvbusa/encore/tv/ExclusiveFragment$1;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment$1;-><init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 128
    return-void
.end method

.method public parseFav()V
    .locals 11

    .line 132
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "UserProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "token":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run DB - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Exclusive"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fireTvGetFav"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "url":Ljava/lang/String;
    const-string v5, "application/json"

    invoke-static {v5}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    .line 137
    .local v6, "JSON":Lokhttp3/MediaType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"t\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "params":Ljava/lang/String;
    invoke-static {v6, v7}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v8

    .line 139
    .local v8, "body":Lokhttp3/RequestBody;
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v9, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    const-string v10, "Content-Type"

    invoke-virtual {v9, v10, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    const-string v9, "POST"

    invoke-virtual {v5, v9, v8}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 141
    .local v5, "request":Lokhttp3/Request;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/tvbusa/encore/tv/ExclusiveFragment$2;

    invoke-direct {v4, p0}, Lcom/tvbusa/encore/tv/ExclusiveFragment$2;-><init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V

    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 206
    return-void
.end method
