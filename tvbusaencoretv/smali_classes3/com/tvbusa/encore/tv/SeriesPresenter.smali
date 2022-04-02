.class public Lcom/tvbusa/encore/tv/SeriesPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "SeriesPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeriesPresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
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

    .line 29
    instance-of v0, p2, Lcom/tvbusa/encore/tv/Series;

    if-eqz v0, :cond_1

    .line 30
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/Series;

    .line 31
    .local v0, "series":Lcom/tvbusa/encore/tv/Series;
    iget-object v1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Lcom/tvbusa/encore/tv/SeriesCardView;

    .line 33
    .local v1, "cardView":Lcom/tvbusa/encore/tv/SeriesCardView;
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Series;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Series;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/SeriesCardView;->setImage(Ljava/lang/String;)V

    .line 34
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/SeriesCardView;->setTxtVisibility(Ljava/lang/Boolean;)V

    .line 37
    .end local v0    # "series":Lcom/tvbusa/encore/tv/Series;
    .end local v1    # "cardView":Lcom/tvbusa/encore/tv/SeriesCardView;
    :cond_1
    instance-of v0, p2, Lcom/tvbusa/encore/tv/MoreButton;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Lcom/tvbusa/encore/tv/SeriesCardView;

    .line 39
    .local v0, "cardView":Lcom/tvbusa/encore/tv/SeriesCardView;
    const-string v1, "\u986f\u793a\u66f4\u591a"

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SeriesCardView;->setTxt(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SeriesCardView;->setTxtVisibility(Ljava/lang/Boolean;)V

    .line 43
    .end local v0    # "cardView":Lcom/tvbusa/encore/tv/SeriesCardView;
    :cond_2
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

    .line 22
    const-string v0, "SeriesPresenter"

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    new-instance v1, Lcom/tvbusa/encore/tv/SeriesCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tvbusa/encore/tv/SeriesCardView;-><init>(Landroid/content/Context;)V

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

    .line 47
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/tvbusa/encore/tv/SeriesCardView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Lcom/tvbusa/encore/tv/SeriesCardView;

    .line 49
    .local v0, "cardView":Lcom/tvbusa/encore/tv/SeriesCardView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SeriesCardView;->setImage(Ljava/lang/String;)V

    .line 51
    .end local v0    # "cardView":Lcom/tvbusa/encore/tv/SeriesCardView;
    :cond_0
    return-void
.end method
