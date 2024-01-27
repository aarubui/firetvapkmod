.class public Luk/co/uktv/dave/launcher/RequestCapabilitiesBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestCapabilitiesBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestCapabilitiesBroadcastReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 16
    sget-object v0, Luk/co/uktv/dave/launcher/RequestCapabilitiesBroadcastReceiver;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Received capabilities broadcast request: %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {p1}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->broadcast(Landroid/content/Context;)V

    return-void
.end method
