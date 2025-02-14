.class public Lcom/hktve/viutv/controller/page/MyRecordFragment;
.super Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;
.source "MyRecordFragment.java"

# interfaces
.implements Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hktve/viutv/controller/page/MyRecordFragment$ItemViewSelectedListener;,
        Lcom/hktve/viutv/controller/page/MyRecordFragment$ItemViewClickedListener;
    }
.end annotation


# static fields
.field private static final CATEGORY_FAVOURITE:Ljava/lang/String; = "favourite"

.field private static final CATEGORY_HISTORY:Ljava/lang/String; = "history"

.field private static final TAG:Ljava/lang/String; = "MyRecordFragment"


# instance fields
.field private mCategoryAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

.field private mSpinnerFragment:Lcom/hktve/viutv/controller/page/SpinnerFragment;

.field private mTextOverlayFragment:Lcom/hktve/viutv/controller/page/TextOverlayFragment;

.field mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryAdapters:Ljava/util/Map;

    .line 73
    new-instance v0, Lcom/hktve/viutv/controller/page/TextOverlayFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/TextOverlayFragment;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mTextOverlayFragment:Lcom/hktve/viutv/controller/page/TextOverlayFragment;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    return-void
.end method

.method static synthetic access$200(Lcom/hktve/viutv/controller/page/MyRecordFragment;)Lcom/hktve/viutv/controller/page/SpinnerFragment;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mSpinnerFragment:Lcom/hktve/viutv/controller/page/SpinnerFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hktve/viutv/controller/page/MyRecordFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->fetchUserInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/hktve/viutv/controller/page/MyRecordFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->setupContent()V

    return-void
.end method

.method private createCategoryRowAdapter()V
    .locals 3

    .line 122
    new-instance v0, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ListRowPresenter;->setShadowEnabled(Z)V

    .line 124
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Lcom/hktve/viutv/controller/page/MyRecordFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/hktve/viutv/controller/page/MyRecordFragment$1;-><init>(Lcom/hktve/viutv/controller/page/MyRecordFragment;Landroidx/leanback/widget/ListRowPresenter;)V

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    iput-object v1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 135
    invoke-virtual {p0, v1}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method private fetchUserInfo()V
    .locals 4

    .line 240
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->unSubscribeAll()V

    .line 241
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->isLogined()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/hktve/viutv/controller/page/IndexFragment;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/hktve/viutv/controller/page/IndexFragment;

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/page/IndexFragment;->reloadRows()V

    :cond_0
    return-void

    .line 249
    :cond_1
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 251
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/hktve/viutv/util/Util;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1201de

    invoke-virtual {p0, v1}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/hktve/viutv/util/Util;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    .line 257
    new-instance v0, Lcom/hktve/viutv/controller/page/SpinnerFragment;

    invoke-direct {v0}, Lcom/hktve/viutv/controller/page/SpinnerFragment;-><init>()V

    iput-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mSpinnerFragment:Lcom/hktve/viutv/controller/page/SpinnerFragment;

    .line 258
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b023e

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mSpinnerFragment:Lcom/hktve/viutv/controller/page/SpinnerFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 261
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v3}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveUserHistoryObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    .line 263
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 264
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/controller/network/viu/APIManagerV2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hktve/viutv/controller/network/viu/APIManagerV2;->getViuTVService()Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v2}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hktve/viutv/controller/network/viu/ViuTVAPIInterface;->retrieveUserFacvouriteObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v1

    .line 267
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 268
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 269
    new-instance v2, Lcom/hktve/viutv/controller/page/MyRecordFragment$3;

    invoke-direct {v2, p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment$3;-><init>(Lcom/hktve/viutv/controller/page/MyRecordFragment;)V

    invoke-static {v0, v1, v2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    .line 283
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 284
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/hktve/viutv/controller/page/MyRecordFragment$2;

    invoke-direct {v1, p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment$2;-><init>(Lcom/hktve/viutv/controller/page/MyRecordFragment;)V

    .line 285
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private refreshChaseAdapter(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hktve/viutv/model/viutv/user/Chase;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryAdapters:Ljava/util/Map;

    const-string v1, "favourite"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 372
    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const v3, 0x7f12001d

    invoke-virtual {p0, v3}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v3, Lcom/hktve/viutv/view/GeneralProgrammePresenter;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/hktve/viutv/view/GeneralProgrammePresenter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 376
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryAdapters:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    .line 382
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    .line 384
    new-instance v1, Landroidx/leanback/widget/ListRow;

    invoke-direct {v1, v2, v0}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 386
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private refreshHistoryAdapter(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hktve/viutv/model/viutv/user/History;",
            ">;)V"
        }
    .end annotation

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryAdapters:Ljava/util/Map;

    const-string v1, "history"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 347
    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const v3, 0x7f120023

    invoke-virtual {p0, v3}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v3, Lcom/hktve/viutv/view/GeneralEpisodePresenter;

    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/hktve/viutv/view/GeneralEpisodePresenter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 351
    iget-object v3, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryAdapters:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->clear()V

    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->addAll(ILjava/util/Collection;)V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    .line 359
    new-instance v1, Landroidx/leanback/widget/ListRow;

    invoke-direct {v1, v2, v0}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 361
    iget-object p1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCategoryRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setupContent()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->refreshHistoryAdapter(Ljava/util/List;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getChases()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->refreshChaseAdapter(Ljava/util/List;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v0}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    invoke-virtual {v1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getChases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b023e

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mTextOverlayFragment:Lcom/hktve/viutv/controller/page/TextOverlayFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 403
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mTextOverlayFragment:Lcom/hktve/viutv/controller/page/TextOverlayFragment;

    const v1, 0x7f1201ff

    invoke-virtual {p0, v1}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hktve/viutv/controller/page/TextOverlayFragment;->setMessage(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private unSubscribeAll()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/hktve/viutv/model/viutv/user/UserInfo;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/model/viutv/user/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mUser:Lcom/hktve/viutv/model/viutv/user/UserInfo;

    .line 111
    new-instance p1, Lcom/hktve/viutv/controller/page/MyRecordFragment$ItemViewClickedListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/hktve/viutv/controller/page/MyRecordFragment$ItemViewClickedListener;-><init>(Lcom/hktve/viutv/controller/page/MyRecordFragment;Lcom/hktve/viutv/controller/page/MyRecordFragment$1;)V

    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 112
    new-instance p1, Lcom/hktve/viutv/controller/page/MyRecordFragment$ItemViewSelectedListener;

    invoke-direct {p1, p0, v0}, Lcom/hktve/viutv/controller/page/MyRecordFragment$ItemViewSelectedListener;-><init>(Lcom/hktve/viutv/controller/page/MyRecordFragment;Lcom/hktve/viutv/controller/page/MyRecordFragment$1;)V

    invoke-virtual {p0, p1}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 113
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->createCategoryRowAdapter()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->onDestroy()V

    .line 148
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->unSubscribeAll()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->onDestroyView()V

    .line 96
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mSpinnerFragment:Lcom/hktve/viutv/controller/page/SpinnerFragment;

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mSpinnerFragment:Lcom/hktve/viutv/controller/page/SpinnerFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mTextOverlayFragment:Lcom/hktve/viutv/controller/page/TextOverlayFragment;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/hktve/viutv/controller/page/MyRecordFragment;->mTextOverlayFragment:Lcom/hktve/viutv/controller/page/TextOverlayFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 140
    invoke-super {p0}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/hktve/viutv/util/ViuTVTracker;->getInstance(Landroid/content/Context;)Lcom/hktve/viutv/util/ViuTVTracker;

    move-result-object v0

    const-string v1, "Profile"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v2}, Lcom/hktve/viutv/util/ViuTVTracker;->sendAppEventTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->fetchUserInfo()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1, p2}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/hktve/viutv/controller/page/MyRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060047

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 118
    invoke-super {p0, p1}, Lcom/hktve/viutv/controller/abs/AbsBrowseFragment;->setExpand(Z)V

    return-void
.end method
