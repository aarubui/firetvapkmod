.class Lcom/njpwworld/NJPWWORLD/view/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v17/leanback/widget/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/f;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/f;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/b/f$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/f;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SearchFragment"

    const-string v2, "Cannot find activity for speech recognizer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
