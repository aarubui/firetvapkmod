.class final Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/SearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SearchResultFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/SearchResultFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/SearchResultFragment;Lcom/tvbusa/encore/tv/SearchResultFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/SearchResultFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/SearchResultFragment$1;

    .line 98
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/SearchResultFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 3
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

    .line 101
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/tvbusa/encore/tv/Series;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "CategoryFragment"

    const-string v1, "Is Not Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Series;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SearchResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0263

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "titleView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
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

    .line 98
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/SearchResultFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
