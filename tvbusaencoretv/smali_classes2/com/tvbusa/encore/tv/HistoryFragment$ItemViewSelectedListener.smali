.class final Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/HistoryFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/HistoryFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/HistoryFragment;Lcom/tvbusa/encore/tv/HistoryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/HistoryFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/HistoryFragment$1;

    .line 140
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/HistoryFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 7
    .param p1, "itemViewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroidx/leanback/widget/Row;

    .line 143
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/tvbusa/encore/tv/HistoryItem;

    if-eqz v0, :cond_0

    .line 144
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/HistoryItem;->getBanner()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "url":Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/HistoryItem;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "program":Ljava/lang/String;
    move-object v2, p2

    check-cast v2, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a0222

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 148
    .local v3, "infoView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-virtual {v4}, Lcom/tvbusa/encore/tv/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0a0224

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 149
    .local v4, "imageView":Landroid/widget/ImageView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, p0, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/HistoryFragment;

    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/HistoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 152
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "program":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "infoView":Landroid/widget/TextView;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/HistoryFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
