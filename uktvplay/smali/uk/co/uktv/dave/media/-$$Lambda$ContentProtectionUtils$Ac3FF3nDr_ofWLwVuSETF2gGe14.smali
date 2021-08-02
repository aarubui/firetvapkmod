.class public final synthetic Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$Ac3FF3nDr_ofWLwVuSETF2gGe14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lj$/util/function/Consumer;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$Ac3FF3nDr_ofWLwVuSETF2gGe14;->f$0:Lj$/util/function/Consumer;

    iput-object p2, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$Ac3FF3nDr_ofWLwVuSETF2gGe14;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$Ac3FF3nDr_ofWLwVuSETF2gGe14;->f$0:Lj$/util/function/Consumer;

    iget-object v1, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$Ac3FF3nDr_ofWLwVuSETF2gGe14;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Luk/co/uktv/dave/media/ContentProtectionUtils;->lambda$null$0(Lj$/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
