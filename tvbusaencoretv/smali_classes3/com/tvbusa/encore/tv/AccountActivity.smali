.class public Lcom/tvbusa/encore/tv/AccountActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AccountActivity.java"


# instance fields
.field emailValue:Landroid/widget/TextView;

.field genderValue:Landroid/widget/TextView;

.field name:Ljava/lang/String;

.field nicknameValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/AccountActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/AccountActivity;->parseAccount()V

    .line 45
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity;->genderValue:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity;->emailValue:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0b0219

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity;->nicknameValue:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0b01c8

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    .local v0, "logoutBtn":Landroid/widget/Button;
    new-instance v1, Lcom/tvbusa/encore/tv/AccountActivity$1;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/AccountActivity$1;-><init>(Lcom/tvbusa/encore/tv/AccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 107
    return-void
.end method

.method public parseAccount()V
    .locals 10

    .line 65
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/AccountActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "token":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvGetAccount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 70
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"t\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "params":Ljava/lang/String;
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 72
    .local v6, "body":Lokhttp3/RequestBody;
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v7, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v7, "POST"

    invoke-virtual {v3, v7, v6}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 74
    .local v3, "request":Lokhttp3/Request;
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 75
    .local v7, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v7, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/AccountActivity$2;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/AccountActivity$2;-><init>(Lcom/tvbusa/encore/tv/AccountActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 102
    return-void
.end method
