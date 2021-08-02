.class public Lcom/tvbusa/encore/tv/LoginActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "LoginActivity.java"


# instance fields
.field client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 38
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/LoginActivity;->client:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/LoginActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .local v0, "featureImages":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 52
    const-string v2, "https://s3-us-west-1.amazonaws.com/encoretvb-app/onboarding/FireTV_SignUpScreen01.png"

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 54
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 56
    const v1, 0x7f0a01bc

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 57
    .local v1, "registerBtn":Landroid/widget/Button;
    new-instance v2, Lcom/tvbusa/encore/tv/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/LoginActivity$1;-><init>(Lcom/tvbusa/encore/tv/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0a015a

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 65
    .local v2, "loginBtn":Landroid/widget/Button;
    new-instance v3, Lcom/tvbusa/encore/tv/LoginActivity$2;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/LoginActivity$2;-><init>(Lcom/tvbusa/encore/tv/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 43
    return-void
.end method

.method public signIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const-string v1, "\u6b63\u5728\u767b\u5165\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"e\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"p\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"returnSecureToken\":true}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "params":Ljava/lang/String;
    const-string v2, "https://us-central1-encoretvb-faecb.cloudfunctions.net/fireTvLogin"

    .line 90
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 91
    .local v3, "JSON":Lokhttp3/MediaType;
    invoke-static {v3, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 92
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 93
    .local v5, "request":Lokhttp3/Request;
    iget-object v6, p0, Lcom/tvbusa/encore/tv/LoginActivity;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/tvbusa/encore/tv/LoginActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/tvbusa/encore/tv/LoginActivity$3;-><init>(Lcom/tvbusa/encore/tv/LoginActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 155
    return-void
.end method
