.class Lcom/tvbusa/encore/tv/SeriesActivity$7;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity;->checkHistory()V
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
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SeriesActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 294
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$7;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 299
    .local v0, "doc":Lcom/google/firebase/firestore/DocumentSnapshot;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v1

    const-string v2, "RecordHistory"

    if-eqz v1, :cond_0

    .line 300
    const-string v1, "History Exists"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$7;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    const-string v2, "time"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->historyTime:I

    .line 302
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$7;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/SeriesActivity;->getEpisodePos(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    const-string v1, "History Not Exists"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "doc":Lcom/google/firebase/firestore/DocumentSnapshot;
    :cond_1
    :goto_0
    return-void
.end method
