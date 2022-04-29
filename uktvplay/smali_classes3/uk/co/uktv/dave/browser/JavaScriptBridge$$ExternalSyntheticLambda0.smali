.class public final synthetic Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Function;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/browser/JavaScriptBridge;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/browser/JavaScriptBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/browser/JavaScriptBridge;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda0;->f$0:Luk/co/uktv/dave/browser/JavaScriptBridge;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/browser/JavaScriptBridge;->detectReceivedMessageClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
