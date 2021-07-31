.class public Lcom/tvbusa/encore/tv/CategoryPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "CategoryPresenter.java"


# static fields
.field private static final CARD_HEIGHT:I = 0x186

.field private static final CARD_WIDTH:I = 0x118

.field private static final TAG:Ljava/lang/String; = "CategoryPresenter"

.field private static sDefaultBackgroundColor:I

.field private static sDefaultTextColor:I

.field private static sSelectedBackgroundColor:I

.field private static sSelectedTextColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method

.method private static updateCardBackgroundColor(Landroidx/leanback/widget/ImageCardView;Z)V
    .locals 3
    .param p0, "view"    # Landroidx/leanback/widget/ImageCardView;
    .param p1, "selected"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "selected"
        }
    .end annotation

    .line 26
    if-eqz p1, :cond_0

    sget v0, Lcom/tvbusa/encore/tv/CategoryPresenter;->sSelectedBackgroundColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/tvbusa/encore/tv/CategoryPresenter;->sDefaultBackgroundColor:I

    .line 27
    .local v0, "color":I
    :goto_0
    if-eqz p1, :cond_1

    sget v1, Lcom/tvbusa/encore/tv/CategoryPresenter;->sSelectedTextColor:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/tvbusa/encore/tv/CategoryPresenter;->sDefaultTextColor:I

    .line 30
    .local v1, "textColor":I
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ImageCardView;->setBackgroundColor(I)V

    .line 31
    const v2, 0x7f0a0165

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    const v2, 0x7f0a02a9

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
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

    .line 46
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/Category;

    .line 47
    .local v0, "category":Lcom/tvbusa/encore/tv/Category;
    iget-object v1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Lcom/tvbusa/encore/tv/CategoryCardView;

    .line 50
    .local v1, "cardView":Lcom/tvbusa/encore/tv/CategoryCardView;
    const-string v2, "CategoryPresenter"

    const-string v3, "onBindViewHolder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/CategoryCardView;->setText(Ljava/lang/String;)V

    .line 54
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

    .line 40
    const-string v0, "CategoryPresenter"

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    new-instance v1, Lcom/tvbusa/encore/tv/CategoryCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tvbusa/encore/tv/CategoryCardView;-><init>(Landroid/content/Context;)V

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

    .line 58
    const-string v0, "CategoryPresenter"

    const-string v1, "onUnbindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Lcom/tvbusa/encore/tv/CategoryCardView;

    .line 60
    .local v0, "cardView":Lcom/tvbusa/encore/tv/CategoryCardView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/CategoryCardView;->setText(Ljava/lang/String;)V

    .line 61
    return-void
.end method
