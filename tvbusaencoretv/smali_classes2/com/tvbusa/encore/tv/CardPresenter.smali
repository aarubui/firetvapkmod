.class public Lcom/tvbusa/encore/tv/CardPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "CardPresenter.java"


# static fields
.field private static final CARD_HEIGHT:I = 0x1c2

.field private static final CARD_WIDTH:I = 0x13b

.field private static final TAG:Ljava/lang/String; = "CardPresenter"

.field private static sDefaultBackgroundColor:I

.field private static sSelectedBackgroundColor:I


# instance fields
.field private mDefaultCardImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/leanback/widget/ImageCardView;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/leanback/widget/ImageCardView;
    .param p1, "x1"    # Z

    .line 31
    invoke-static {p0, p1}, Lcom/tvbusa/encore/tv/CardPresenter;->updateCardBackgroundColor(Landroidx/leanback/widget/ImageCardView;Z)V

    return-void
.end method

.method private static updateCardBackgroundColor(Landroidx/leanback/widget/ImageCardView;Z)V
    .locals 2
    .param p0, "view"    # Landroidx/leanback/widget/ImageCardView;
    .param p1, "selected"    # Z

    .line 41
    if-eqz p1, :cond_0

    sget v0, Lcom/tvbusa/encore/tv/CardPresenter;->sSelectedBackgroundColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/tvbusa/encore/tv/CardPresenter;->sDefaultBackgroundColor:I

    .line 44
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ImageCardView;->setBackgroundColor(I)V

    .line 45
    const v1, 0x7f0a012b

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "viewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 80
    move-object v0, p2

    check-cast v0, Lcom/tvbusa/encore/tv/Movie;

    .line 81
    .local v0, "movie":Lcom/tvbusa/encore/tv/Movie;
    iget-object v1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Landroidx/leanback/widget/ImageCardView;

    .line 83
    .local v1, "cardView":Landroidx/leanback/widget/ImageCardView;
    const-string v2, "CardPresenter"

    const-string v3, "onBindViewHolder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Movie;->getCardImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Movie;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ImageCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/Movie;->getStudio()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ImageCardView;->setContentText(Ljava/lang/CharSequence;)V

    .line 87
    const/16 v2, 0x13b

    const/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroidx/leanback/widget/ImageCardView;->setMainImageDimensions(II)V

    .line 88
    iget-object v2, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 89
    const-string v3, "https://1327020374.rsc.cdn77.org/update/CA/Large/TheDefected_Large.jpg"

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p0, Lcom/tvbusa/encore/tv/CardPresenter;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 92
    invoke-virtual {v1}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 94
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 50
    const-string v0, "CardPresenter"

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    nop

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060056

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/tvbusa/encore/tv/CardPresenter;->sDefaultBackgroundColor:I

    .line 54
    nop

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060129

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/tvbusa/encore/tv/CardPresenter;->sSelectedBackgroundColor:I

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/CardPresenter;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 63
    new-instance v0, Lcom/tvbusa/encore/tv/CardPresenter$1;

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tvbusa/encore/tv/CardPresenter$1;-><init>(Lcom/tvbusa/encore/tv/CardPresenter;Landroid/content/Context;)V

    .line 72
    .local v0, "cardView":Landroidx/leanback/widget/ImageCardView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setFocusable(Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    .line 74
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/CardPresenter;->updateCardBackgroundColor(Landroidx/leanback/widget/ImageCardView;Z)V

    .line 75
    new-instance v1, Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 98
    const-string v0, "CardPresenter"

    const-string v1, "onUnbindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroidx/leanback/widget/ImageCardView;

    .line 101
    .local v0, "cardView":Landroidx/leanback/widget/ImageCardView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setBadgeImage(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setMainImage(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method
