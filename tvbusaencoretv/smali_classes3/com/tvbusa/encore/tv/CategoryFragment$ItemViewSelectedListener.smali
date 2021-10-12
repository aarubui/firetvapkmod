.class final Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "CategoryFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/CategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/CategoryFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/CategoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/CategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/CategoryFragment;Lcom/tvbusa/encore/tv/CategoryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/CategoryFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/CategoryFragment$1;

    .line 122
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/CategoryFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 7
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

    .line 125
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/tvbusa/encore/tv/Series;

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "CategoryFragment"

    const-string v1, "Is Not Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Series;->getBanner()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "url":Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Series;->getName()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Series;->getInfo()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/CategoryFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/CategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a02b9

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    .local v3, "titleView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/CategoryFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/CategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0a02b8

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 132
    .local v4, "infoView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/CategoryFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/CategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0a02ba

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 134
    .local v5, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v6, p0, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/CategoryFragment;

    invoke-virtual {v6}, Lcom/tvbusa/encore/tv/CategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 136
    invoke-virtual {v6, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/RequestBuilder;

    .line 139
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 141
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "titleView":Landroid/widget/TextView;
    .end local v4    # "infoView":Landroid/widget/TextView;
    .end local v5    # "imageView":Landroid/widget/ImageView;
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

    .line 122
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/CategoryFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
