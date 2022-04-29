.class public final Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$To;
.source "PlayerPositionUpdatedToTalMessage.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "positionUpdated"


# instance fields
.field private final playerId:Ljava/lang/String;

.field private final position:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playerId",
            "position"
        }
    .end annotation

    const-string v0, "positionUpdated"

    .line 11
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$To;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;->playerId:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;->position:J

    return-void
.end method


# virtual methods
.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 21
    iget-wide v0, p0, Luk/co/uktv/dave/messaging/tal/PlayerPositionUpdatedToTalMessage;->position:J

    return-wide v0
.end method
