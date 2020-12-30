.class Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    const v0, 0x7f0f0037

    invoke-virtual {p2, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/c/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/f;->f(Landroid/content/Context;)Z

    const v0, 0x7f01000d

    const v1, 0x7f01000c

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ShowMoreActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;->a:Z

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/f;->r(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->finish()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1, v1, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/ShowMoreActivity;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p2}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/njpwworld/NJPWWORLD/c/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/njpwworld/NJPWWORLD/c/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "SearchActivity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;->a:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/SearchActivity;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/f;->r(Landroid/content/Context;)Z

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    const-class v2, Lcom/njpwworld/NJPWWORLD/view/activity/HomeActivity;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p2, p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1, v1, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->finish()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/f;->r(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->finish()V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;

    invoke-virtual {p1, v1, v0}, Lcom/njpwworld/NJPWWORLD/view/activity/LoginActivity;->overridePendingTransition(II)V

    :goto_2
    return-void
.end method
