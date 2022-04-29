.class public final Luk/co/uktv/dave/messaging/tal/DirectiveReceivedToTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$To;
.source "DirectiveReceivedToTalMessage.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "directiveReceived"


# instance fields
.field private final directive:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directive"
        }
    .end annotation

    const-string v0, "directiveReceived"

    .line 12
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$To;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/DirectiveReceivedToTalMessage;->directive:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public getDirective()Lcom/google/gson/JsonObject;
    .locals 1

    .line 17
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/DirectiveReceivedToTalMessage;->directive:Lcom/google/gson/JsonObject;

    return-object v0
.end method
