.class final Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/HistoryFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/HistoryFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/HistoryFragment;Lcom/tvbusa/encore/tv/HistoryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/HistoryFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/HistoryFragment$1;

    .line 155
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/HistoryFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 3
    .param p1, "itemViewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroidx/leanback/widget/Row;

    .line 158
    instance-of v0, p2, Lcom/tvbusa/encore/tv/HistoryItem;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p2

    check-cast v1, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/HistoryItem;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Category"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 164
    iget-object v1, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-virtual {v1, v0}, Lcom/tvbusa/encore/tv/HistoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 166
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
