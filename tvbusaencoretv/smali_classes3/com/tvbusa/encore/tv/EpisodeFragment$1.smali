.class Lcom/tvbusa/encore/tv/EpisodeFragment$1;
.super Ljava/lang/Object;
.source "EpisodeFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/EpisodeFragment;->workaroundFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/EpisodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/EpisodeFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$1;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focused",
            "direction"
        }
    .end annotation

    .line 73
    const/16 v0, 0x21

    if-ne p2, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tvbusa/encore/tv/EpisodeFragment$1;->this$0:Lcom/tvbusa/encore/tv/EpisodeFragment;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/EpisodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "viewToFocus":Landroid/view/View;
    return-object v0

    .line 77
    .end local v0    # "viewToFocus":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
