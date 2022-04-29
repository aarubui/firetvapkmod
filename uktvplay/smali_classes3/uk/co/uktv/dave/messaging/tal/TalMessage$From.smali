.class public abstract Luk/co/uktv/dave/messaging/tal/TalMessage$From;
.super Luk/co/uktv/dave/messaging/tal/TalMessage;
.source "TalMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/tal/TalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "From"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Luk/co/uktv/dave/messaging/tal/TalMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method
