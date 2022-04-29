.class public final synthetic Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;->INSTANCE:Luk/co/uktv/dave/browser/JavaScriptBridge$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 0

    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-static {p1}, Luk/co/uktv/dave/browser/JavaScriptBridge;->lambda$receiveMessage$0(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
