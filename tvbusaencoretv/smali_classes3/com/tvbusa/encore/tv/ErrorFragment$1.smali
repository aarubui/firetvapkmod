.class Lcom/tvbusa/encore/tv/ErrorFragment$1;
.super Ljava/lang/Object;
.source "ErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/ErrorFragment;->setErrorContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/ErrorFragment;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/ErrorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/ErrorFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/tvbusa/encore/tv/ErrorFragment$1;->this$0:Lcom/tvbusa/encore/tv/ErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/tvbusa/encore/tv/ErrorFragment$1;->this$0:Lcom/tvbusa/encore/tv/ErrorFragment;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/ErrorFragment$1;->this$0:Lcom/tvbusa/encore/tv/ErrorFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 48
    return-void
.end method
