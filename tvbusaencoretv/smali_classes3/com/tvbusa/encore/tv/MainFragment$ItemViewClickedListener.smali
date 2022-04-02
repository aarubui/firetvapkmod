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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/MainFragment$1;

    .line 445
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

    .line 448
    move-object v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/tvbusa/encore/tv/Series;

    const-string v3, "id"

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/Series;

    .line 451
    .local v4, "series":Lcom/tvbusa/encore/tv/Series;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/Series;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 455
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/tv/Series;
    :cond_0
    instance-of v2, v1, Lcom/tvbusa/encore/tv/TopBannerSeries;

    if-eqz v2, :cond_1

    .line 456
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/TopBannerSeries;

    .line 458
    .local v4, "series":Lcom/tvbusa/encore/tv/TopBannerSeries;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/TopBannerSeries;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 462
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/tv/TopBannerSeries;
    :cond_1
    instance-of v2, v1, Lcom/tvbusa/encore/tv/MoreButton;

    const-string v4, "type"

    const/4 v5, 0x0

    const-string v6, "key"

    const-string v7, "name"

    if-eqz v2, :cond_2

    .line 463
    new-instance v2, Landroid/content/Intent;

    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/tvbusa/encore/tv/CategoryActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/tv/MoreButton;

    .line 465
    .local v8, "btn":Lcom/tvbusa/encore/tv/MoreButton;
    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MoreButton;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MoreButton;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v9, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v9, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 471
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "btn":Lcom/tvbusa/encore/tv/MoreButton;
    :cond_2
    instance-of v2, v1, Lcom/tvbusa/encore/tv/HistoryItem;

    if-eqz v2, :cond_3

    .line 472
    new-instance v2, Landroid/content/Intent;

    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/tv/HistoryItem;

    .line 474
    .local v8, "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
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

    .line 476
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 479
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    :cond_3
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Category;

    if-eqz v2, :cond_4

    .line 480
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v8, Lcom/tvbusa/encore/tv/CategoryActivity;

    invoke-direct {v2, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Lcom/tvbusa/encore/tv/Category;

    .line 482
    .local v3, "category":Lcom/tvbusa/encore/tv/Category;
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Category;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const/4 v8, 0x1

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 488
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "category":Lcom/tvbusa/encore/tv/Category;
    :cond_4
    instance-of v2, v1, Lcom/tvbusa/encore/tv/LiveChannel;

    if-eqz v2, :cond_5

    .line 489
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Lcom/tvbusa/encore/tv/LiveChannel;

    .line 491
    .local v3, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/LiveChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/LiveChannel;->getImg()Ljava/lang/String;

    move-result-object v4

    const-string v8, "img"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/LiveChannel;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v8, "url"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 497
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    :cond_5
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Setting;

    if-eqz v2, :cond_11

    .line 498
    move-object v2, v1

    check-cast v2, Lcom/tvbusa/encore/tv/Setting;

    .line 499
    .local v2, "setting":Lcom/tvbusa/encore/tv/Setting;
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "UserProfile"

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 500
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "uid"

    const/4 v8, 0x0

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 501
    .local v9, "uid":Ljava/lang/String;
    const-string v10, "token"

    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 502
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

    .line 503
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "token - "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "logout"

    if-ne v12, v13, :cond_6

    .line 506
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "\u5df2\u6210\u529f\u767b\u51fa\u5e33\u6236"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 507
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 508
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 511
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "account"

    if-ne v4, v5, :cond_8

    .line 512
    if-nez v9, :cond_7

    .line 513
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 515
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 516
    :cond_7
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/AccountActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 519
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 520
    :cond_8
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exclusive"

    if-ne v4, v5, :cond_a

    .line 521
    if-nez v9, :cond_9

    .line 522
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 524
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 525
    :cond_9
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 528
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 529
    :cond_a
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fav"

    if-ne v4, v5, :cond_c

    .line 530
    if-nez v9, :cond_b

    .line 531
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 533
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 534
    :cond_b
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 537
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 538
    :cond_c
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "history"

    if-ne v4, v5, :cond_e

    .line 539
    if-nez v9, :cond_d

    .line 540
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 542
    .end local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 543
    :cond_d
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/HistoryActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 546
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 547
    :cond_e
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "search"

    if-ne v4, v5, :cond_f

    .line 548
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/tv/SearchActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 552
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_f
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "about"

    if-ne v4, v5, :cond_10

    .line 553
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/tv/SerialNumberActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 557
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 558
    :cond_10
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v8, Lcom/tvbusa/encore/tv/InfoActivity;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 566
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

    .line 445
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
