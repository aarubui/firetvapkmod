.class public Lcom/tvbusa/encore/tv/EpisodeCardView;
.super Landroidx/leanback/widget/BaseCardView;
.source "EpisodeCardView.java"


# instance fields
.field private _imageView:Landroid/widget/ImageView;

.field private _infoView:Landroid/widget/TextView;

.field private _titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeCardView;->buildCardView()V

    .line 23
    return-void
.end method


# virtual methods
.method protected buildCardView()V
    .locals 2

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/EpisodeCardView;->setClickable(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/EpisodeCardView;->setFocusable(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/EpisodeCardView;->setFocusableInTouchMode(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d004b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/EpisodeCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeCardView;->_imageView:Landroid/widget/ImageView;

    .line 32
    const v1, 0x7f0a00ca

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/EpisodeCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeCardView;->_titleView:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0a00c9

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/EpisodeCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeCardView;->_infoView:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/EpisodeCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/EpisodeCardView;->_imageView:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 41
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeCardView;->_titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeCardView;->_infoView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
