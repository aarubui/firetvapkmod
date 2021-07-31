.class public Lcom/tvbusa/encore/tv/HistoryFragment;
.super Landroidx/leanback/app/VerticalGridSupportFragment;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;,
        Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;
    }
.end annotation


# instance fields
.field client:Lokhttp3/OkHttpClient;

.field historyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/HistoryFragment;->name:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/HistoryFragment;->historyList:Ljava/util/List;

    .line 52
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/HistoryActivityPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/HistoryActivityPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/HistoryFragment;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 54
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/HistoryFragment;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/HistoryFragment;

    .line 48
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/HistoryFragment;->setupFragment()V

    return-void
.end method

.method private setupFragment()V
    .locals 3

    .line 133
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Lcom/tvbusa/encore/tv/HistoryActivityPresenter;

    invoke-direct {v1}, Lcom/tvbusa/encore/tv/HistoryActivityPresenter;-><init>()V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 134
    .local v0, "mAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/HistoryFragment;->historyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/tvbusa/encore/tv/HistoryFragment;->historyList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/HistoryFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 138
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

    .line 58
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/HistoryFragment;Lcom/tvbusa/encore/tv/HistoryFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/HistoryFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 60
    new-instance v0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/HistoryFragment;Lcom/tvbusa/encore/tv/HistoryFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/HistoryFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 62
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

    .line 71
    invoke-super {p0, p1}, Landroidx/leanback/app/VerticalGridSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "Exclusive"

    const-string v1, "Parse DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/HistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/HistoryFragment;->name:Ljava/lang/String;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/HistoryFragment;->parseHistory()V

    .line 81
    new-instance v1, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>()V

    .line 82
    .local v1, "gridPresenter":Landroidx/leanback/widget/VerticalGridPresenter;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/HistoryFragment;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;->onPause()V

    .line 67
    return-void
.end method

.method public parseHistory()V
    .locals 10

    .line 87
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "UserProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "token":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvGetHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 92
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"t\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "params":Ljava/lang/String;
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 94
    .local v6, "body":Lokhttp3/RequestBody;
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v7, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v7, "POST"

    invoke-virtual {v3, v7, v6}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 96
    .local v3, "request":Lokhttp3/Request;
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 97
    .local v7, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v7, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/HistoryFragment$1;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/HistoryFragment$1;-><init>(Lcom/tvbusa/encore/tv/HistoryFragment;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 130
    return-void
.end method
