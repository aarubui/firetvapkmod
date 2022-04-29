.class public final Luk/co/uktv/dave/messaging/tal/ExitAppFromTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$From;
.source "ExitAppFromTalMessage.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "exitApp"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "exitApp"

    .line 8
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$From;-><init>(Ljava/lang/String;)V

    return-void
.end method
