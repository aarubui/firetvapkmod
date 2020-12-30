.class Lcom/njpwworld/NJPWWORLD/view/a/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/h;->a(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/a/h;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/h;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->b:Lcom/njpwworld/NJPWWORLD/view/a/h;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->b:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->a(Lcom/njpwworld/NJPWWORLD/view/a/h;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->b:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/a/h;->b(Lcom/njpwworld/NJPWWORLD/view/a/h;)J

    move-result-wide v0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/njpwworld/NJPWWORLD/c/f;->a(Landroid/content/Context;J)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->b:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->a(Lcom/njpwworld/NJPWWORLD/view/a/h;)Landroid/content/Context;

    move-result-object p1

    const-wide/16 v0, -0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->b:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->dismiss()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$2;->b:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->c(Lcom/njpwworld/NJPWWORLD/view/a/h;)Lcom/njpwworld/NJPWWORLD/view/a/h$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h$a;->a()V

    return-void
.end method
