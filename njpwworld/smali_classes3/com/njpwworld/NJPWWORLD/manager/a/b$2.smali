.class Lcom/njpwworld/NJPWWORLD/manager/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/manager/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/manager/a/b;->onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazon/device/iap/model/Receipt;

.field final synthetic b:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

.field final synthetic c:Lcom/njpwworld/NJPWWORLD/manager/a/b;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/manager/a/b;Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->c:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->a:Lcom/amazon/device/iap/model/Receipt;

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->b:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->c:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/manager/a/b;->a(Lcom/njpwworld/NJPWWORLD/manager/a/b;)Lcom/njpwworld/NJPWWORLD/manager/a/a$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/njpwworld/NJPWWORLD/manager/a/a$b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/b/i;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->c:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/manager/a/b;->a(Lcom/njpwworld/NJPWWORLD/manager/a/b;)Lcom/njpwworld/NJPWWORLD/manager/a/a$b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, p3, p3}, Lcom/njpwworld/NJPWWORLD/manager/a/a$b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/b/i;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/njpwworld/NJPWWORLD/b/i;

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->c:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/manager/a/b;->a(Lcom/njpwworld/NJPWWORLD/manager/a/b;)Lcom/njpwworld/NJPWWORLD/manager/a/a$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->a:Lcom/amazon/device/iap/model/Receipt;

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$2;->b:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/njpwworld/NJPWWORLD/manager/a/a$b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/njpwworld/NJPWWORLD/b/i;)V

    return-void
.end method
