.class public Lcom/njpwworld/NJPWWORLD/view/c/c;
.super Landroid/support/v17/leanback/widget/bl;


# static fields
.field private static final i:Landroid/graphics/Typeface;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/graphics/Typeface;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/c/c;->i:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/bl;-><init>()V

    const/16 v0, 0x12

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->f:I

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/c/c;->i:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->g:Landroid/graphics/Typeface;

    const/4 v0, -0x1

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->d:I

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->h:Z

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 1

    const v0, 0x7f0a00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->d:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->e:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->h:Z

    if-eqz p2, :cond_1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :cond_1
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/c/c;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/c/c;->a(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/be$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/c/c;->b(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/bl$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v17/leanback/widget/be$a;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Landroid/support/v17/leanback/widget/ak;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ak;->l()Landroid/support/v17/leanback/widget/aa;

    move-result-object p2

    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    const v0, 0x7f0a00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/aa;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Landroid/support/v17/leanback/widget/bl$a;)V
    .locals 4

    iget-object v0, p1, Landroid/support/v17/leanback/widget/bl$a;->y:Landroid/view/View;

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->c:F

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/bl$a;->b()F

    move-result p1

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->c:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float p1, p1, v3

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/bl$a;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x7f090000

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->c:F

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0072

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->a:Landroid/view/View;

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->a:Landroid/view/View;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/c/c$1;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/view/c/c$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/c/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->a:Landroid/view/View;

    const v0, 0x7f0a00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->b:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->f:I

    int-to-float v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->g:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->b:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    new-instance p1, Landroid/support/v17/leanback/widget/bl$a;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/c;->a:Landroid/view/View;

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/bl$a;-><init>(Landroid/view/View;)V

    return-object p1
.end method
