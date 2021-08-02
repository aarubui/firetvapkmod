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

    .line 504
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/MainFragment$1;

    .line 504
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

    .line 507
    move-object v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/tvbusa/encore/tv/Series;

    const-string v3, "id"

    if-eqz v2, :cond_0

    .line 508
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/Series;

    .line 510
    .local v4, "series":Lcom/tvbusa/encore/tv/Series;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/Series;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 516
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "series":Lcom/tvbusa/encore/tv/Series;
    :cond_0
    instance-of v2, v1, Lcom/tvbusa/encore/tv/HistoryItem;

    if-eqz v2, :cond_1

    .line 517
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v4, v1

    check-cast v4, Lcom/tvbusa/encore/tv/HistoryItem;

    .line 519
    .local v4, "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
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

    .line 521
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 526
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "historyItem":Lcom/tvbusa/encore/tv/HistoryItem;
    :cond_1
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Category;

    const-string v3, "key"

    const-string v4, "name"

    if-eqz v2, :cond_2

    .line 527
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/CategoryActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v5, v1

    check-cast v5, Lcom/tvbusa/encore/tv/Category;

    .line 529
    .local v5, "category":Lcom/tvbusa/encore/tv/Category;
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/Category;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 534
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "category":Lcom/tvbusa/encore/tv/Category;
    :cond_2
    instance-of v2, v1, Lcom/tvbusa/encore/tv/LiveChannel;

    if-eqz v2, :cond_3

    .line 535
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .restart local v2    # "intent":Landroid/content/Intent;
    move-object v5, v1

    check-cast v5, Lcom/tvbusa/encore/tv/LiveChannel;

    .line 537
    .local v5, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/LiveChannel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/LiveChannel;->getImg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "img"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/LiveChannel;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6, v2}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 543
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    :cond_3
    instance-of v2, v1, Lcom/tvbusa/encore/tv/Setting;

    if-eqz v2, :cond_f

    .line 544
    move-object v2, v1

    check-cast v2, Lcom/tvbusa/encore/tv/Setting;

    .line 545
    .local v2, "setting":Lcom/tvbusa/encore/tv/Setting;
    iget-object v5, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "UserProfile"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 546
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "uid"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 547
    .local v9, "uid":Ljava/lang/String;
    const-string v10, "token"

    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 548
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

    .line 549
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "token - "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "logout"

    if-ne v12, v13, :cond_4

    .line 552
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "\u5df2\u6210\u529f\u767b\u51fa\u5e33\u6236"

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 553
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 554
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 556
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 557
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "account"

    if-ne v6, v7, :cond_6

    .line 558
    if-nez v9, :cond_5

    .line 559
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 561
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 562
    :cond_5
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/AccountActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 565
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 566
    :cond_6
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "exclusive"

    if-ne v6, v7, :cond_8

    .line 567
    if-nez v9, :cond_7

    .line 568
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 570
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 571
    :cond_7
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 574
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 575
    :cond_8
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fav"

    if-ne v6, v7, :cond_a

    .line 576
    if-nez v9, :cond_9

    .line 577
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 579
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 580
    :cond_9
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/ExclusiveActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 583
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 584
    :cond_a
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "history"

    if-ne v6, v7, :cond_c

    .line 585
    if-nez v9, :cond_b

    .line 586
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v6, Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 588
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 589
    :cond_b
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/tvbusa/encore/tv/HistoryActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    iget-object v4, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v4, v3}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 592
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 593
    :cond_c
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "search"

    if-ne v6, v7, :cond_d

    .line 594
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/tvbusa/encore/tv/SearchActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v6}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 598
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_d
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "about"

    if-ne v6, v7, :cond_e

    .line 599
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/tvbusa/encore/tv/SerialNumberActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 600
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v6}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 603
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 604
    :cond_e
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/tvbusa/encore/tv/InfoActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    iget-object v3, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v3, v6}, Lcom/tvbusa/encore/tv/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 612
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

    .line 504
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
