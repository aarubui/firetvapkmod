.class public final Luk/co/uktv/dave/messaging/tal/PauseAppToTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$To;
.source "PauseAppToTalMessage.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "appPaused"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "appPaused"

    .line 8
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$To;-><init>(Ljava/lang/String;)V

    return-void
.end method
