.class public final synthetic Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;

    check-cast p1, Luk/co/uktv/dave/recommendations/data/Recommendation;

    invoke-static {v0, p1}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->$r8$lambda$Gy5m0Rw8LF_qoGc7qR6TMd4YtmY(Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method