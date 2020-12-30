.class public Lcom/njpwworld/NJPWWORLD/view/c/b;
.super Lcom/njpwworld/NJPWWORLD/view/c/a;


# instance fields
.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/view/c/a;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/c/b;->q:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/njpwworld/NJPWWORLD/a/e;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/a/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/be$a;Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p2, Lcom/njpwworld/NJPWWORLD/a/e;

    const v1, 0x7f080060

    if-eqz v0, :cond_3

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/e;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/ac;

    invoke-direct {p0, p2}, Lcom/njpwworld/NJPWWORLD/view/c/b;->a(Lcom/njpwworld/NJPWWORLD/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ac;->setTitleText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/b;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080061

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/b;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080062

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/c/b;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080065

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/ac;->setBadgeImage(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/e;->c(Landroid/content/Context;)Lcom/a/a/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->g()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_2
    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/e;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_3
    instance-of v0, p2, Lcom/njpwworld/NJPWWORLD/a/b;

    if-eqz v0, :cond_6

    check-cast p2, Lcom/njpwworld/NJPWWORLD/a/b;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/ac;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ac;->setTitleText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ic_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/e;->c(Landroid/content/Context;)Lcom/a/a/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/c/b;->c(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/a/a/h;->a(Ljava/lang/Integer;)Lcom/a/a/b;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Lcom/a/a/b;->a()Lcom/a/a/a;

    move-result-object p1

    iget p2, p0, Lcom/njpwworld/NJPWWORLD/view/c/b;->m:I

    invoke-virtual {p1, p2}, Lcom/a/a/a;->a(I)Lcom/a/a/a;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ac;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/a/a/a;->a(Landroid/widget/ImageView;)Lcom/a/a/g/b/j;

    goto :goto_6

    :cond_4
    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/e;->c(Landroid/content/Context;)Lcom/a/a/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->c()Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/a/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    :goto_5
    iget-object p1, p1, Landroid/support/v17/leanback/widget/be$a;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/e;->c(Landroid/content/Context;)Lcom/a/a/h;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_2

    :cond_6
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
