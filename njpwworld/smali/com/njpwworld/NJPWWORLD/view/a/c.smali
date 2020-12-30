.class public Lcom/njpwworld/NJPWWORLD/view/a/c;
.super Landroid/app/DialogFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/a/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/njpwworld/NJPWWORLD/view/a/c$a;


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/c$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/c;->a:Lcom/njpwworld/NJPWWORLD/view/a/c$a;

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/a/c;)Lcom/njpwworld/NJPWWORLD/view/a/c$a;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/c;->a:Lcom/njpwworld/NJPWWORLD/view/a/c$a;

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/c;->a:Lcom/njpwworld/NJPWWORLD/view/a/c$a;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/c$a;->a()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0c0074

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x7f0a003e

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/c$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/a/c$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/c;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
