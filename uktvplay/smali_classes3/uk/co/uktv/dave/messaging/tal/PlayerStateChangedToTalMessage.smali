.class public final Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$To;
.source "PlayerStateChangedToTalMessage.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stateChanged"


# instance fields
.field private final duration:J

.field private final errorCode:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

.field private final playerId:Ljava/lang/String;

.field private final state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLuk/co/uktv/dave/browser/web/MediaPlayer$State;Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerId",
            "duration",
            "state",
            "errorCode"
        }
    .end annotation

    const-string v0, "stateChanged"

    .line 15
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$To;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->playerId:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->duration:J

    .line 18
    iput-object p4, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    .line 19
    iput-object p5, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->errorCode:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 27
    iget-wide v0, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->duration:J

    return-wide v0
.end method

.method public getErrorCode()Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .locals 1

    .line 35
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->errorCode:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;
    .locals 1

    .line 31
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/PlayerStateChangedToTalMessage;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    return-object v0
.end method
