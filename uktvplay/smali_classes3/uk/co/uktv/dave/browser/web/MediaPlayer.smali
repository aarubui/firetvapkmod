.class public Luk/co/uktv/dave/browser/web/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/browser/web/MediaPlayer$Error;,
        Luk/co/uktv/dave/browser/web/MediaPlayer$DrmType;,
        Luk/co/uktv/dave/browser/web/MediaPlayer$State;
    }
.end annotation


# instance fields
.field private duration:J

.field private error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

.field private final id:Ljava/lang/String;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private position:J

.field private state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Luk/co/uktv/dave/browser/web/MediaPlayer$DrmType;Ljava/lang/String;)V
    .locals 0
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
            "position",
            "mimeType",
            "contentUrl",
            "drmType",
            "laUrl"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->id:Ljava/lang/String;

    .line 50
    iput-wide p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->position:J

    const-wide/16 p2, 0x0

    .line 51
    iput-wide p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->duration:J

    .line 52
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->IDLE:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    iput-object p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    const/4 p2, 0x0

    .line 53
    iput-object p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 57
    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {p6}, Luk/co/uktv/dave/browser/web/MediaPlayer$DrmType;->access$000(Luk/co/uktv/dave/browser/web/MediaPlayer$DrmType;)Ljava/util/UUID;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Ljava/util/UUID;)V

    .line 58
    invoke-virtual {p2, p7}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-result-object p2

    .line 62
    :cond_0
    new-instance p3, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 63
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmConfiguration(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 83
    iget-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->duration:J

    return-wide v0
.end method

.method public getError()Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .locals 1

    .line 99
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 108
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 75
    iget-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->position:J

    return-wide v0
.end method

.method public getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;
    .locals 1

    .line 91
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    return-object v0
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

    .line 87
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

    .line 103
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    .line 104
    sget-object p1, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->ERROR:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    invoke-virtual {p0, p1}, Luk/co/uktv/dave/browser/web/MediaPlayer;->setState(Luk/co/uktv/dave/browser/web/MediaPlayer$State;)V

    return-void
.end method

.method public setPosition(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 79
    iput-wide p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->position:J

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

    .line 95
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    return-void
.end method
