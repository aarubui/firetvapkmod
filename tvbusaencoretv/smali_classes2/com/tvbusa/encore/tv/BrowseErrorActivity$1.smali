.class Lcom/tvbusa/encore/tv/BrowseErrorActivity$1;
.super Ljava/lang/Object;
.source "BrowseErrorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BrowseErrorActivity;->testError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BrowseErrorActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BrowseErrorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BrowseErrorActivity;

    .line 64
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity$1;->this$0:Lcom/tvbusa/encore/tv/BrowseErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity$1;->this$0:Lcom/tvbusa/encore/tv/BrowseErrorActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity$1;->this$0:Lcom/tvbusa/encore/tv/BrowseErrorActivity;

    .line 69
    invoke-static {v1}, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->access$000(Lcom/tvbusa/encore/tv/BrowseErrorActivity;)Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 71
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity$1;->this$0:Lcom/tvbusa/encore/tv/BrowseErrorActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->access$100(Lcom/tvbusa/encore/tv/BrowseErrorActivity;)Lcom/tvbusa/encore/tv/ErrorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setErrorContent()V

    .line 72
    return-void
.end method
