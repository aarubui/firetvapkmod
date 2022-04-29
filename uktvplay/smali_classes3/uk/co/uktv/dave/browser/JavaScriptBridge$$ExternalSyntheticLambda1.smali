.class public final synthetic Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Function;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/browser/JavaScriptBridge;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/browser/JavaScriptBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda1;->f$0:Luk/co/uktv/dave/browser/JavaScriptBridge;

    iput-object p2, p0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

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
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda1;->f$0:Luk/co/uktv/dave/browser/JavaScriptBridge;

    iget-object v1, p0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Luk/co/uktv/dave/browser/JavaScriptBridge;->lambda$receiveMessage$1$uk-co-uktv-dave-browser-JavaScriptBridge(Ljava/lang/String;Ljava/lang/Class;)Luk/co/uktv/dave/messaging/tal/TalMessage$From;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
