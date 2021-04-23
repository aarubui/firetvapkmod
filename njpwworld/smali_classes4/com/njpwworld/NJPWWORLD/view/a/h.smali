.class public Lcom/njpwworld/NJPWWORLD/view/a/h;
.super Landroid/app/DialogFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/a/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/njpwworld/NJPWWORLD/d/g$a;

.field private c:Lcom/njpwworld/NJPWWORLD/view/a/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/d/g$a;Lcom/njpwworld/NJPWWORLD/view/a/h$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->b:Lcom/njpwworld/NJPWWORLD/d/g$a;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->c:Lcom/njpwworld/NJPWWORLD/view/a/h$a;

    return-void
.end method

.method private a()J
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/b;->a(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/a/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 6

    const v0, 0x7f0a0105

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0168

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a003f

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a0042

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance v5, Lcom/njpwworld/NJPWWORLD/view/a/h$1;

    invoke-direct {v5, p0}, Lcom/njpwworld/NJPWWORLD/view/a/h$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/h;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->b:Lcom/njpwworld/NJPWWORLD/d/g$a;

    sget-object v5, Lcom/njpwworld/NJPWWORLD/d/g$a;->c:Lcom/njpwworld/NJPWWORLD/d/g$a;

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->a:Landroid/content/Context;

    const v5, 0x7f0f00ba

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->b:Lcom/njpwworld/NJPWWORLD/d/g$a;

    sget-object v5, Lcom/njpwworld/NJPWWORLD/d/g$a;->b:Lcom/njpwworld/NJPWWORLD/d/g$a;

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->a:Landroid/content/Context;

    const v5, 0x7f0f00b9

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/h$2;

    invoke-direct {v1, p0, v0}, Lcom/njpwworld/NJPWWORLD/view/a/h$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/h;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/h$3;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/h$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/h;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->a:Landroid/content/Context;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/d/f;->a(Landroid/content/Context;J)Z

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/a/h;)J
    .locals 2

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/h;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/a/h;)Lcom/njpwworld/NJPWWORLD/view/a/h$a;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/h;->c:Lcom/njpwworld/NJPWWORLD/view/a/h$a;

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

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/a/h;->getActivity()Landroid/app/Activity;

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

    const v0, 0x7f0c007a

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->a(Landroid/app/Dialog;)V

    return-object p1
.end method
