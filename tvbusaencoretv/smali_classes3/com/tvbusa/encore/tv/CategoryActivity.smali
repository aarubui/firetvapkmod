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

.field type:I

.field url:Ljava/lang/String;

.field userRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->name:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->key:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->type:I

    .line 22
    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->url:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->userRegion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/CategoryActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 32
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 33
    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->name:Ljava/lang/String;

    .line 34
    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->key:Ljava/lang/String;

    .line 35
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->type:I

    .line 38
    :cond_0
    const v2, 0x7f0b02da

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    .local v2, "nameView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const-string v3, "generalInfo"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/tvbusa/encore/tv/CategoryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 42
    .local v3, "generalInfo":Landroid/content/SharedPreferences;
    const-string v5, "userRegion"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->userRegion:Ljava/lang/String;

    .line 44
    iget v5, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->type:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1200e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/CategoryActivity;->url:Ljava/lang/String;

    .line 48
    :goto_0
    new-instance v5, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;

    invoke-direct {v5, p0}, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;-><init>(Lcom/tvbusa/encore/tv/CategoryActivity;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/tvbusa/encore/tv/CategoryActivity$LayoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 54
    return-void
.end method
