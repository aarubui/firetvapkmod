.class public final synthetic Luk/co/uktv/dave/browser/web/ContentProtectionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lj$/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/ContentProtectionUtils$$ExternalSyntheticLambda0;->f$0:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/ContentProtectionUtils$$ExternalSyntheticLambda0;->f$0:Lj$/util/function/Consumer;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Luk/co/uktv/dave/browser/web/ContentProtectionUtils;->lambda$extractLicenseAcquisitionUrl$0(Lj$/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
