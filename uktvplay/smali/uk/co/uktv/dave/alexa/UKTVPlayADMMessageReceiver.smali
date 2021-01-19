.class public Luk/co/uktv/dave/alexa/UKTVPlayADMMessageReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "UKTVPlayADMMessageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Luk/co/uktv/dave/alexa/UKTVADMMessageHandler;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    .line 11
    return-void
.end method
