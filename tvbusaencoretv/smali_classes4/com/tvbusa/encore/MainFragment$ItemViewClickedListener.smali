.class final Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/MainFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/MainFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/MainFragment;Lcom/tvbusa/encore/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/MainFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/MainFragment$1;

    .line 431
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 15
    .param p1, "itemViewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroidx/leanback/widget/Row;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 434
    move-object v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/tvbusa/encore/Series;

    const-string v3, "id"

    if-eqz v2, :cond_0

    .line 435
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/Series;

    .line 437
    .local v4, "series":Lcom/tvbusa/encore/Series;
    invoke-virtual {v4}, Lcom/tvbusa/encore/Series;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 441
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/Series;
    :cond_0
    instance-of v2, v1, Lcom/tvbusa/encore/TopBannerSeries;

    if-eqz v2, :cond_1

    .line 442
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/TopBannerSeries;

    .line 444
    .local v4, "series":Lcom/tvbusa/encore/TopBannerSeries;
    invoke-virtual {v4}, Lcom/tvbusa/encore/TopBannerSeries;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 448
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/TopBannerSeries;
    :cond_1
    instance-of v2, v1, Lcom/tvbusa/encore/MoreButton;

    const-string v4, "type"

    const/4 v5, 0x0

    const-string v6, "key"

    const-string v7, "name"

    if-eqz v2, :cond_2

    .line 449
    new-instance v2, Landroid/content/Intent;

    iget-object v8, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/tvbusa/encore/CategoryActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/MoreButton;

    .line 451
    .local v8, "btn":Lcom/tvbusa/encore/MoreButton;
    invoke-virtual {v8}, Lcom/tvbusa/encore/MoreButton;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    invoke-virtual {v8}, Lcom/tvbusa/encore/MoreButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    iget-object v9, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v9, v2}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 457
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "btn":Lcom/tvbusa/encore/MoreButton;
    :cond_2
    instance-of v2, v1, Lcom/tvbusa/encore/HistoryItem;

    if-eqz v2, :cond_3

    .line 458
    new-instance v2, Landroid/content/Intent;

    iget-object v8, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/tvbusa/encore/SeriesActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/HistoryItem;

    .line 460
    .local v8, "historyItem":Lcom/tvbusa/encore/HistoryItem;
    invoke-virtual {v8}, Lcom/tvbusa/encore/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "History - "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/tvbusa/encore/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "WatchHistory"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v3, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v3, v2}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 465
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "historyItem":Lcom/tvbusa/encore/HistoryItem;
    :cond_3
    instance-of v2, v1, Lcom/tvbusa/encore/Category;

    if-eqz v2, :cond_4

    .line 466
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v8, Lcom/tvbusa/encore/CategoryActivity;

    invoke-direct {v2, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Lcom/tvbusa/encore/Category;

    .line 468
    .local v3, "category":Lcom/tvbusa/encore/Category;
    invoke-virtual {v3}, Lcom/tvbusa/encore/Category;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {v3}, Lcom/tvbusa/encore/Category;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const/4 v8, 0x1

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    iget-object v4, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v4, v2}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 474
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "category":Lcom/tvbusa/encore/Category;
    :cond_4
    instance-of v2, v1, Lcom/tvbusa/encore/LiveChannel;

    if-eqz v2, :cond_5

    .line 475
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tvbusa/encore/BCOVLivePlayerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Lcom/tvbusa/encore/LiveChannel;

    .line 477
    .local v3, "channel":Lcom/tvbusa/encore/LiveChannel;
    invoke-virtual {v3}, Lcom/tvbusa/encore/LiveChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v3}, Lcom/tvbusa/encore/LiveChannel;->getImg()Ljava/lang/String;

    move-result-object v4

    const-string v8, "img"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-virtual {v3}, Lcom/tvbusa/encore/LiveChannel;->getAdConfigId()Ljava/lang/String;

    move-result-object v4

    const-string v8, "adConfigId"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {v3}, Lcom/tvbusa/encore/LiveChannel;->getVideoId()Ljava/lang/String;

    move-result-object v4

    const-string v8, "videoId"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v4, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v4, v2}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 484
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "channel":Lcom/tvbusa/encore/LiveChannel;
    :cond_5
    instance-of v2, v1, Lcom/tvbusa/encore/Setting;

    if-eqz v2, :cond_11

    .line 485
    move-object v2, v1

    check-cast v2, Lcom/tvbusa/encore/Setting;

    .line 486
    .local v2, "setting":Lcom/tvbusa/encore/Setting;
    iget-object v3, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "UserProfile"

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 487
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "uid"

    const/4 v8, 0x0

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 488
    .local v9, "uid":Ljava/lang/String;
    const-string v10, "token"

    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 489
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

    .line 490
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "token - "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "logout"

    if-ne v12, v13, :cond_6

    .line 493
    iget-object v6, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "\u5df2\u6210\u529f\u767b\u51fa\u5e33\u6236"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 494
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 495
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "account"

    if-ne v4, v5, :cond_8

    .line 499
    if-nez v9, :cond_7

    .line 500
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 502
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 503
    :cond_7
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/AccountActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 506
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 507
    :cond_8
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exclusive"

    if-ne v4, v5, :cond_a

    .line 508
    if-nez v9, :cond_9

    .line 509
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 511
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 512
    :cond_9
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/ExclusiveActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 515
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 516
    :cond_a
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fav"

    if-ne v4, v5, :cond_c

    .line 517
    if-nez v9, :cond_b

    .line 518
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 520
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 521
    :cond_b
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/ExclusiveActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 524
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 525
    :cond_c
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "history"

    if-ne v4, v5, :cond_e

    .line 526
    if-nez v9, :cond_d

    .line 527
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 529
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 530
    :cond_d
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/HistoryActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 533
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 534
    :cond_e
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "search"

    if-ne v4, v5, :cond_f

    .line 535
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/SearchActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 539
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_f
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "about"

    if-ne v4, v5, :cond_10

    .line 540
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/SerialNumberActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 544
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 545
    :cond_10
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/InfoActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 546
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-virtual {v2}, Lcom/tvbusa/encore/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    iget-object v5, v0, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 553
    .end local v2    # "setting":Lcom/tvbusa/encore/Setting;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 431
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/MainFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
