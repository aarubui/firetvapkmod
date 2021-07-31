.class public Lcom/tvbusa/encore/tv/ExclusiveActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ExclusiveActivity.java"


# instance fields
.field mApp:Lcom/tvbusa/encore/tv/MainApplication;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/ExclusiveActivity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ExclusiveActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "name"

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/tv/ExclusiveActivity;->name:Ljava/lang/String;

    .line 52
    :cond_0
    new-instance v3, Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-direct {v3}, Lcom/tvbusa/encore/tv/ExclusiveFragment;-><init>()V

    .line 53
    .local v3, "mainFragment":Lcom/tvbusa/encore/tv/ExclusiveFragment;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v4, "arguments":Landroid/os/Bundle;
    invoke-virtual {v3, v4}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ExclusiveActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0a0129

    const-string v7, "ExclusiveFragment"

    invoke-virtual {v5, v6, v3, v7}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 56
    iget-object v5, p0, Lcom/tvbusa/encore/tv/ExclusiveActivity;->name:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const v2, 0x7f0a02a5

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/ExclusiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "nameView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tvbusa/encore/tv/ExclusiveActivity;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 64
    return-void
.end method
