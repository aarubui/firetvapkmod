.class public Lcom/njpwworld/NJPWWORLD/view/a/e;
.super Landroid/app/DialogFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/njpwworld/NJPWWORLD/view/a/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/e$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/e;->b:Lcom/njpwworld/NJPWWORLD/view/a/e$a;

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/a/e;)Lcom/njpwworld/NJPWWORLD/view/a/e$a;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/e;->b:Lcom/njpwworld/NJPWWORLD/view/a/e$a;

    return-object p0
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 2

    const v0, 0x7f0a0040

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0041

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/e$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/e$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/e$2;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/a/e$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/a/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/e;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/a/e;->getActivity()Landroid/app/Activity;

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

    const v0, 0x7f0c0076

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/a/e;->a(Landroid/app/Dialog;)V

    return-object p1
.end method
