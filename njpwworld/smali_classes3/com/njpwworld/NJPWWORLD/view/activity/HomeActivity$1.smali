.class Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;->finish()V

    return-void
.end method
