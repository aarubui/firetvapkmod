.class public Lcom/njpwworld/NJPWWORLD/manager/a/b;
.super Lcom/njpwworld/NJPWWORLD/manager/a/c;


# instance fields
.field private b:Lcom/njpwworld/NJPWWORLD/manager/a/a$b;


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/manager/a/a;Lcom/njpwworld/NJPWWORLD/manager/a/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/manager/a/c;-><init>(Lcom/njpwworld/NJPWWORLD/manager/a/a;)V

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b;->b:Lcom/njpwworld/NJPWWORLD/manager/a/a$b;

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/manager/a/b;)Lcom/njpwworld/NJPWWORLD/manager/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b;->b:Lcom/njpwworld/NJPWWORLD/manager/a/a$b;

    return-object p0
.end method


# virtual methods
.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPurchaseUpdatesResponse: requestId ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") purchaseUpdatesResponseStatus ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") userId ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/c/c;->b(Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v0

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/a/b$3;->a:[I

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "onPurchaseUpdatesResponse: failed, should retry request"

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/c;->b(Ljava/lang/String;)I

    :cond_0
    :pswitch_1
    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b;->b:Lcom/njpwworld/NJPWWORLD/manager/a/a$b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0, v2, v2, v2}, Lcom/njpwworld/NJPWWORLD/manager/a/a$b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/a/i;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/iap/model/Receipt;

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/njpwworld/NJPWWORLD/manager/a/d;->a:Lcom/njpwworld/NJPWWORLD/manager/a/d;

    invoke-virtual {v6}, Lcom/njpwworld/NJPWWORLD/manager/a/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/Receipt;->getCancelDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v2, Lcom/njpwworld/NJPWWORLD/manager/a/b$1;

    invoke-direct {v2, p0}, Lcom/njpwworld/NJPWWORLD/manager/a/b$1;-><init>(Lcom/njpwworld/NJPWWORLD/manager/a/b;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/model/Receipt;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b;->a:Lcom/njpwworld/NJPWWORLD/manager/a/a;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Ljava/lang/String;Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;

    invoke-direct {v4, p0, v0, p1}, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;-><init>(Lcom/njpwworld/NJPWWORLD/manager/a/b;Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V

    invoke-static {v2, v3, v4}, Lcom/njpwworld/NJPWWORLD/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/manager/b/b;)V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
