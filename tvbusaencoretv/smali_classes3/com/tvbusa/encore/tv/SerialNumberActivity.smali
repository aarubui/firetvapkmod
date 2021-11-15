.class public Lcom/tvbusa/encore/tv/SerialNumberActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SerialNumberActivity.java"


# instance fields
.field key:Ljava/lang/String;

.field name:Ljava/lang/String;

.field sss:Ljava/lang/String;

.field userRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->key:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->sss:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->userRegion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetchData(Ljava/lang/String;)V
    .locals 10
    .param p1, "dsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsn"
        }
    .end annotation

    .line 75
    const-string v0, "generalInfo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    .local v0, "generalInfo":Landroid/content/SharedPreferences;
    const-string v1, "eventURL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "eventUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "landingPageUrl":Ljava/lang/String;
    const-string v3, "LandingPageURL"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {v2}, Lnet/glxn/qrgen/android/QRCode;->from(Ljava/lang/String;)Lnet/glxn/qrgen/android/QRCode;

    move-result-object v3

    invoke-virtual {v3}, Lnet/glxn/qrgen/android/QRCode;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 81
    .local v3, "myBitmap":Landroid/graphics/Bitmap;
    const v4, 0x7f0b018a

    invoke-virtual {p0, v4}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, "myImage":Landroid/widget/ImageView;
    const v5, 0x7f0b0245

    invoke-virtual {p0, v5}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 83
    .local v5, "pointSection":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x1ea

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 87
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const v7, 0x7f0b00f2

    invoke-virtual {p0, v7}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 89
    .local v7, "dsnSection":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .local v8, "dsnSectionParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x46

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 91
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

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

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0b02d6

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f0b02f4

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, "value":Landroid/widget/TextView;
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 52
    .local v2, "backBtn":Landroid/widget/Button;
    new-instance v3, Lcom/tvbusa/encore/tv/SerialNumberActivity$1;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/SerialNumberActivity$1;-><init>(Lcom/tvbusa/encore/tv/SerialNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 60
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 61
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 62
    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->key:Ljava/lang/String;

    .line 65
    :cond_0
    const-string v5, "\u7528\u6236\u7de8\u865f"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v5, 0x0

    const-string v6, "generalInfo"

    invoke-virtual {p0, v6, v5}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 67
    .local v5, "generalInfo":Landroid/content/SharedPreferences;
    const-string v6, "deviceNumber"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->sss:Ljava/lang/String;

    .line 68
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    const-string v6, "Not Available"

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->sss:Ljava/lang/String;

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->sss:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity;->sss:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->fetchData(Ljava/lang/String;)V

    .line 72
    return-void
.end method
