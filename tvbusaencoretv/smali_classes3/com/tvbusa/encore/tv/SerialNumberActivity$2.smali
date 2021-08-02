.class Lcom/tvbusa/encore/tv/SerialNumberActivity$2;
.super Ljava/lang/Object;
.source "SerialNumberActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SerialNumberActivity;->fetchData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;

.field final synthetic val$dsn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SerialNumberActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SerialNumberActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dsn"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;->this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;

    iput-object p2, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;->val$dsn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RebateData"

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 80
    .local v0, "document":Lcom/google/firebase/firestore/DocumentSnapshot;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DocumentSnapshot data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.encoretvb.com/cantonese/firetv-rebate?dsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;->val$dsn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "landingPageUrl":Ljava/lang/String;
    const-string v2, "LandingPageURL"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v1}, Lnet/glxn/qrgen/android/QRCode;->from(Ljava/lang/String;)Lnet/glxn/qrgen/android/QRCode;

    move-result-object v2

    invoke-virtual {v2}, Lnet/glxn/qrgen/android/QRCode;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    .local v2, "myBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;->this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;

    const v4, 0x7f0a0160

    invoke-virtual {v3, v4}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 87
    .local v3, "myImage":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;->this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;

    const v5, 0x7f0a0217

    invoke-virtual {v4, v5}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 88
    .local v4, "pointSection":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x1ea

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 92
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$2;->this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;

    const v7, 0x7f0a00e6

    invoke-virtual {v6, v7}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 94
    .local v6, "dsnSection":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .local v7, "dsnSectionParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x46

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 96
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .end local v1    # "landingPageUrl":Ljava/lang/String;
    .end local v2    # "myBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "myImage":Landroid/widget/ImageView;
    .end local v4    # "pointSection":Landroid/widget/LinearLayout;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "dsnSection":Landroid/widget/LinearLayout;
    .end local v7    # "dsnSectionParam":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 98
    :cond_0
    const-string v2, "No such document"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "document":Lcom/google/firebase/firestore/DocumentSnapshot;
    :goto_0
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    const-string v2, "get failed with "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_1
    return-void
.end method
