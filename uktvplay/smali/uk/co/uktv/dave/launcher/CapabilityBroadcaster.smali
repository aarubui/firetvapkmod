.class public Luk/co/uktv/dave/launcher/CapabilityBroadcaster;
.super Ljava/lang/Object;
.source "CapabilityBroadcaster.java"


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "com.amazon.device.CAPABILITIES"

.field private static final BROADCAST_PACKAGE:Ljava/lang/String; = "com.amazon.tv.launcher"

.field private static final EXTRA_PARTNER_ID:Ljava/lang/String; = "amazon.intent.extra.PARTNER_ID"

.field private static final EXTRA_PLAY_INTENT_ACTION:Ljava/lang/String; = "amazon.intent.extra.PLAY_INTENT_ACTION"

.field private static final EXTRA_PLAY_INTENT_CLASS:Ljava/lang/String; = "amazon.intent.extra.PLAY_INTENT_CLASS"

.field private static final EXTRA_PLAY_INTENT_FLAGS:Ljava/lang/String; = "amazon.intent.extra.PLAY_INTENT_FLAGS"

.field private static final EXTRA_PLAY_INTENT_PACKAGE:Ljava/lang/String; = "amazon.intent.extra.PLAY_INTENT_PACKAGE"

.field private static final TAG:Ljava/lang/String; = "CapabilityRequestBroadcastReceiver"

.field private static final VALUE_PARTNER_ID:Ljava/lang/String; = "UKTVM_U"

.field private static final VALUE_PLAY_INTENT_CLASS:Ljava/lang/String; = "uk.co.uktv.dave.DeepLink"

.field private static final VALUE_PLAY_INTENT_PACKAGE:Ljava/lang/String; = "uk.co.uktv.dave"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v1, "CapabilityRequestBroadcastReceiver"

    const-string v2, "Broadcasting Capabilities"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string v1, "CapabilityRequestBroadcastReceiver"

    const-string v2, "Unable to broadcast capabilities as context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.device.CAPABILITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.amazon.tv.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "amazon.intent.extra.PARTNER_ID"

    const-string v2, "UKTVM_U"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "amazon.intent.extra.PLAY_INTENT_ACTION"

    const-string v2, "uk.co.uktv.dave.VIDEO_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "amazon.intent.extra.PLAY_INTENT_PACKAGE"

    const-string v2, "uk.co.uktv.dave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "amazon.intent.extra.PLAY_INTENT_CLASS"

    const-string v2, "uk.co.uktv.dave.DeepLink"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "amazon.intent.extra.PLAY_INTENT_FLAGS"

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
