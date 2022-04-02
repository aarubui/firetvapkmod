.class public Lcom/tvbusa/encore/tv/InfoActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "InfoActivity.java"


# instance fields
.field key:Ljava/lang/String;

.field mApp:Lcom/tvbusa/encore/tv/MainApplication;

.field name:Ljava/lang/String;

.field sss:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->name:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/InfoActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f0b02d6

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f0b02f4

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, "value":Landroid/widget/TextView;
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 38
    .local v2, "backBtn":Landroid/widget/Button;
    new-instance v3, Lcom/tvbusa/encore/tv/InfoActivity$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/InfoActivity$1;-><init>(Lcom/tvbusa/encore/tv/InfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 46
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 47
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 48
    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v7, "about"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string v7, "t&c"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "privacy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x2

    :goto_0
    const v5, 0x7f120172

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120163

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " http://www.tvbusa.com/privacy-policy"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120164

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " http://www.tvbusa.com/terms-conditions/ "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    goto :goto_1

    .line 53
    :pswitch_2
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120162

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const-string v5, "generalInfo"

    invoke-virtual {p0, v5, v8}, Lcom/tvbusa/encore/tv/InfoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 55
    .local v5, "generalInfo":Landroid/content/SharedPreferences;
    const-string v6, "deviceNumber"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    .line 57
    const-string v6, "Not Available"

    iput-object v6, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    .line 60
    :cond_2
    iget-object v6, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    nop

    .line 74
    .end local v5    # "generalInfo":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_2
        0x1b871 -> :sswitch_1
        0x585238d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
