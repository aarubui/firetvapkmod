.class Lcom/tvbusa/encore/tv/MainFragment$1;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/MainFragment;->parseWatchHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/MainFragment;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/MainFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainFragment$1;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 16
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
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    const-string v2, "WatchHistory"

    if-eqz v1, :cond_5

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const-string v1, "Result is Empty"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, v0, Lcom/tvbusa/encore/tv/MainFragment$1;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/MainFragment;->access$200(Lcom/tvbusa/encore/tv/MainFragment;)V

    goto/16 :goto_1

    .line 316
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/QuerySnapshot;

    .line 317
    .local v1, "docs":Lcom/google/firebase/firestore/QuerySnapshot;
    const/4 v3, 0x0

    .line 318
    .local v3, "count":I
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v4

    .line 319
    .local v4, "lastItem":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 320
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 321
    .local v5, "doc":Lcom/google/firebase/firestore/DocumentSnapshot;
    add-int/lit8 v3, v3, 0x1

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v6, "b"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "p"

    const-string v9, "n"

    if-nez v7, :cond_1

    invoke-virtual {v5, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v5, v9}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 324
    :cond_1
    new-instance v7, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v5, v9}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "pid"

    invoke-virtual {v5, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v8, "t"

    invoke-virtual {v5, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lcom/tvbusa/encore/tv/HistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 325
    .local v6, "item":Lcom/tvbusa/encore/tv/HistoryItem;
    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$1;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-static {v7}, Lcom/tvbusa/encore/tv/MainFragment;->access$300(Lcom/tvbusa/encore/tv/MainFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v6    # "item":Lcom/tvbusa/encore/tv/HistoryItem;
    :cond_2
    if-ne v3, v4, :cond_3

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$1;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-static {v7}, Lcom/tvbusa/encore/tv/MainFragment;->access$300(Lcom/tvbusa/encore/tv/MainFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v6, v0, Lcom/tvbusa/encore/tv/MainFragment$1;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-static {v6}, Lcom/tvbusa/encore/tv/MainFragment;->access$200(Lcom/tvbusa/encore/tv/MainFragment;)V

    .line 331
    .end local v5    # "doc":Lcom/google/firebase/firestore/DocumentSnapshot;
    :cond_3
    goto/16 :goto_0

    .line 333
    .end local v1    # "docs":Lcom/google/firebase/firestore/QuerySnapshot;
    .end local v3    # "count":I
    .end local v4    # "lastItem":I
    :cond_4
    goto :goto_1

    .line 336
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v1

    const-string v3, "Error getting documents: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    :goto_1
    return-void
.end method
