.class public Lcom/njpwworld/NJPWWORLD/view/a/f;
.super Landroid/app/DialogFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/a/f$b;,
        Lcom/njpwworld/NJPWWORLD/view/a/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/njpwworld/NJPWWORLD/view/a/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/njpwworld/NJPWWORLD/view/a/f$b;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/RadioGroup;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/f$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->c:Lcom/njpwworld/NJPWWORLD/view/a/f$b;

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/a/f;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->j:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/a/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->n:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a0060

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->f:Landroid/widget/EditText;

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/a/f$a;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a0065

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->g:Landroid/widget/EditText;

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/a/f$a;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a0064

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->h:Landroid/widget/EditText;

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/a/f$a;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a0063

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->i:Landroid/widget/EditText;

    new-instance v3, Lcom/njpwworld/NJPWWORLD/view/a/f$a;

    invoke-direct {v3, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a005c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a005f

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->m:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a0141

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    const v3, 0x7f0a0143

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0f0022

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/f$6;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$6;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->j:Landroid/widget/Button;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/f$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->m:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/f$2;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->k:Landroid/widget/Button;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/f$3;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->l:Landroid/widget/Button;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/f$4;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/a/f;)Z
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->d()V

    return-void
.end method

.method private c()Z
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->o:Landroid/widget/TextView;

    const v2, 0x7f0f00dd

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->o:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->o:Landroid/widget/TextView;

    const v2, 0x7f0f00dc

    goto :goto_0
.end method

.method static synthetic d(Lcom/njpwworld/NJPWWORLD/view/a/f;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method private d()V
    .locals 10

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/f;->u(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->e()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/njpwworld/NJPWWORLD/view/a/f$5;

    invoke-direct {v9, p0}, Lcom/njpwworld/NJPWWORLD/view/a/f$5;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V

    invoke-static/range {v2 .. v9}, Lcom/njpwworld/NJPWWORLD/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    return-void
.end method

.method static synthetic e(Lcom/njpwworld/NJPWWORLD/view/a/f;)Lcom/njpwworld/NJPWWORLD/view/a/f$b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->c:Lcom/njpwworld/NJPWWORLD/view/a/f$b;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->m:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a0062

    if-ne v0, v1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/njpwworld/NJPWWORLD/view/a/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->c:Lcom/njpwworld/NJPWWORLD/view/a/f$b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/f$b;->b()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->a()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/f;->b()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f;->d:Landroid/app/Dialog;

    return-object p1
.end method
