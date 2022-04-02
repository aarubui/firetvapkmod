.class Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;
.super Lcom/smarteist/autoimageslider/SliderViewAdapter$ViewHolder;
.source "SliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/SliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SliderAdapterVH"
.end annotation


# instance fields
.field imageGifContainer:Landroid/widget/ImageView;

.field imageViewBackground:Landroid/widget/ImageView;

.field itemView:Landroid/view/View;

.field textViewDescription:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tvbusa/encore/tv/SliderAdapter;


# direct methods
.method public constructor <init>(Lcom/tvbusa/encore/tv/SliderAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SliderAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;->this$0:Lcom/tvbusa/encore/tv/SliderAdapter;

    .line 87
    invoke-direct {p0, p2}, Lcom/smarteist/autoimageslider/SliderViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    const v0, 0x7f0b0195

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;->imageViewBackground:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0b0196

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;->imageGifContainer:Landroid/widget/ImageView;

    .line 91
    iput-object p2, p0, Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;->itemView:Landroid/view/View;

    .line 92
    return-void
.end method
