.class public Lcom/njpwworld/NJPWWORLD/view/c/a;
.super Landroid/support/v17/leanback/widget/be;


# static fields
.field private static final q:Landroid/graphics/Typeface;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/graphics/Typeface;

.field public l:Landroid/graphics/Typeface;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field private r:Landroid/support/v17/leanback/widget/ac;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/c/a;->q:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/be;-><init>()V

    const/16 v0, 0x1f1

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->a:I

    const/16 v0, 0x108

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->b:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->d:I

    const v1, -0xbbbbbc

    iput v1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->e:I

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->f:I

    const v0, 0x7f060028

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->h:I

    const v0, 0x7f060088

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->g:I

    const v0, 0x7f080061

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->m:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->i:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->j:I

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/c/a;->q:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->k:Landroid/graphics/Typeface;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/c/a;->q:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->l:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->n:Z

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->o:Z

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->p:Z

    return-void
.end method

.method private a(Landroid/support/v17/leanback/widget/ac;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->h:I

    :goto_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->c:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->d:I

    :goto_1
    if-eqz p2, :cond_2

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->e:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->f:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->setBackgroundResource(I)V

    const v3, 0x7f0a00b4

    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/ac;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a015f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a0056

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/ac;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_3

    iget-boolean p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->n:Z

    if-eqz p1, :cond_3

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_3

    :cond_3
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/view/c/a;Landroid/support/v17/leanback/widget/ac;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/view/c/a;->a(Landroid/support/v17/leanback/widget/ac;Z)V

    return-void
.end method

.method private b()V
    .locals 5

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->o:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->s:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->s:Landroid/widget/TextView;

    iget v3, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->i:I

    int-to-float v3, v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->k:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->s:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/be$a;
    .locals 2

    const-string v0, "BaseCardPresenter"

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/c/a$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/njpwworld/NJPWWORLD/view/c/a$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/c/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->a:I

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/ac;->a(II)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    const v0, 0x7f0a015f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->s:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    const v0, 0x7f0a0056

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->t:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/c/a;->b()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->setFocusable(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/njpwworld/NJPWWORLD/view/c/a;->a(Landroid/support/v17/leanback/widget/ac;Z)V

    new-instance p1, Landroid/support/v17/leanback/widget/be$a;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->r:Landroid/support/v17/leanback/widget/ac;

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/be$a;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->p:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->a:I

    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/view/c/a;->a(I)V

    invoke-virtual {p0, p2}, Lcom/njpwworld/NJPWWORLD/view/c/a;->b(I)V

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/be$a;)V
    .locals 2

    const-string v0, "BaseCardPresenter"

    const-string v1, "onUnbindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    check-cast p1, Landroid/support/v17/leanback/widget/ac;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->setBadgeImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ac;->setMainImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/a;->b:I

    return-void
.end method
