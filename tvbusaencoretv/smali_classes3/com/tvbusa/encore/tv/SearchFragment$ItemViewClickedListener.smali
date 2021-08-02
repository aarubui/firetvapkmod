.class final Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/SearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/SearchFragment;Lcom/tvbusa/encore/tv/SearchFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/SearchFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/SearchFragment$1;

    .line 110
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;-><init>(Lcom/tvbusa/encore/tv/SearchFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 4
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

    .line 115
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/SearchFragment;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/SearchFragment;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p2

    check-cast v1, Lcom/tvbusa/encore/tv/SearchSeries;

    .line 118
    .local v1, "series":Lcom/tvbusa/encore/tv/SearchSeries;
    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SearchSeries;->getId()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "id":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;->this$0:Lcom/tvbusa/encore/tv/SearchFragment;

    invoke-virtual {v3, v0}, Lcom/tvbusa/encore/tv/SearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 135
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

    .line 110
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/SearchFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
