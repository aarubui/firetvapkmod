.class final Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "ExclusiveFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/ExclusiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;Lcom/tvbusa/encore/tv/ExclusiveFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/ExclusiveFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/ExclusiveFragment$1;

    .line 216
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 5
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

    .line 219
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/tvbusa/encore/tv/Series;

    if-eqz v0, :cond_0

    .line 220
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Series;->getBanner()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "url":Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Series;->getName()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a02a4

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 223
    .local v2, "infoView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a02a6

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 224
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v4, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 227
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "infoView":Landroid/widget/TextView;
    .end local v3    # "imageView":Landroid/widget/ImageView;
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

    .line 216
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/ExclusiveFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
