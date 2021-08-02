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

    .line 60
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->json:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->isCreateDone:Z

    .line 83
    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/tvbusa/encore/tv/MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;

    .line 60
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    return-void
.end method

.method static synthetic access$300(Lcom/tvbusa/encore/tv/MainFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;

    .line 60
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    return-object v0
.end method

.method private getUniqueId(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    .line 228
    .local v0, "mApp":Lcom/tvbusa/encore/tv/MainApplication;
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 229
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 230
    .local v2, "get":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.serialno"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    .line 231
    const-string v4, "SN# From Serial Number"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    nop

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 239
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    .line 240
    const-string v3, "SN# From Advertising ID"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tvbusa/encore/tv/MainApplication;->setNumber(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseLayout(Ljava/lang/String;)V

    .line 243
    .end local v1    # "cr":Landroid/content/ContentResolver;
    goto :goto_1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainApplication;->setNumber(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseLayout(Ljava/lang/String;)V

    .line 247
    :goto_1
    return-void
.end method

.method private loadRows()V
    .locals 17

    .line 408
    move-object/from16 v0, p0

    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v2}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 409
    .local v1, "rowsAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v2, Lcom/tvbusa/encore/tv/SeriesPresenter;

    invoke-direct {v2}, Lcom/tvbusa/encore/tv/SeriesPresenter;-><init>()V

    .line 410
    .local v2, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    new-instance v3, Lcom/tvbusa/encore/tv/CategoryPresenter;

    invoke-direct {v3}, Lcom/tvbusa/encore/tv/CategoryPresenter;-><init>()V

    .line 411
    .local v3, "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    new-instance v4, Lcom/tvbusa/encore/tv/HistoryPresenter;

    invoke-direct {v4}, Lcom/tvbusa/encore/tv/HistoryPresenter;-><init>()V

    .line 412
    .local v4, "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    new-instance v5, Lcom/tvbusa/encore/tv/SettingPresenter;

    invoke-direct {v5}, Lcom/tvbusa/encore/tv/SettingPresenter;-><init>()V

    .line 413
    .local v5, "settingPresenter":Lcom/tvbusa/encore/tv/SettingPresenter;
    new-instance v6, Lcom/tvbusa/encore/tv/LivePresenter;

    invoke-direct {v6}, Lcom/tvbusa/encore/tv/LivePresenter;-><init>()V

    .line 417
    .local v6, "livePresenter":Lcom/tvbusa/encore/tv/LivePresenter;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 419
    const-wide/16 v8, 0x0

    if-nez v7, :cond_1

    .line 420
    new-instance v10, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v10, v6}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 421
    .local v10, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_1
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 422
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 421
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 424
    .end local v11    # "k":I
    :cond_0
    new-instance v11, Landroidx/leanback/widget/HeaderItem;

    const-string v12, "\u76f4\u64ad\u983b\u9053"

    invoke-direct {v11, v8, v9, v12}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 425
    .local v11, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v12, Landroidx/leanback/widget/ListRow;

    invoke-direct {v12, v11, v10}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 428
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

    .line 429
    new-instance v13, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v13, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 430
    .local v13, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    iget-object v15, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 431
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

    .line 432
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->historyList:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 430
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_2

    .line 434
    .end local v14    # "k":I
    :cond_2
    new-instance v12, Landroidx/leanback/widget/HeaderItem;

    const-string v14, "\u7e7c\u7e8c\u89c0\u770b"

    invoke-direct {v12, v8, v9, v14}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 435
    .local v12, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v14, Landroidx/leanback/widget/ListRow;

    invoke-direct {v14, v12, v13}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v14}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 438
    .end local v12    # "header":Landroidx/leanback/widget/HeaderItem;
    .end local v13    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    :cond_3
    const/4 v12, 0x3

    if-ne v7, v12, :cond_5

    .line 439
    new-instance v12, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v12, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 440
    .local v12, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_3
    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 441
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tvbusa/encore/tv/Category;

    invoke-virtual {v15}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 440
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 444
    .end local v13    # "k":I
    :cond_4
    new-instance v10, Landroidx/leanback/widget/HeaderItem;

    const-string v11, "\u7bc0\u76ee\u5206\u985e"

    invoke-direct {v10, v8, v9, v11}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 445
    .local v10, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v11, Landroidx/leanback/widget/ListRow;

    invoke-direct {v11, v10, v12}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v11}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 448
    .end local v10    # "header":Landroidx/leanback/widget/HeaderItem;
    .end local v12    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    :cond_5
    new-instance v10, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v10, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 449
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

    .line 450
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v12}, Lcom/tvbusa/encore/tv/Series;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MMM"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 449
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 453
    .end local v11    # "j":I
    :cond_6
    new-instance v11, Landroidx/leanback/widget/HeaderItem;

    int-to-long v12, v7

    iget-object v14, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 454
    .local v11, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v12, Landroidx/leanback/widget/ListRow;

    invoke-direct {v12, v11, v10}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v12}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/tvbusa/encore/tv/MainApplication;

    .line 459
    .local v12, "mApp":Lcom/tvbusa/encore/tv/MainApplication;
    const-string v13, "Setting - "

    const-string v14, "Setting"

    const/4 v15, 0x1

    if-ne v7, v15, :cond_8

    invoke-virtual {v12}, Lcom/tvbusa/encore/tv/MainApplication;->getMemberEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 461
    iget-object v15, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v8, Lcom/tvbusa/encore/tv/Setting;

    const-string v9, "\u6211\u7684\u5e33\u865f"

    move-object/from16 v16, v2

    .end local v2    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .local v16, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    const-string v2, "account"

    invoke-direct {v8, v9, v2}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v8, Lcom/tvbusa/encore/tv/Setting;

    const-string v9, "\u7368\u5bb6\u7bc0\u76ee"

    const-string v15, "exclusive"

    invoke-direct {v8, v9, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v8, Lcom/tvbusa/encore/tv/Setting;

    const-string v9, "\u8de8\u5e73\u53f0\u89c0\u770b\u7d00\u9304"

    const-string v15, "history"

    invoke-direct {v8, v9, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    new-instance v8, Lcom/tvbusa/encore/tv/Setting;

    const-string v9, "\u6211\u7684\u6536\u85cf"

    const-string v15, "fav"

    invoke-direct {v8, v9, v15}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    move-object v10, v2

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memberList Size - "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 469
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment;->memberList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v9}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 472
    .end local v2    # "k":I
    :cond_7
    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const-string v8, "\u6703\u54e1\u5c08\u5340"

    move-object v9, v3

    move-object v15, v4

    const-wide/16 v3, 0x0

    .end local v3    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .end local v4    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    .local v9, "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .local v15, "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    invoke-direct {v2, v3, v4, v8}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    move-object v11, v2

    .line 473
    new-instance v2, Landroidx/leanback/widget/ListRow;

    invoke-direct {v2, v11, v10}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_6

    .line 459
    .end local v9    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .end local v15    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    .end local v16    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .local v2, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .restart local v3    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .restart local v4    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    :cond_8
    move-object/from16 v16, v2

    move-object v9, v3

    move-object v15, v4

    .line 476
    .end local v2    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .end local v3    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .end local v4    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    .restart local v9    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .restart local v15    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    .restart local v16    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    :goto_6
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v7, v2, :cond_a

    .line 479
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    const-string v4, "\u7528\u6236\u7de8\u865f"

    const-string v8, "about"

    invoke-direct {v3, v4, v8}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    const-string v4, "\u689d\u6b3e\u53ca\u7d30\u5247"

    const-string v8, "t&c"

    invoke-direct {v3, v4, v8}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v2, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    new-instance v3, Lcom/tvbusa/encore/tv/Setting;

    const-string v4, "\u79c1\u96b1\u8072\u660e"

    const-string v8, "privacy"

    invoke-direct {v3, v4, v8}, Lcom/tvbusa/encore/tv/Setting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v2, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 483
    .end local v10    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .local v2, "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_7
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 485
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment;->settingList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 488
    .end local v3    # "k":I
    :cond_9
    new-instance v3, Landroidx/leanback/widget/HeaderItem;

    const-string v4, "\u66f4\u591a\u9078\u9805"

    const-wide/16 v13, 0x0

    invoke-direct {v3, v13, v14, v4}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    .line 489
    .end local v11    # "header":Landroidx/leanback/widget/HeaderItem;
    .local v3, "header":Landroidx/leanback/widget/HeaderItem;
    new-instance v4, Landroidx/leanback/widget/ListRow;

    invoke-direct {v4, v3, v2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v1, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 417
    .end local v2    # "listRowAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    .end local v3    # "header":Landroidx/leanback/widget/HeaderItem;
    .end local v12    # "mApp":Lcom/tvbusa/encore/tv/MainApplication;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    move-object v3, v9

    move-object v4, v15

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 493
    .end local v9    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .end local v15    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    .end local v16    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .local v2, "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .local v3, "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .restart local v4    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    :cond_b
    move-object/from16 v16, v2

    move-object v9, v3

    move-object v15, v4

    .line 497
    .end local v2    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    .end local v3    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .end local v4    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    .restart local v9    # "categoryPresenter":Lcom/tvbusa/encore/tv/CategoryPresenter;
    .restart local v15    # "historyPresenter":Lcom/tvbusa/encore/tv/HistoryPresenter;
    .restart local v16    # "seriesPresenter":Lcom/tvbusa/encore/tv/SeriesPresenter;
    const-string v2, "Adapter-"

    const-string v3, "Is Not Null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/MainFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 502
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

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    .line 254
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "HomeFragment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 256
    .local v1, "homeLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 257
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 258
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 259
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 260
    .local v4, "cObject":Lorg/json/JSONObject;
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "cName":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "cKeyword":Ljava/lang/String;
    iget-object v7, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v7, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryName:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    if-ne v2, v3, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseCategoryItems(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    nop

    .end local v4    # "cObject":Lorg/json/JSONObject;
    .end local v5    # "cName":Ljava/lang/String;
    .end local v6    # "cKeyword":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 268
    goto :goto_0

    .line 271
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "homeLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 272
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
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

    .line 113
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
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

    .line 87
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    if-eqz p1, :cond_0

    .line 90
    return-void

    .line 92
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

    .line 93
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->isCreateDone:Z

    if-eqz v0, :cond_1

    return-void

    .line 94
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/MainFragment;->isCreateDone:Z

    .line 95
    const-string v0, "MainFragment"

    const-string v1, "On Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setHeadersState(I)V

    .line 97
    new-instance v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 98
    new-instance v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/MainFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

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

    .line 106
    invoke-direct {p0, v1}, Lcom/tvbusa/encore/tv/MainFragment;->getUniqueId(Ljava/lang/String;)V

    .line 109
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

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 120
    .local v1, "containerDock":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 122
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 123
    .local v4, "newHeaderMargin":I
    const v6, 0x7f0700cc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    .line 124
    .local v6, "offsetToZero":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, -0x3e100000    # -30.0f

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 125
    .local v5, "newLeftMargin":I
    add-int v7, v6, v4

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 126
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-object v0
.end method

.method public parseCategoryItems(Ljava/lang/String;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 277
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "categoryItemObject":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 281
    iget-object v2, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 282
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 284
    .local v3, "itemCount":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 285
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 286
    .local v4, "jObject":Lorg/json/JSONObject;
    const v5, 0x7f11005e

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "name":Ljava/lang/String;
    const v5, 0x7f110158

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "viet":Ljava/lang/String;
    const-string v5, "pid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "id":Ljava/lang/String;
    const-string v5, "thumb"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, "thumb":Ljava/lang/String;
    const-string v5, "banner"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
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

    .line 292
    .local v12, "info":Ljava/lang/String;
    new-instance v5, Lcom/tvbusa/encore/tv/Series;

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/tvbusa/encore/tv/Series;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v5, "drama":Lcom/tvbusa/encore/tv/Series;
    iget-object v6, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    nop

    .end local v4    # "jObject":Lorg/json/JSONObject;
    .end local v5    # "drama":Lcom/tvbusa/encore/tv/Series;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "viet":Ljava/lang/String;
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "thumb":Ljava/lang/String;
    .end local v11    # "banner":Ljava/lang/String;
    .end local v12    # "info":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 295
    goto :goto_1

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/tvbusa/encore/tv/MainFragment;->entireList:Ljava/util/List;

    iget-object v5, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tvbusa/encore/tv/MainFragment;->dramaList:Ljava/util/List;

    .line 298
    iget-object v4, p0, Lcom/tvbusa/encore/tv/MainFragment;->categoryKeyword:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseGenreCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "itemCount":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 304
    .end local v0    # "categoryItemObject":Lorg/json/JSONObject;
    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
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

    .line 332
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "LiveChannel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 334
    .local v1, "liveLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 335
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 336
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 337
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 338
    .local v4, "liveObject":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "name":Ljava/lang/String;
    const-string v6, "img"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "img":Ljava/lang/String;
    const-string v7, "feed"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, "url":Ljava/lang/String;
    const-string v8, "banner"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "banner":Ljava/lang/String;
    const-string v9, "LiveChannel - Banner"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v9, "LiveChannel - Img"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v9, Lcom/tvbusa/encore/tv/LiveChannel;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/tvbusa/encore/tv/LiveChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v9, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    iget-object v10, p0, Lcom/tvbusa/encore/tv/MainFragment;->channelList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    if-ne v2, v3, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/MainFragment;->parseWatchHistory()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    nop

    .end local v4    # "liveObject":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "img":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "banner":Ljava/lang/String;
    .end local v9    # "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    add-int/lit8 v2, v2, 0x1

    .line 350
    goto :goto_0

    .line 354
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "liveLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 355
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public parseGenreCategory(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 309
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const-string v1, "CategoryFragment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 311
    .local v1, "categoryLayout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 312
    .local v2, "count":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 313
    .local v3, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 314
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 315
    .local v4, "cObject":Lorg/json/JSONObject;
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "cName":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "cKeyword":Ljava/lang/String;
    const-string v7, "MainFragment"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v7, Lcom/tvbusa/encore/tv/Category;

    const-string v8, ""

    invoke-direct {v7, v5, v8, v6}, Lcom/tvbusa/encore/tv/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v7, "category":Lcom/tvbusa/encore/tv/Category;
    iget-object v8, p0, Lcom/tvbusa/encore/tv/MainFragment;->genreCategoryList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    if-ne v2, v3, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment;->parseChannelList(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    nop

    .end local v4    # "cObject":Lorg/json/JSONObject;
    .end local v5    # "cName":Ljava/lang/String;
    .end local v6    # "cKeyword":Ljava/lang/String;
    .end local v7    # "category":Lcom/tvbusa/encore/tv/Category;
    add-int/lit8 v2, v2, 0x1

    .line 324
    goto :goto_0

    .line 327
    .end local v0    # "layoutObject":Lorg/json/JSONObject;
    .end local v1    # "categoryLayout":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v3    # "lastItem":I
    :cond_1
    goto :goto_1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 328
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public parseWatchHistory()V
    .locals 4

    .line 358
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 359
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

    .line 361
    iget-object v1, p0, Lcom/tvbusa/encore/tv/MainFragment;->sss:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    .line 363
    return-void

    .line 366
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/MainFragment;->loadRows()V

    .line 368
    return-void

    .line 371
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

    .line 372
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/MainFragment$1;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/MainFragment$1;-><init>(Lcom/tvbusa/encore/tv/MainFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 404
    return-void
.end method
