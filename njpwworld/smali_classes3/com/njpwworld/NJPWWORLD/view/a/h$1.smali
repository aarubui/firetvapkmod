.class Lcom/njpwworld/NJPWWORLD/view/a/h$1;
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
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/h;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "amzn://apps/android?p=com.njpwworld.NJPWWORLD"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/h$1;->a:Lcom/njpwworld/NJPWWORLD/view/a/h;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/a/h;->a(Lcom/njpwworld/NJPWWORLD/view/a/h;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
