.class public Lcom/tvbusa/encore/tv/TopBannerCardView;
.super Landroidx/leanback/widget/BaseCardView;
.source "TopBannerCardView.java"


# instance fields
.field private _logoView:Landroid/widget/ImageView;

.field private _titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/TopBannerCardView;->buildCardView()V

    .line 22
    return-void
.end method


# virtual methods
.method protected buildCardView()V
    .locals 2

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/TopBannerCardView;->setClickable(Z)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/TopBannerCardView;->setFocusable(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/TopBannerCardView;->setFocusableInTouchMode(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/TopBannerCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0e006d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const v1, 0x7f0b0097

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/TopBannerCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/TopBannerCardView;->_titleView:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/TopBannerCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/TopBannerCardView;->_logoView:Landroid/widget/ImageView;

    .line 32
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/TopBannerCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/TopBannerCardView;->_logoView:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 43
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/tvbusa/encore/tv/TopBannerCardView;->_titleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
