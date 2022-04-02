.class public Lcom/tvbusa/encore/tv/SliderAdapter;
.super Lcom/smarteist/autoimageslider/SliderViewAdapter;
.source "SliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smarteist/autoimageslider/SliderViewAdapter<",
        "Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mSliderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/smarteist/autoimageslider/SliderViewAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->mSliderItems:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/SliderAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SliderAdapter;

    .line 21
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "sliderItem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliderItem"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->mSliderItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SliderAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public deleteItem(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->mSliderItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SliderAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->mSliderItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/smarteist/autoimageslider/SliderViewAdapter$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "viewHolder",
            "position"
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;

    invoke-virtual {p0, p1, p2}, Lcom/tvbusa/encore/tv/SliderAdapter;->onBindViewHolder(Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;I)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "viewHolder",
            "position"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->mSliderItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "sliderItem":Ljava/lang/String;
    iget-object v1, p1, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;->itemView:Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p1, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;->imageViewBackground:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 65
    iget-object v1, p1, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tvbusa/encore/tv/SliderAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/tvbusa/encore/tv/SliderAdapter$1;-><init>(Lcom/tvbusa/encore/tv/SliderAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/smarteist/autoimageslider/SliderViewAdapter$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/SliderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;
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

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "inflate":Landroid/view/View;
    new-instance v1, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;

    invoke-direct {v1, p0, v0}, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;-><init>(Lcom/tvbusa/encore/tv/SliderAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public renewItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliderItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "sliderItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SliderAdapter;->mSliderItems:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SliderAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method
