.class public Luk/co/uktv/dave/launcher/CapabilityRequestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CapabilityRequestBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CapabilityRequestBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    const-string v0, "CapabilityRequestBroadcastReceiver"

    const-string v1, "Received capability request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Luk/co/uktv/dave/launcher/CapabilityBroadcaster;

    invoke-direct {v0}, Luk/co/uktv/dave/launcher/CapabilityBroadcaster;-><init>()V

    invoke-virtual {v0, p1}, Luk/co/uktv/dave/launcher/CapabilityBroadcaster;->broadcast(Landroid/content/Context;)V

    .line 14
    return-void
.end method
