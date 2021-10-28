.class public abstract Lcom/njpwworld/NJPWWORLD/view/b/b;
.super Landroid/support/v17/leanback/app/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v17/leanback/app/j;"
    }
.end annotation


# instance fields
.field protected b:Landroid/app/Activity;

.field protected c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/b;->b:Landroid/app/Activity;

    :try_start_0
    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/b;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/j;->onAttach(Landroid/app/Activity;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s contract interface."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/j;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/b;->setHasOptionsMenu(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/b/b;->setRetainInstance(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/j;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/j;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/b;->c:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/j;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/b;->c:Z

    return-void
.end method
