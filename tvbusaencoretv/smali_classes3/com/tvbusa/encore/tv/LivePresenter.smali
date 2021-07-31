.class public Lcom/tvbusa/encore/tv/LivePresenter;
.super Landroidx/leanback/widget/Presenter;
.source "LivePresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LivePresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "viewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "item"
        }
    .end annotation

    .line 26
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/LiveChannel;

    .line 27
    .local v0, "channel":Lcom/tvbusa/encore/tv/LiveChannel;
    iget-object v1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Lcom/tvbusa/encore/tv/LiveChannelCardView;

    .line 29
    .local v1, "cardView":Lcom/tvbusa/encore/tv/LiveChannelCardView;
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/LiveChannel;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/LiveChannelCardView;->setLogo(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 20
    const-string v0, "LivePresenter"

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    new-instance v1, Lcom/tvbusa/encore/tv/LiveChannelCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tvbusa/encore/tv/LiveChannelCardView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewHolder"
        }
    .end annotation

    .line 34
    const-string v0, "LivePresenter"

    const-string v1, "onUnbindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Lcom/tvbusa/encore/tv/LiveChannelCardView;

    .line 36
    .local v0, "cardView":Lcom/tvbusa/encore/tv/LiveChannelCardView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/LiveChannelCardView;->setText(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/LiveChannelCardView;->setLogo(Ljava/lang/String;)V

    .line 38
    return-void
.end method
