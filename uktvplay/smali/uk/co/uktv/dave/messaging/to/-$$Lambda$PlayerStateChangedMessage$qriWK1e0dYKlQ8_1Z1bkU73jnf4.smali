.class public final synthetic Luk/co/uktv/dave/messaging/to/-$$Lambda$PlayerStateChangedMessage$qriWK1e0dYKlQ8_1Z1bkU73jnf4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lj$/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/messaging/to/-$$Lambda$PlayerStateChangedMessage$qriWK1e0dYKlQ8_1Z1bkU73jnf4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic and(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lj$/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/messaging/to/-$$Lambda$PlayerStateChangedMessage$qriWK1e0dYKlQ8_1Z1bkU73jnf4;->f$0:Ljava/lang/String;

    check-cast p1, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-static {v0, p1}, Luk/co/uktv/dave/messaging/to/PlayerStateChangedMessage;->lambda$fromJson$1(Ljava/lang/String;Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)Z

    move-result p1

    return p1
.end method
