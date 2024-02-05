.class final Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/MainFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/MainFragment$1;

    .line 430
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 15
    .param p1, "itemViewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroidx/leanback/widget/Row;

    .line 433
    move-object v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/tvbusa/encore/tv/Series;

    const-string v3, "id"

    if-eqz v2, :cond_0

    .line 434
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/Series;

    .line 436
    .local v4, "series":Lcom/tvbusa/encore/tv/Series;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/Series;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 440
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/tv/Series;
    :cond_0
    instance-of v2, v1, Lcom/tvbusa/encore/tv/TopBannerSeries;

    if-eqz v2, :cond_1

    .line 441
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/TopBannerSeries;

    .line 443
    .local v4, "series":Lcom/tvbusa/encore/tv/TopBannerSeries;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/TopBannerSeries;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 447
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/tv/TopBannerSeries;
    :cond_1
    instance-of v2, v1, Lcom/tvbusa/encore/tv/MoreButton;

    const-string v4, "type"

    const/4 v5, 0x0

    const-string v6, "key"

    const-string v7, "name"

    if-eqz v2, :cond_2

    .line 448
    new-instance v2, Landroid/content/Intent;

    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/tvbusa/encore/tv/CategoryActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/tv/MoreButton;

    .line 450
    .local v8, "btn":Lcom/tvbusa/encore/tv/MoreButton;
    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MoreButton;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MoreButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v9, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 456
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "btn":Lcom/tvbusa/encore/tv/MoreButton;
    :cond_2
    instance-of v2, v1, Lcom/tvbusa/encore/tv/HistoryItem;

    if-eqz v2, :cond_3

    .line 457
    new-instance v2, Landroid/content/Intent;

    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/tv/HistoryItem;

    .line 459
    .local v8, "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "History - "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "WatchHistory"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 464
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    :cond_3
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Category;

    if-eqz v2, :cond_4

    .line 465
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v8, Lcom/tvbusa/encore/tv/CategoryActivity;

    invoke-direct {v2, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Lcom/tvbusa/encore/tv/Category;

    .line 467
    .local v3, "category":Lcom/tvbusa/encore/tv/Category;
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Category;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/4 v8, 0x1

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 473
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "category":Lcom/tvbusa/encore/tv/Category;
    :cond_4
    instance-of v2, v1, Lcom/tvbusa/encore/tv/LiveChannel;

    if-eqz v2, :cond_5

    .line 474
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Lcom/tvbusa/encore/tv/LiveChannel;

    .line 476
    .local v3, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/LiveChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/LiveChannel;->getImg()Ljava/lang/String;

    move-result-object v4

    const-string v8, "img"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/LiveChannel;->getAdConfigId()Ljava/lang/String;

    move-result-object v4

    const-string v8, "adConfigId"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/LiveChannel;->getVideoId()Ljava/lang/String;

    move-result-object v4

    const-string v8, "videoId"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 483
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    :cond_5
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Setting;

    if-eqz v2, :cond_11

    .line 484
    move-object v2, v1

    check-cast v2, Lcom/tvbusa/encore/tv/Setting;

    .line 485
    .local v2, "setting":Lcom/tvbusa/encore/tv/Setting;
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "UserProfile"

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 486
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "uid"

    const/4 v8, 0x0

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, "uid":Ljava/lang/String;
    const-string v10, "token"

    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 488
    .local v11, "token":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uid - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Login"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "token - "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "logout"

    if-ne v12, v13, :cond_6

    .line 492
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "\u5df2\u6210\u529f\u767b\u51fa\u5e33\u6236"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 493
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 494
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 497
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "account"

    if-ne v4, v5, :cond_8

    .line 498
    if-nez v9, :cond_7

    .line 499
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 501
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 502
    :cond_7
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/AccountActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 505
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 506
    :cond_8
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exclusive"

    if-ne v4, v5, :cond_a

    .line 507
    if-nez v9, :cond_9

    .line 508
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 510
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 511
    :cond_9
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 514
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 515
    :cond_a
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fav"

    if-ne v4, v5, :cond_c

    .line 516
    if-nez v9, :cond_b

    .line 517
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 519
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 520
    :cond_b
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 523
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 524
    :cond_c
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "history"

    if-ne v4, v5, :cond_e

    .line 525
    if-nez v9, :cond_d

    .line 526
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 528
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 529
    :cond_d
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/HistoryActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 532
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 533
    :cond_e
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "search"

    if-ne v4, v5, :cond_f

    .line 534
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/tv/SearchActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 538
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_f
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "about"

    if-ne v4, v5, :cond_10

    .line 539
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/tv/SerialNumberActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 543
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 544
    :cond_10
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/tv/InfoActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 552
    .end local v2    # "setting":Lcom/tvbusa/encore/tv/Setting;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "uid":Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    :cond_11
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 430
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
