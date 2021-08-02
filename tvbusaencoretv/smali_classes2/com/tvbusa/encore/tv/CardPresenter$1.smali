.class Lcom/tvbusa/encore/tv/CardPresenter$1;
.super Landroidx/leanback/widget/ImageCardView;
.source "CardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/CardPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/CardPresenter;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/CardPresenter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/CardPresenter;
    .param p2, "x0"    # Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/tvbusa/encore/tv/CardPresenter$1;->this$0:Lcom/tvbusa/encore/tv/CardPresenter;

    invoke-direct {p0, p2}, Landroidx/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 67
    invoke-static {p0, p1}, Lcom/tvbusa/encore/tv/CardPresenter;->access$000(Landroidx/leanback/widget/ImageCardView;Z)V

    .line 68
    invoke-super {p0, p1}, Landroidx/leanback/widget/ImageCardView;->setSelected(Z)V

    .line 69
    return-void
.end method
