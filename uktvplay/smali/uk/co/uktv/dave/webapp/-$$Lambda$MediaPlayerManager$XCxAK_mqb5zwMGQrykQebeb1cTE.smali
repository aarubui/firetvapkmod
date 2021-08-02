.class public final synthetic Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$XCxAK_mqb5zwMGQrykQebeb1cTE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$XCxAK_mqb5zwMGQrykQebeb1cTE;->f$0:Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$XCxAK_mqb5zwMGQrykQebeb1cTE;->f$0:Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Luk/co/uktv/dave/webapp/MediaPlayerManager;->lambda$onGetLicenseUrl$0(Luk/co/uktv/dave/messaging/from/GetLicenseUrlMessage;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
