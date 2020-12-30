.class public Lcom/njpwworld/NJPWWORLD/manager/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/manager/a/a$b;,
        Lcom/njpwworld/NJPWWORLD/manager/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/njpwworld/NJPWWORLD/manager/a/c;

.field private b:Lcom/njpwworld/NJPWWORLD/manager/a/b;

.field private c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/manager/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;

    new-instance p2, Lcom/njpwworld/NJPWWORLD/manager/a/c;

    invoke-direct {p2, p0}, Lcom/njpwworld/NJPWWORLD/manager/a/c;-><init>(Lcom/njpwworld/NJPWWORLD/manager/a/a;)V

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a:Lcom/njpwworld/NJPWWORLD/manager/a/c;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a:Lcom/njpwworld/NJPWWORLD/manager/a/c;

    invoke-static {p1, p2}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IS_SANDBOX_MODE : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/c;->b(Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/manager/a/a$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/a/b;

    invoke-direct {v0, p0, p2}, Lcom/njpwworld/NJPWWORLD/manager/a/b;-><init>(Lcom/njpwworld/NJPWWORLD/manager/a/a;Lcom/njpwworld/NJPWWORLD/manager/a/a$b;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->b:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->b:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    invoke-static {p1, p2}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IS_SANDBOX_MODE : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/c;->b(Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Lcom/amazon/device/iap/model/Receipt;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/manager/a/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/amazon/device/iap/model/Receipt;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;

    invoke-interface {v0, p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/a/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchase requestId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/c;->b(Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 1

    sget-object p1, Lcom/njpwworld/NJPWWORLD/manager/a/a$1;->a:[I

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/ProductType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchaseUpdate requestId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/c/c;->b(Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {p1, v0}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to grant entitlement purchase, with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/njpwworld/NJPWWORLD/c/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
