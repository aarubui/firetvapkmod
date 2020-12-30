.class public Lcom/njpwworld/NJPWWORLD/view/c/d;
.super Landroid/support/v17/leanback/widget/be;


# static fields
.field private static final n:Ljava/lang/String; = "d"

.field private static final o:Landroid/graphics/Typeface;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/graphics/Typeface;

.field public g:Landroid/graphics/Typeface;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/c/d;->o:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/be;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->a:I

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->b:I

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->c:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->d:I

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->e:I

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/c/d;->o:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->f:Landroid/graphics/Typeface;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/c/d;->o:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->g:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->k:Z

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->l:Z

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->m:Z

    return-void
.end method

.method private a(Lcom/njpwworld/NJPWWORLD/a/f;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/f$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/be$a;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0077

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->h:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    const v0, 0x7f0a00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->i:Landroid/widget/TextView;

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->d:I

    int-to-float v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->l:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v0, Landroid/support/v17/leanback/widget/be$a;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/be$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->l:Z

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/be$a;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/f;

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    const v2, 0x7f0a00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/njpwworld/NJPWWORLD/view/c/d;->a(Lcom/njpwworld/NJPWWORLD/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->k:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/a/f$a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->m:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    const v0, 0x7f0a00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/f;->f()Lcom/njpwworld/NJPWWORLD/a/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/f$a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/view/c/d;->k:Z

    return-void
.end method
