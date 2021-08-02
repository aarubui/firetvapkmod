.class final Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "ExclusiveFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/ExclusiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;Lcom/tvbusa/encore/tv/ExclusiveFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/ExclusiveFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/ExclusiveFragment$1;

    .line 230
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 4
    .param p1, "itemViewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroidx/leanback/widget/Row;

    .line 233
    instance-of v0, p2, Lcom/tvbusa/encore/tv/Series;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p2

    check-cast v1, Lcom/tvbusa/encore/tv/Series;

    .line 236
    .local v1, "series":Lcom/tvbusa/encore/tv/Series;
    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Series;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Category"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 239
    iget-object v2, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-virtual {v2, v0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "series":Lcom/tvbusa/encore/tv/Series;
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
