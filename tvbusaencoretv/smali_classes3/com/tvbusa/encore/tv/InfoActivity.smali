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

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->name:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    .line 28
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

    .line 32
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/InfoActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f0a02d3

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    .local v1, "value":Landroid/widget/TextView;
    const v2, 0x7f0a0062

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 37
    .local v2, "backBtn":Landroid/widget/Button;
    new-instance v3, Lcom/tvbusa/encore/tv/InfoActivity$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/InfoActivity$1;-><init>(Lcom/tvbusa/encore/tv/InfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 45
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 46
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 47
    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/InfoActivity;->key:Ljava/lang/String;

    .line 50
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
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 67
    :pswitch_0
    const-string v5, "\u79c1\u96b1\u8072\u660e"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-string v5, "\u8acb\u5230 http://www.tvbusa.com/privacy-policy"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 62
    :pswitch_1
    const-string v5, "\u670d\u52d9\u689d\u6b3e\u53ca\u7d30\u5247"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const-string v5, "\u8acb\u5230 http://www.tvbusa.com/terms-conditions/ "

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    goto :goto_1

    .line 52
    :pswitch_2
    const-string v5, "\u7528\u6236\u7de8\u865f"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const-string v5, "generalInfo"

    invoke-virtual {p0, v5, v8}, Lcom/tvbusa/encore/tv/InfoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 54
    .local v5, "generalInfo":Landroid/content/SharedPreferences;
    const-string v6, "deviceNumber"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    .line 55
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    .line 56
    const-string v6, "Not Available"

    iput-object v6, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    .line 59
    :cond_2
    iget-object v6, p0, Lcom/tvbusa/encore/tv/InfoActivity;->sss:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    nop

    .line 73
    .end local v5    # "generalInfo":Landroid/content/SharedPreferences;
    :goto_1
    return-void

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
