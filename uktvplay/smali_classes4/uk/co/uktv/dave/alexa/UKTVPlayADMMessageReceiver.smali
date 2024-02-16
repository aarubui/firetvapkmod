.class public Luk/co/uktv/dave/alexa/UKTVPlayADMMessageReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "UKTVPlayADMMessageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    const-class v0, Luk/co/uktv/dave/alexa/UKTVPlayADMMessageHandler;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    return-void
.end method
