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

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->name:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

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

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/InfoActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0a02a1

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f0a02bf

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, "value":Landroid/widget/TextView;
    const v2, 0x7f0a0062

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 35
    .local v2, "backBtn":Landroid/widget/Button;
    new-instance v3, Lcom/tvbusa/encore/tv/InfoActivity$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/InfoActivity$1;-><init>(Lcom/tvbusa/encore/tv/InfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 43
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 44
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 45
    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    .line 48
    :cond_0
    iget-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

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
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 65
    :pswitch_0
    const-string v5, "\u79c1\u96b1\u8072\u660e"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const-string v5, "\u8acb\u5230 http://www.tvbusa.com/privacy-policy"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 60
    :pswitch_1
    const-string v5, "\u670d\u52d9\u689d\u6b3e\u53ca\u7d30\u5247"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const-string v5, "\u8acb\u5230 http://www.tvbusa.com/terms-conditions/ "

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    goto :goto_1

    .line 50
    :pswitch_2
    const-string v5, "\u7528\u6236\u7de8\u865f"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/tvbusa/encore/tv/MainApplication;

    iput-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->mApp:Lcom/tvbusa/encore/tv/MainApplication;

    .line 52
    invoke-virtual {v5}, Lcom/tvbusa/encore/tv/MainApplication;->getNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 54
    const-string v5, "Not Available"

    iput-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    .line 57
    :cond_2
    iget-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    nop

    .line 71
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
