.class public Lcom/njpwworld/NJPWWORLD/view/a/d;
.super Landroid/app/DialogFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/view/a/d$b;,
        Lcom/njpwworld/NJPWWORLD/view/a/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/njpwworld/NJPWWORLD/view/a/d$b;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/d$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->b:Lcom/njpwworld/NJPWWORLD/view/a/d$b;

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->k:I

    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->e:Landroid/widget/TextView;

    const v1, 0x7f0f0086

    invoke-virtual {p0, v1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a00e6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/d$a;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/d$a;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$a;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/a/a;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/njpwworld/NJPWWORLD/a/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/f;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/njpwworld/NJPWWORLD/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a00e4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/a/d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/d;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/njpwworld/NJPWWORLD/d/f;->g(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->b:Lcom/njpwworld/NJPWWORLD/view/a/d$b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d$b;->a()V

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a0151

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/d$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a0152

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/d$2;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$2;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->i:Landroid/widget/Button;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/d$3;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$3;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->j:Landroid/widget/Button;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/d$4;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$4;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    const v1, 0x7f0a011e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/a/d$5;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/a/d$5;-><init>(Lcom/njpwworld/NJPWWORLD/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic d(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->g:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic e(Lcom/njpwworld/NJPWWORLD/view/a/d;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->h:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic f(Lcom/njpwworld/NJPWWORLD/view/a/d;)I
    .locals 0

    iget p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->k:I

    return p0
.end method

.method static synthetic g(Lcom/njpwworld/NJPWWORLD/view/a/d;)Lcom/njpwworld/NJPWWORLD/view/a/d$b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->b:Lcom/njpwworld/NJPWWORLD/view/a/d$b;

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->b:Lcom/njpwworld/NJPWWORLD/view/a/d$b;

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/d$b;->b()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->a()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/a/d;->b()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/d;->d:Landroid/app/Dialog;

    return-object p1
.end method
