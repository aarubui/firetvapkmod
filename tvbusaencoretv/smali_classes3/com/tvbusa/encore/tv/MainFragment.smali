.class public Lcom/tvbusa/encore/tv/MainFragment;
.super Landroidx/leanback/app/BrowseSupportFragment;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;,
        Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;
    }
.end annotation


# instance fields
.field private bannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Series;",
            ">;"
        }
    .end annotation
.end field

.field private categoryKeyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private channelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/LiveChannel;",
            ">;"
        }
    .end annotation
.end field

.field private dramaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private entireList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private genreCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Category;",
            ">;"
        }
    .end annotation
.end field

.field private historyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field isCreateDone:Z

.field private json:Ljava/lang/String;

.field private memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Setting;",
            ">;"
        }
    .end annotation
.end field

.field private settingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Setting;",
            ">;"
        }
    .end annotation
.end field

.field sss:Ljava/lang/String;

.field private topBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/TopBannerSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->json:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->bannerList:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->topBannerList:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->isCreateDone:Z

    .line 84
    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;

    .line 63
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    return-void
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/tv/MainFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;

    .line 63
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    return-object v0
.end method

.method private loadRows()V
    .locals 18

    .line 349
    move-object/from16 v0, p0

    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v2}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 350
    .local v1, "rowsAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v2, Lcom/tvbusa/encore/tv/SeriesPresenter;

    invoke-direct {v2}, Lcom/tvbusa/encore/tv/SeriesPresenter;-><init>()V

    .line 351
    .local v2, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    new-instance v3, Lcom/tvbusa/encore/tv/CategoryPresenter;

    invoke-direct {v3}, Lcom/tvbusa/encore/tv/CategoryPresenter;-><init>()V

    .line 352
    .local v3, "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    new-instance v4, Lcom/tvbusa/encore/tv/HistoryPresenter;

    invoke-direct {v4}, Lcom/tvbusa/encore/tv/HistoryPresenter;-><init>()V

    .line 353
    .local v4, "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    new-instance v5, Lcom/tvbusa/encore/tv/SettingPresenter;

    invoke-direct {v5}, Lcom/tvbusa/encore/tv/SettingPresenter;-><init>()V

    .line 354
    .local v5, "settingPresenter":Lcom/tvbusa/encore/tv/SettingPresenter;
    new-instance v6, Lcom/tvbusa/encore/tv/LivePresenter;

    invoke-direct {v6}, Lcom/tvbusa/encore/tv/LivePresenter;-><init>()V

    .line 355
    .local v6, "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    new-instance v7, Lcom/tvbusa/encore/tv/TopBannerPresenter;

    invoke-direct {v7}, Lcom/tvbusa/encore/tv/TopBannerPresenter;-><init>()V

    .line 359
    .local v7, "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_e

    .line 361
    const-wide/16 v9, 0x0

    if-nez v8, :cond_1

    .line 362
    new-instance v11, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v11, v7}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 363
    .local v11, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_1
    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment;->topBannerList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 364
    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment;->topBannerList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 363
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 366
    .end local v12    # "k":I
    :cond_0
    new-instance v12, Landroidx/leanback/widget/HeaderItem;

    const-string v13, ""

    invoke-direct {v12, v9, v10, v13}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 367
    .local v12, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v13, Landroidx/leanback/widget/ListRow;

    invoke-direct {v13, v11}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v13}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 370
    .end local v11    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v12    # "header":Landroidx/leanback/widget/HeaderItem;
    :cond_1
    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 371
    new-instance v12, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v12, v6}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 372
    .local v12, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 373
    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 372
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 375
    .end local v13    # "k":I
    :cond_2
    new-instance v13, Landroidx/leanback/widget/HeaderItem;

    const-string v14, "\u76f4\u64ad\u983b\u9053"

    invoke-direct {v13, v9, v10, v14}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 376
    .local v13, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v14, Landroidx/leanback/widget/ListRow;

    invoke-direct {v14, v13, v12}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v14}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 379
    .end local v12    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v13    # "header":Landroidx/leanback/widget/HeaderItem;
    :cond_3
    const/4 v12, 0x2

    const-string v13, "Add - "

    const-string v14, "MainFragment"

    if-ne v8, v12, :cond_5

    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 380
    new-instance v12, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v12, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 381
    .restart local v12    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_3
    iget-object v11, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_4

    .line 382
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v9}, Lcom/tvbusa/encore/tv/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 381
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    goto :goto_3

    .line 385
    .end local v15    # "k":I
    :cond_4
    new-instance v9, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12007c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v6

    move-object v15, v7

    const-wide/16 v6, 0x0

    .end local v6    # "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .end local v7    # "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    .local v11, "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .local v15, "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    invoke-direct {v9, v6, v7, v10}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    move-object v6, v9

    .line 386
    .local v6, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v7, Landroidx/leanback/widget/ListRow;

    invoke-direct {v7, v6, v12}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v7}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 379
    .end local v11    # "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .end local v12    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v15    # "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    .local v6, "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .restart local v7    # "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    :cond_5
    move-object v11, v6

    move-object v15, v7

    .line 389
    .end local v6    # "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .end local v7    # "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    .restart local v11    # "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .restart local v15    # "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    :goto_4
    const/4 v6, 0x4

    if-ne v8, v6, :cond_7

    .line 390
    new-instance v6, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 391
    .local v6, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_5
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_6

    .line 392
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tvbusa/encore/tv/Category;

    invoke-virtual {v10}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 391
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 395
    .end local v7    # "k":I
    :cond_6
    new-instance v7, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120056

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v12, 0x0

    invoke-direct {v7, v12, v13, v9}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 396
    .local v7, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v9, Landroidx/leanback/widget/ListRow;

    invoke-direct {v9, v7, v6}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v9}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 399
    .end local v6    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v7    # "header":Landroidx/leanback/widget/HeaderItem;
    :cond_7
    new-instance v6, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v6, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 400
    .restart local v6    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_8

    .line 401
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 400
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 403
    .end local v7    # "j":I
    :cond_8
    new-instance v7, Landroidx/leanback/widget/HeaderItem;

    int-to-long v9, v8

    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v7, v9, v10, v12}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 404
    .local v7, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v9, Landroidx/leanback/widget/ListRow;

    invoke-direct {v9, v7, v6}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v9}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const/4 v10, 0x0

    const-string v12, "generalInfo"

    invoke-virtual {v9, v12, v10}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 407
    .local v9, "generalInfo":Landroid/content/SharedPreferences;
    const-string v10, "Setting - "

    const-string v12, "Setting"

    const/4 v13, 0x1

    if-ne v8, v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f050005

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 409
    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v14, Lcom/tvbusa/encore/tv/Setting;

    move-object/from16 v16, v2

    .end local v2    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .local v16, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    const-string v2, "\u6211\u7684\u5e33\u865f"

    move-object/from16 v17, v3

    .end local v3    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .local v17, "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    const-string v3, "account"

    invoke-direct {v14, v2, v3}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    const-string v13, "\u7368\u5bb6\u7bc0\u76ee"

    const-string v14, "exclusive"

    invoke-direct {v3, v13, v14}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    const-string v13, "\u8de8\u5e73\u53f0\u89c0\u770b\u7d00\u9304"

    const-string v14, "history"

    invoke-direct {v3, v13, v14}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    const-string v13, "\u6211\u7684\u6536\u85cf"

    const-string v14, "fav"

    invoke-direct {v3, v13, v14}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    move-object v6, v2

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memberList Size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_7
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 417
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v13}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 420
    .end local v2    # "k":I
    :cond_9
    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const-string v3, "\u6703\u54e1\u5c08\u5340"

    const-wide/16 v13, 0x0

    invoke-direct {v2, v13, v14, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    move-object v7, v2

    .line 421
    new-instance v2, Landroidx/leanback/widget/ListRow;

    invoke-direct {v2, v7, v6}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_8

    .line 407
    .end local v16    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .end local v17    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .local v2, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .restart local v3    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 424
    .end local v2    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .end local v3    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .restart local v16    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .restart local v17    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    :goto_8
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v8, v2, :cond_d

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 426
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120162

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "about"

    invoke-direct {v3, v13, v14}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_b
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120164

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "t&c"

    invoke-direct {v3, v13, v14}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120163

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "privacy"

    invoke-direct {v3, v13, v14}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 431
    .end local v6    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .local v2, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Size - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_9
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_c

    .line 433
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v13}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 436
    .end local v3    # "k":I
    :cond_c
    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f120117

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v12, 0x0

    invoke-direct {v3, v12, v13, v6}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 437
    .end local v7    # "header":Landroidx/leanback/widget/HeaderItem;
    .local v3, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v6, Landroidx/leanback/widget/ListRow;

    invoke-direct {v6, v3, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v6}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 359
    .end local v2    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v3    # "header":Landroidx/leanback/widget/HeaderItem;
    .end local v9    # "generalInfo":Landroid/content/SharedPreferences;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    move-object v6, v11

    move-object v7, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 441
    .end local v11    # "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .end local v15    # "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    .end local v16    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .end local v17    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .local v2, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .local v3, "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .local v6, "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    .local v7, "topBannerPresenter":Lcom/tvbusa/encore/tv/TopBannerPresenter;
    :cond_e
    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 443
    return-void
.end method

.method private parseLayout(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    .line 192
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "HomeFragment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 194
    .local v1, "homeLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 195
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 196
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 197
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 198
    .local v4, "cObject":Lorg/json/JSONObject;
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "cName":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "cKeyword":Ljava/lang/String;
    iget-object v7, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v7, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    if-ne v2, v3, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseCategoryItems(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    nop

    .end local v4    # "cObject":Lorg/json/JSONObject;
    .end local v5    # "cName":Ljava/lang/String;
    .end local v6    # "cKeyword":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 206
    goto :goto_0

    .line 209
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "homeLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 210
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private parseTopBanner(Ljava/lang/String;)V
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

    .line 158
    move-object/from16 v1, p0

    const-string v0, "TopBanner"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "layoutObject":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/tvbusa/encore/tv/MainFragment;->topBannerList:Ljava/util/List;

    .line 160
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 161
    .local v4, "bannerArray":Lorg/json/JSONArray;
    const-string v5, "TopbannerArray"

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v5, 0x0

    .line 164
    .local v5, "itemCount":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 165
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 166
    .local v6, "jObject":Lorg/json/JSONObject;
    const-string v7, "n"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "name":Ljava/lang/String;
    const-string v7, "pid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, "id":Ljava/lang/String;
    const-string v7, "ub"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "banner":Ljava/lang/String;
    const-string v8, ""

    .line 170
    .local v8, "encodedBanner":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{\"bucket\":\"tvbaw-na\",\"key\":\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\",\"edits\":{\"resize\": {\"fit\":\"cover\"} }}"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 171
    .local v15, "bannerBody":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://img.tvbaw.com/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    .line 172
    .end local v8    # "encodedBanner":Ljava/lang/String;
    .local v14, "encodedBanner":Ljava/lang/String;
    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v13, 0x1

    if-le v8, v13, :cond_0

    .line 174
    new-instance v16, Lcom/tvbusa/encore/tv/TopBannerSeries;

    const-string v10, ""

    const-string v12, ""

    const-string v17, ""

    move-object/from16 v8, v16

    const/16 v18, 0x1

    move-object v13, v14

    move-object/from16 v19, v14

    .end local v14    # "encodedBanner":Ljava/lang/String;
    .local v19, "encodedBanner":Ljava/lang/String;
    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Lcom/tvbusa/encore/tv/TopBannerSeries;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v16

    .line 175
    .local v8, "drama":Lcom/tvbusa/encore/tv/TopBannerSeries;
    iget-object v10, v1, Lcom/tvbusa/encore/tv/MainFragment;->topBannerList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    .end local v8    # "drama":Lcom/tvbusa/encore/tv/TopBannerSeries;
    .end local v19    # "encodedBanner":Ljava/lang/String;
    .restart local v14    # "encodedBanner":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v14

    const/16 v18, 0x1

    .line 177
    .end local v14    # "encodedBanner":Ljava/lang/String;
    .restart local v19    # "encodedBanner":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 178
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->parseWatchHistory()V

    .line 181
    .end local v6    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "banner":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "id":Ljava/lang/String;
    .end local v15    # "bannerBody":Ljava/lang/String;
    .end local v19    # "encodedBanner":Ljava/lang/String;
    :cond_1
    goto/16 :goto_0

    .line 182
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseLayout(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local v2    # "layoutObject":Lorg/json/JSONObject;
    .end local v4    # "bannerArray":Lorg/json/JSONArray;
    .end local v5    # "itemCount":I
    goto :goto_3

    .line 183
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
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

    .line 112
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
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

    .line 88
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->isCreateDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->isCreateDone:Z

    if-eqz v0, :cond_1

    return-void

    .line 95
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->isCreateDone:Z

    .line 96
    const-string v0, "MainFragment"

    const-string v1, "On Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setHeadersState(I)V

    .line 98
    new-instance v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 99
    new-instance v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 104
    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->json:Ljava/lang/String;

    .line 105
    invoke-direct {p0, v1}, Lcom/tvbusa/encore/tv/MainFragment;->parseTopBanner(Ljava/lang/String;)V

    .line 108
    :cond_2
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

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 119
    .local v1, "containerDock":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 122
    .local v4, "newHeaderMargin":I
    const v6, 0x7f0700ef

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    .line 123
    .local v6, "offsetToZero":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, -0x3e100000    # -30.0f

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 124
    .local v5, "newLeftMargin":I
    add-int v7, v6, v4

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-object v0
.end method

.method public parseCategoryItems(Ljava/lang/String;)V
    .locals 17
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 215
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "categoryItemObject":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    .line 217
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v1, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 219
    iget-object v4, v1, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 220
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 222
    .local v5, "itemCount":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 223
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 224
    .local v6, "jObject":Lorg/json/JSONObject;
    const-string v7, "n"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, "name":Ljava/lang/String;
    const-string v7, "pid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    .local v11, "pid":Ljava/lang/String;
    const-string v7, "p"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "poster":Ljava/lang/String;
    const-string v8, ""

    .line 228
    .local v8, "encodedBanner":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{\"bucket\":\"tvbaw-na\",\"key\":\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\",\"edits\":{\"resize\": {\"width\":315,\"height\":450,\"fit\":\"cover\"} }}"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 229
    .local v15, "bannerBody":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v12, 0x2

    invoke-static {v10, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    .line 230
    .end local v8    # "encodedBanner":Ljava/lang/String;
    .local v12, "encodedBanner":Ljava/lang/String;
    new-instance v16, Lcom/tvbusa/encore/tv/Series;

    const-string v10, ""

    const-string v13, ""

    const-string v14, ""

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v14}, Lcom/tvbusa/encore/tv/Series;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v16

    .line 231
    .local v8, "drama":Lcom/tvbusa/encore/tv/Series;
    const/16 v10, 0x8

    if-ge v5, v10, :cond_0

    iget-object v13, v1, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    if-ne v5, v10, :cond_1

    .line 233
    new-instance v10, Lcom/tvbusa/encore/tv/MoreButton;

    iget-object v13, v1, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v10, v13, v14}, Lcom/tvbusa/encore/tv/MoreButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v10, "moreBtn":Lcom/tvbusa/encore/tv/MoreButton;
    iget-object v13, v1, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v10    # "moreBtn":Lcom/tvbusa/encore/tv/MoreButton;
    :cond_1
    nop

    .end local v6    # "jObject":Lorg/json/JSONObject;
    .end local v7    # "poster":Ljava/lang/String;
    .end local v8    # "drama":Lcom/tvbusa/encore/tv/Series;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "pid":Ljava/lang/String;
    .end local v12    # "encodedBanner":Ljava/lang/String;
    .end local v15    # "bannerBody":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 237
    goto :goto_1

    .line 238
    :cond_2
    iget-object v6, v1, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    iget-object v7, v1, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 240
    iget-object v6, v1, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_3

    .line 241
    invoke-virtual/range {p0 .. p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseGenreCategory(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "itemCount":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 246
    .end local v0    # "categoryItemObject":Lorg/json/JSONObject;
    .end local v3    # "i":I
    :cond_4
    goto :goto_3

    .line 244
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    .line 245
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 247
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method

.method public parseChannelList(Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 279
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "LiveChannel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 281
    .local v1, "liveLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 282
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 283
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 284
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 285
    .local v4, "liveObject":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "name":Ljava/lang/String;
    const-string v6, "img"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "img":Ljava/lang/String;
    const-string v7, "feed"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "url":Ljava/lang/String;
    const-string v8, "banner"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "banner":Ljava/lang/String;
    const-string v9, "LiveChannel - Banner"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v9, "LiveChannel - Img"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v9, Lcom/tvbusa/encore/tv/LiveChannel;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/tvbusa/encore/tv/LiveChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v9, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    iget-object v10, p0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    if-ne v2, v3, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->parseWatchHistory()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    nop

    .end local v4    # "liveObject":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "img":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "banner":Ljava/lang/String;
    .end local v9    # "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    add-int/lit8 v2, v2, 0x1

    .line 297
    goto :goto_0

    .line 301
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "liveLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 302
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public parseGenreCategory(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 251
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "CategoryFragment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 253
    .local v1, "categoryLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 254
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 255
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 256
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 257
    .local v4, "cObject":Lorg/json/JSONObject;
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "cName":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "cKeyword":Ljava/lang/String;
    const-string v7, "MainFragment"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v7, Lcom/tvbusa/encore/tv/Category;

    const-string v8, ""

    invoke-direct {v7, v5, v8, v6}, Lcom/tvbusa/encore/tv/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v7, "category":Lcom/tvbusa/encore/tv/Category;
    iget-object v8, p0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    if-ne v2, v3, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseChannelList(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->parseWatchHistory()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_1
    :goto_1
    nop

    .end local v4    # "cObject":Lorg/json/JSONObject;
    .end local v5    # "cName":Ljava/lang/String;
    .end local v6    # "cKeyword":Ljava/lang/String;
    .end local v7    # "category":Lcom/tvbusa/encore/tv/Category;
    add-int/lit8 v2, v2, 0x1

    .line 271
    goto :goto_0

    .line 274
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "categoryLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_2
    goto :goto_2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 275
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public parseWatchHistory()V
    .locals 4

    .line 305
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 306
    .local v0, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SN - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordHistory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    return-void

    .line 310
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    return-void

    .line 312
    :cond_1
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    const-string v2, "history"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/CollectionReference;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    const-string v3, "d"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/MainFragment$1;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/MainFragment$1;-><init>(Lcom/tvbusa/encore/tv/MainFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 345
    return-void
.end method
