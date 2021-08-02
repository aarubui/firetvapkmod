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

    .line 503
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/MainFragment$1;

    .line 503
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

    .line 506
    move-object v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/tvbusa/encore/tv/Series;

    const-string v3, "id"

    if-eqz v2, :cond_0

    .line 507
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/Series;

    .line 509
    .local v4, "series":Lcom/tvbusa/encore/tv/Series;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/Series;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 515
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/tv/Series;
    :cond_0
    instance-of v2, v1, Lcom/tvbusa/encore/tv/HistoryItem;

    if-eqz v2, :cond_1

    .line 516
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/HistoryItem;

    .line 518
    .local v4, "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "History - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WatchHistory"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 525
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    :cond_1
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Category;

    const-string v3, "key"

    const-string v4, "name"

    if-eqz v2, :cond_2

    .line 526
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/CategoryActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v5, v1

    check-cast v5, Lcom/tvbusa/encore/tv/Category;

    .line 528
    .local v5, "category":Lcom/tvbusa/encore/tv/Category;
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/Category;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 533
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "category":Lcom/tvbusa/encore/tv/Category;
    :cond_2
    instance-of v2, v1, Lcom/tvbusa/encore/tv/LiveChannel;

    if-eqz v2, :cond_3

    .line 534
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v5, v1

    check-cast v5, Lcom/tvbusa/encore/tv/LiveChannel;

    .line 536
    .local v5, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/LiveChannel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/LiveChannel;->getImg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "img"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/LiveChannel;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 542
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    :cond_3
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Setting;

    if-eqz v2, :cond_f

    .line 543
    move-object v2, v1

    check-cast v2, Lcom/tvbusa/encore/tv/Setting;

    .line 544
    .local v2, "setting":Lcom/tvbusa/encore/tv/Setting;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "UserProfile"

    invoke-virtual {v5, v7, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 545
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "uid"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 546
    .local v9, "uid":Ljava/lang/String;
    const-string v10, "token"

    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 547
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

    .line 548
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "token - "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "logout"

    if-ne v12, v13, :cond_4

    .line 551
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "\u5df2\u6210\u529f\u767b\u51fa\u5e33\u6236"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 552
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 553
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 556
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "account"

    if-ne v6, v7, :cond_6

    .line 557
    if-nez v9, :cond_5

    .line 558
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 560
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 561
    :cond_5
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/AccountActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 564
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 565
    :cond_6
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "exclusive"

    if-ne v6, v7, :cond_8

    .line 566
    if-nez v9, :cond_7

    .line 567
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 569
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 570
    :cond_7
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 573
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 574
    :cond_8
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fav"

    if-ne v6, v7, :cond_a

    .line 575
    if-nez v9, :cond_9

    .line 576
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 578
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 579
    :cond_9
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 582
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 583
    :cond_a
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "history"

    if-ne v6, v7, :cond_c

    .line 584
    if-nez v9, :cond_b

    .line 585
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 587
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 588
    :cond_b
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/HistoryActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 591
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 592
    :cond_c
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "search"

    if-ne v6, v7, :cond_d

    .line 593
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/tvbusa/encore/tv/SearchActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v6}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 597
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_d
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "about"

    if-ne v6, v7, :cond_e

    .line 598
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/tvbusa/encore/tv/SerialNumberActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v6}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 602
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 603
    :cond_e
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/tvbusa/encore/tv/InfoActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v6}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 611
    .end local v2    # "setting":Lcom/tvbusa/encore/tv/Setting;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "uid":Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    :cond_f
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 503
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
