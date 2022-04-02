.class public Lcom/tvbusa/encore/tv/HistoryCardView;
.super Landroidx/leanback/widget/BaseCardView;
.source "HistoryCardView.java"


# instance fields
.field private _imageView:Landroid/widget/ImageView;


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

    .line 18
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/HistoryCardView;->buildCardView()V

    .line 20
    return-void
.end method


# virtual methods
.method protected buildCardView()V
    .locals 2

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/HistoryCardView;->setClickable(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/HistoryCardView;->setFocusable(Z)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/HistoryCardView;->setFocusableInTouchMode(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/HistoryCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0e0068

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    const v1, 0x7f0b017a

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/HistoryCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tvbusa/encore/tv/HistoryCardView;->_imageView:Landroid/widget/ImageView;

    .line 29
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
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

    .line 32
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/HistoryCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/HistoryCardView;->_imageView:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 36
    return-void
.end method
