.class public final synthetic Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$S1YBlvjuwveNVkpZ4kc4bF760aw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lj$/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/webapp/MediaPlayerManager;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/webapp/MediaPlayerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$S1YBlvjuwveNVkpZ4kc4bF760aw;->f$0:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/webapp/-$$Lambda$MediaPlayerManager$S1YBlvjuwveNVkpZ4kc4bF760aw;->f$0:Luk/co/uktv/dave/webapp/MediaPlayerManager;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Luk/co/uktv/dave/media/MediaPlayerInfo;

    invoke-virtual {v0, p1, p2}, Luk/co/uktv/dave/webapp/MediaPlayerManager;->lambda$destroy$1$MediaPlayerManager(Ljava/lang/String;Luk/co/uktv/dave/media/MediaPlayerInfo;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
