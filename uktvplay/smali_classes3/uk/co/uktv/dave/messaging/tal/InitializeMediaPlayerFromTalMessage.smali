.class public final Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$From;
.source "InitializeMediaPlayerFromTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "inititializeMediaPlayer"


# instance fields
.field private final value:Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerId",
            "mimeType",
            "contentUrl",
            "laUrl",
            "position"
        }
    .end annotation

    const-string v0, "inititializeMediaPlayer"

    .line 19
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$From;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;-><init>(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$1;)V

    iput-object v0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;

    .line 20
    invoke-static {v0, p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$102(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    invoke-static {v0, p2}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$202(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    invoke-static {v0, p3}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$302(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    invoke-static {v0, p4}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$402(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;

    int-to-float p1, p5

    .line 24
    invoke-static {v0, p1}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$502(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;F)F

    return-void
.end method


# virtual methods
.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$300(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLaUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$400(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$200(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$100(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 44
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->access$500(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
