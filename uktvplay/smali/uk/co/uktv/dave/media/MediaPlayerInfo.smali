.class public Luk/co/uktv/dave/media/MediaPlayerInfo;
.super Ljava/lang/Object;
.source "MediaPlayerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/media/MediaPlayerInfo$Error;,
        Luk/co/uktv/dave/media/MediaPlayerInfo$State;
    }
.end annotation


# instance fields
.field private duration:J

.field private error:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

.field private final id:Ljava/lang/String;

.field private position:J

.field private final sourceBuilder:Lj$/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/function/Function<",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private state:Luk/co/uktv/dave/media/MediaPlayerInfo$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->id:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->position:J

    const-wide/16 p1, 0x0

    .line 52
    iput-wide p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->duration:J

    .line 53
    sget-object p1, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->IDLE:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->state:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->error:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    .line 55
    new-instance p1, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;

    invoke-direct {p1, p4, p5, p6}, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->sourceBuilder:Lj$/util/function/Function;

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 55
    invoke-static {p3, p0, p1, p2}, Luk/co/uktv/dave/media/ContentUtils;->prepareMediaSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 71
    iget-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->duration:J

    return-wide v0
.end method

.method public getError()Luk/co/uktv/dave/media/MediaPlayerInfo$Error;
    .locals 1

    .line 87
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->error:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 63
    iget-wide v0, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->position:J

    return-wide v0
.end method

.method public getSourceBuilder()Lj$/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/function/Function<",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->sourceBuilder:Lj$/util/function/Function;

    return-object v0
.end method

.method public getState()Luk/co/uktv/dave/media/MediaPlayerInfo$State;
    .locals 1

    .line 79
    iget-object v0, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->state:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->duration:J

    return-void
.end method

.method public setError(Luk/co/uktv/dave/media/MediaPlayerInfo$Error;)V
    .locals 0

    .line 91
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->error:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    .line 92
    sget-object p1, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->ERROR:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    invoke-virtual {p0, p1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->setState(Luk/co/uktv/dave/media/MediaPlayerInfo$State;)V

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->position:J

    return-void
.end method

.method public setState(Luk/co/uktv/dave/media/MediaPlayerInfo$State;)V
    .locals 0

    .line 83
    iput-object p1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo;->state:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    return-void
.end method
