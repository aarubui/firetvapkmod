.class public Lcom/tvbusa/encore/tv/CategorySeriesPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "CategorySeriesPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CategorySeriesPresenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4
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

    check-cast v0, Lcom/tvbusa/encore/tv/Series;

    .line 27
    .local v0, "series":Lcom/tvbusa/encore/tv/Series;
    iget-object v1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Lcom/tvbusa/encore/tv/CategorySeriesCardView;

    .line 29
    .local v1, "cardView":Lcom/tvbusa/encore/tv/CategorySeriesCardView;
    const-string v2, "CategorySeriesPresenter"

    const-string v3, "onBindViewHolder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Series;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Series;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/CategorySeriesCardView;->setImage(Ljava/lang/String;)V

    .line 33
    :cond_0
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
    const-string v0, "CategorySeriesPresenter"

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    new-instance v1, Lcom/tvbusa/encore/tv/CategorySeriesCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tvbusa/encore/tv/CategorySeriesCardView;-><init>(Landroid/content/Context;)V

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

    .line 37
    const-string v0, "CategorySeriesPresenter"

    const-string v1, "onUnbindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Lcom/tvbusa/encore/tv/CategorySeriesCardView;

    .line 39
    .local v0, "cardView":Lcom/tvbusa/encore/tv/CategorySeriesCardView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/CategorySeriesCardView;->setImage(Ljava/lang/String;)V

    .line 40
    return-void
.end method
