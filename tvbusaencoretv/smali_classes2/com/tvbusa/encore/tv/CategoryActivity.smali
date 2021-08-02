.class public Lcom/tvbusa/encore/tv/CategoryActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;
    }
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->name:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 27
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 28
    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->name:Ljava/lang/String;

    .line 29
    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->key:Ljava/lang/String;

    .line 32
    :cond_0
    const v2, 0x7f0a0229

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 33
    .local v2, "nameView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v3, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;-><init>(Lcom/tvbusa/encore/tv/CategoryActivity;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 42
    return-void
.end method
