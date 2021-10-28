.class Lcom/njpwworld/NJPWWORLD/manager/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/manager/a/b;->onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/device/iap/model/Receipt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/manager/a/b;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/manager/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/manager/a/b$1;->a:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/Receipt;)I
    .locals 1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getPurchaseDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/Receipt;->getPurchaseDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getPurchaseDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/Receipt;->getPurchaseDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/amazon/device/iap/model/Receipt;

    check-cast p2, Lcom/amazon/device/iap/model/Receipt;

    invoke-virtual {p0, p1, p2}, Lcom/njpwworld/NJPWWORLD/manager/a/b$1;->a(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/Receipt;)I

    move-result p1

    return p1
.end method
