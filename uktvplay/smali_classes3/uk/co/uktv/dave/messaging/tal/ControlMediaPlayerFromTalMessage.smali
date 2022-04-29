.class public final Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$From;
.source "ControlMediaPlayerFromTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;,
        Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "controlMediaPlayer"


# instance fields
.field private final value:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;


# direct methods
.method public constructor <init>(Ljava/lang/String;Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerId",
            "action",
            "position"
        }
    .end annotation

    const-string v0, "controlMediaPlayer"

    .line 25
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$From;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;-><init>(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$1;)V

    iput-object v0, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;

    .line 26
    invoke-static {v0, p1}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->access$102(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    invoke-static {v0, p2}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->access$202(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;)Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;

    .line 28
    invoke-static {v0, p3, p4}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->access$302(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;J)J

    return-void
.end method


# virtual methods
.method public getAction()Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;
    .locals 1

    .line 36
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->access$200(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;)Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->access$100(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 40
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->access$300(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;)J

    move-result-wide v0

    return-wide v0
.end method
