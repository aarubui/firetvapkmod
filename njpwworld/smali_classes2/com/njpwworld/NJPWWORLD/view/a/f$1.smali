.class Lcom/njpwworld/NJPWWORLD/view/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/f;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/njpwworld/NJPWWORLD/view/a/a;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/f$1$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$1$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f$1;)V

    invoke-direct {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/a;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "NjpwSignUpDialog"

    invoke-virtual {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
