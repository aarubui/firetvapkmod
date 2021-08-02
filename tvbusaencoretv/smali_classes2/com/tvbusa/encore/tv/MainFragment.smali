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


# static fields
.field private static final GRID_ITEM_HEIGHT:I = 0x19f

.field private static final GRID_ITEM_WIDTH:I = 0x15e


# instance fields
.field private categoryKeyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Category;",
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
            "Lcom/tvbusa/encore/tv/Series;",
            ">;"
        }
    .end annotation
.end field

.field private entireList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Series;",
            ">;>;"
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

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->json:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryList:Ljava/util/List;

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

.method private getUniqueId(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    .line 229
    .local v0, "mApp":Lcom/tvbusa/encore/tv/MainApplication;
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 230
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 231
    .local v2, "get":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.serialno"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    .line 232
    const-string v3, "SN# From Serial Number"

    iget-object v4, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    nop

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 240
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    .line 241
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    const-string v3, "SN# From Advertising ID"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tvbusa/encore/tv/MainApplication;->setNumber(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseLayout(Ljava/lang/String;)V

    .line 244
    .end local v1    # "cr":Landroid/content/ContentResolver;
    goto :goto_1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainApplication;->setNumber(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseLayout(Ljava/lang/String;)V

    .line 248
    :goto_1
    return-void
.end method

.method private loadRows()V
    .locals 16

    .line 409
    move-object/from16 v0, p0

    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v2}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 410
    .local v1, "rowsAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v2, Lcom/tvbusa/encore/tv/SeriesPresenter;

    invoke-direct {v2}, Lcom/tvbusa/encore/tv/SeriesPresenter;-><init>()V

    .line 411
    .local v2, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    new-instance v3, Lcom/tvbusa/encore/tv/CategoryPresenter;

    invoke-direct {v3}, Lcom/tvbusa/encore/tv/CategoryPresenter;-><init>()V

    .line 412
    .local v3, "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    new-instance v4, Lcom/tvbusa/encore/tv/HistoryPresenter;

    invoke-direct {v4}, Lcom/tvbusa/encore/tv/HistoryPresenter;-><init>()V

    .line 413
    .local v4, "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    new-instance v5, Lcom/tvbusa/encore/tv/SettingPresenter;

    invoke-direct {v5}, Lcom/tvbusa/encore/tv/SettingPresenter;-><init>()V

    .line 414
    .local v5, "settingPresenter":Lcom/tvbusa/encore/tv/SettingPresenter;
    new-instance v6, Lcom/tvbusa/encore/tv/LivePresenter;

    invoke-direct {v6}, Lcom/tvbusa/encore/tv/LivePresenter;-><init>()V

    .line 418
    .local v6, "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 420
    const-wide/16 v8, 0x0

    if-nez v7, :cond_1

    .line 421
    new-instance v10, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v10, v6}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 422
    .local v10, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_1
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 423
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 422
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 425
    .end local v11    # "k":I
    :cond_0
    new-instance v11, Landroidx/leanback/widget/HeaderItem;

    const-string v12, "\u76f4\u64ad\u983b\u9053"

    invoke-direct {v11, v8, v9, v12}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 426
    .local v11, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v12, Landroidx/leanback/widget/ListRow;

    invoke-direct {v12, v11, v10}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 429
    .end local v10    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v11    # "header":Landroidx/leanback/widget/HeaderItem;
    :cond_1
    const-string v10, "Add - "

    const-string v11, "MainFragment"

    const/4 v12, 0x1

    if-ne v7, v12, :cond_3

    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 430
    new-instance v13, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v13, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 431
    .local v13, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    iget-object v15, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 432
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v12}, Lcom/tvbusa/encore/tv/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 431
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_2

    .line 435
    .end local v14    # "k":I
    :cond_2
    new-instance v12, Landroidx/leanback/widget/HeaderItem;

    const-string v14, "\u7e7c\u7e8c\u89c0\u770b"

    invoke-direct {v12, v8, v9, v14}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 436
    .local v12, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v14, Landroidx/leanback/widget/ListRow;

    invoke-direct {v14, v12, v13}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v14}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 439
    .end local v12    # "header":Landroidx/leanback/widget/HeaderItem;
    .end local v13    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    :cond_3
    const/4 v12, 0x3

    if-ne v7, v12, :cond_5

    .line 440
    new-instance v12, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v12, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 441
    .local v12, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_3
    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 442
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryList:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tvbusa/encore/tv/Category;

    invoke-virtual {v15}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 441
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 445
    .end local v13    # "k":I
    :cond_4
    new-instance v10, Landroidx/leanback/widget/HeaderItem;

    const-string v11, "\u7bc0\u76ee\u5206\u985e"

    invoke-direct {v10, v8, v9, v11}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 446
    .local v10, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v11, Landroidx/leanback/widget/ListRow;

    invoke-direct {v11, v10, v12}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v11}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 451
    .end local v10    # "header":Landroidx/leanback/widget/HeaderItem;
    .end local v12    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    :cond_5
    new-instance v10, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v10, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 452
    .local v10, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 453
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 452
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 455
    .end local v11    # "j":I
    :cond_6
    new-instance v11, Landroidx/leanback/widget/HeaderItem;

    int-to-long v12, v7

    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 456
    .local v11, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v12, Landroidx/leanback/widget/ListRow;

    invoke-direct {v12, v11, v10}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 458
    const-string v12, "Setting - "

    const-string v13, "Setting"

    const/4 v14, 0x1

    if-ne v7, v14, :cond_8

    .line 460
    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v15, Lcom/tvbusa/encore/tv/Setting;

    const-string v8, "\u6211\u7684\u5e33\u865f"

    const-string v9, "account"

    invoke-direct {v15, v8, v9}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v9, Lcom/tvbusa/encore/tv/Setting;

    const-string v14, "\u7368\u5bb6\u7bc0\u76ee"

    const-string v15, "exclusive"

    invoke-direct {v9, v14, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v9, Lcom/tvbusa/encore/tv/Setting;

    const-string v14, "\u8de8\u5e73\u53f0\u89c0\u770b\u7d00\u9304"

    const-string v15, "history"

    invoke-direct {v9, v14, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v9, Lcom/tvbusa/encore/tv/Setting;

    const-string v14, "\u6211\u7684\u6536\u85cf"

    const-string v15, "fav"

    invoke-direct {v9, v14, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v8, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v8, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    move-object v10, v8

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memberList Size - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_5
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 468
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v14}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 471
    .end local v8    # "k":I
    :cond_7
    new-instance v8, Landroidx/leanback/widget/HeaderItem;

    const-string v9, "\u6703\u54e1\u5c08\u5340"

    const-wide/16 v14, 0x0

    invoke-direct {v8, v14, v15, v9}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    move-object v11, v8

    .line 472
    new-instance v8, Landroidx/leanback/widget/ListRow;

    invoke-direct {v8, v11, v10}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v8}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 475
    :cond_8
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v7, v8, :cond_a

    .line 478
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v9, Lcom/tvbusa/encore/tv/Setting;

    const-string v14, "\u7528\u6236\u7de8\u865f"

    const-string v15, "about"

    invoke-direct {v9, v14, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v9, Lcom/tvbusa/encore/tv/Setting;

    const-string v14, "\u689d\u6b3e\u53ca\u7d30\u5247"

    const-string v15, "t&c"

    invoke-direct {v9, v14, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v9, Lcom/tvbusa/encore/tv/Setting;

    const-string v14, "\u79c1\u96b1\u8072\u660e"

    const-string v15, "privacy"

    invoke-direct {v9, v14, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v8, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v8, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 482
    .end local v10    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .local v8, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting Size - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_6
    iget-object v10, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    .line 484
    iget-object v10, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 485
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v14}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 487
    .end local v9    # "k":I
    :cond_9
    new-instance v9, Landroidx/leanback/widget/HeaderItem;

    const-string v10, "\u66f4\u591a\u9078\u9805"

    const-wide/16 v12, 0x0

    invoke-direct {v9, v12, v13, v10}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 488
    .end local v11    # "header":Landroidx/leanback/widget/HeaderItem;
    .local v9, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v10, Landroidx/leanback/widget/ListRow;

    invoke-direct {v10, v9, v8}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v10}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 418
    .end local v8    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v9    # "header":Landroidx/leanback/widget/HeaderItem;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 492
    :cond_b
    nop

    .line 496
    const-string v8, "Adapter-"

    const-string v9, "Is Not Null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 501
    return-void
.end method

.method private parseLayout(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    .line 255
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "HomeFragment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 257
    .local v1, "homeLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 258
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 259
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 260
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 261
    .local v4, "cObject":Lorg/json/JSONObject;
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, "cName":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "cKeyword":Ljava/lang/String;
    iget-object v7, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v7, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    if-ne v2, v3, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseCategoryItems(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    nop

    .end local v4    # "cObject":Lorg/json/JSONObject;
    .end local v5    # "cName":Ljava/lang/String;
    .end local v6    # "cKeyword":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 269
    goto :goto_0

    .line 272
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "homeLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 273
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

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
    new-instance v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 99
    new-instance v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 105
    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->json:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->json:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tvbusa/encore/tv/MainFragment;->getUniqueId(Ljava/lang/String;)V

    .line 110
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 121
    .local v1, "containerDock":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 123
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 124
    .local v4, "newHeaderMargin":I
    const v6, 0x7f0700c7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    .line 125
    .local v6, "offsetToZero":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, -0x3e100000    # -30.0f

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 126
    .local v5, "newLeftMargin":I
    add-int v7, v6, v4

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 127
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-object v0
.end method

.method public parseCategoryItems(Ljava/lang/String;)V
    .locals 14
    .param p1, "result"    # Ljava/lang/String;

    .line 278
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "categoryItemObject":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    .line 280
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 282
    iget-object v3, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 283
    .local v3, "jsonArray":Lorg/json/JSONArray;
    move v4, v1

    .line 285
    .local v4, "itemCount":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 286
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 287
    .local v5, "jObject":Lorg/json/JSONObject;
    const v6, 0x7f11005d

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "name":Ljava/lang/String;
    const v6, 0x7f11013e

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "viet":Ljava/lang/String;
    const-string v6, "pid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, "id":Ljava/lang/String;
    const-string v6, "thumb"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
    .local v11, "thumb":Ljava/lang/String;
    const-string v6, "banner"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 292
    .local v12, "banner":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "year"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "genre"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, "info":Ljava/lang/String;
    new-instance v6, Lcom/tvbusa/encore/tv/Series;

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/tvbusa/encore/tv/Series;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v6, "drama":Lcom/tvbusa/encore/tv/Series;
    iget-object v7, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    nop

    .end local v5    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "drama":Lcom/tvbusa/encore/tv/Series;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "viet":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "thumb":Ljava/lang/String;
    .end local v12    # "banner":Ljava/lang/String;
    .end local v13    # "info":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 296
    goto :goto_1

    .line 297
    :cond_0
    iget-object v5, p0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    iget-object v6, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 299
    iget-object v5, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_1

    .line 300
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseGenreCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "itemCount":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 305
    .end local v0    # "categoryItemObject":Lorg/json/JSONObject;
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 306
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public parseChannelList(Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/String;

    .line 333
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "LiveChannel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 335
    .local v1, "liveLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 336
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 337
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 338
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 339
    .local v4, "liveObject":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "name":Ljava/lang/String;
    const-string v6, "img"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "img":Ljava/lang/String;
    const-string v7, "feed"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "url":Ljava/lang/String;
    const-string v8, "banner"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, "banner":Ljava/lang/String;
    const-string v9, "LiveChannel - Banner"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v9, "LiveChannel - Img"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v9, Lcom/tvbusa/encore/tv/LiveChannel;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/tvbusa/encore/tv/LiveChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v9, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    iget-object v10, p0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    if-ne v2, v3, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->parseWatchHistory()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    nop

    .end local v4    # "liveObject":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "img":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "banner":Ljava/lang/String;
    .end local v9    # "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    add-int/lit8 v2, v2, 0x1

    .line 351
    goto :goto_0

    .line 355
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "liveLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 356
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public parseGenreCategory(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .line 310
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "CategoryFragment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 312
    .local v1, "categoryLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 313
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 314
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 315
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 316
    .local v4, "cObject":Lorg/json/JSONObject;
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "cName":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "cKeyword":Ljava/lang/String;
    const-string v7, "MainFragment"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v7, Lcom/tvbusa/encore/tv/Category;

    const-string v8, ""

    invoke-direct {v7, v5, v8, v6}, Lcom/tvbusa/encore/tv/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v7, "category":Lcom/tvbusa/encore/tv/Category;
    iget-object v8, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    if-ne v2, v3, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseChannelList(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    nop

    .end local v4    # "cObject":Lorg/json/JSONObject;
    .end local v5    # "cName":Ljava/lang/String;
    .end local v6    # "cKeyword":Ljava/lang/String;
    .end local v7    # "category":Lcom/tvbusa/encore/tv/Category;
    add-int/lit8 v2, v2, 0x1

    .line 325
    goto :goto_0

    .line 328
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "categoryLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 329
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public parseWatchHistory()V
    .locals 4

    .line 359
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 360
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

    .line 362
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    .line 364
    return-void

    .line 367
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    .line 369
    return-void

    .line 372
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

    .line 373
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/MainFragment$1;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/MainFragment$1;-><init>(Lcom/tvbusa/encore/tv/MainFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 405
    return-void
.end method
