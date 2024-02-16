.class public Luk/co/uktv/dave/browser/web/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/browser/web/MediaPlayer$State;,
        Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayer"


# instance fields
.field private duration:J

.field private error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

.field private final id:Ljava/lang/String;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private paused:Z

.field private state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "url",
            "mimeType",
            "startTime",
            "drmType",
            "drmLicenseUrl"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->id:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->paused:Z

    iput-wide p4, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->time:J

    const-wide/16 p4, 0x0

    iput-wide p4, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->duration:J

    .line 51
    sget-object p4, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->IDLE:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    iput-object p4, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    const/4 p4, 0x0

    iput-object p4, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 58
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    const-string p5, "playready"

    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    const-string p5, "widevine"

    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    move-object p5, p4

    goto :goto_0

    .line 63
    :cond_0
    new-instance p5, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-direct {p5, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance p5, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    sget-object v1, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-direct {p5, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Ljava/util/UUID;)V

    :goto_0
    if-eqz p5, :cond_2

    .line 69
    invoke-virtual {p5, p7}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object p4

    .line 70
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-result-object p4

    goto :goto_1

    :cond_2
    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p7, 0x0

    aput-object p6, p5, p7

    aput-object p1, p5, v0

    const-string p6, "Could not find UUID for drmType=%s, playerId=%s"

    .line 72
    invoke-static {p6, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    sget-object p6, Luk/co/uktv/dave/browser/web/MediaPlayer;->TAG:Ljava/lang/String;

    .line 73
    invoke-static {p6, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p6, Luk/co/uktv/dave/messaging/ajb/PlayerStateChangedAjbMessage;

    sget-object p7, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->ERROR:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    sget-object v0, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Format:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-direct {p6, p1, p7, v0, p5}, Luk/co/uktv/dave/messaging/ajb/PlayerStateChangedAjbMessage;-><init>(Ljava/lang/String;Luk/co/uktv/dave/browser/web/MediaPlayer$State;Luk/co/uktv/dave/browser/web/MediaPlayer$Error;Ljava/lang/String;)V

    invoke-static {p6}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    .line 78
    :cond_3
    :goto_1
    new-instance p5, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p5}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 79
    invoke-virtual {p5, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmConfiguration(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->duration:J

    return-wide v0
.end method

.method public getError()Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->time:J

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->paused:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    iput-wide p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->duration:J

    return-void
.end method

.method public setError(Luk/co/uktv/dave/browser/web/MediaPlayer$Error;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    .line 128
    sget-object p1, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->ERROR:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setState(Luk/co/uktv/dave/browser/web/MediaPlayer$State;)V

    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paused"
        }
    .end annotation

    iput-boolean p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->paused:Z

    return-void
.end method

.method public setState(Luk/co/uktv/dave/browser/web/MediaPlayer$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    return-void
.end method

.method public setTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    iput-wide p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->time:J

    return-void
.end method
