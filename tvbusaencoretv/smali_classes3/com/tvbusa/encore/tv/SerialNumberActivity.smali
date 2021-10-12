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
    .locals 4
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
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 76
    .local v0, "db":Lcom/google/firebase/firestore/FirebaseFirestore;
    const-string v1, "rebate-event-2021-Q1"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    .line 77
    .local v1, "docRef":Lcom/google/firebase/firestore/DocumentReference;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;-><init>(Lcom/tvbusa/encore/tv/SerialNumberActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 107
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
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f0a02d3

    invoke-virtual {p0, v1}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, "value":Landroid/widget/TextView;
    const v2, 0x7f0a0062

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
