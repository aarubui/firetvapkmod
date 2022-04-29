.class public Luk/co/uktv/dave/browser/web/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/browser/web/MediaPlayer$Error;,
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
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "laUrl"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->id:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->position:J

    const-wide/16 p2, 0x0

    .line 37
    iput-wide p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->duration:J

    .line 38
    sget-object p2, Luk/co/uktv/dave/browser/web/MediaPlayer$State;->IDLE:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    iput-object p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    const-string p2, "http://cdn.http.anno.channel4.com/"

    invoke-virtual {p5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 41
    new-instance p2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 42
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    if-eqz p6, :cond_0

    .line 46
    sget-object p2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 47
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmUuid(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p2

    .line 48
    invoke-virtual {p2, p6}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 66
    iget-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->duration:J

    return-wide v0
.end method

.method public getError()Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .locals 1

    .line 82
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 91
    iget-object v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 58
    iget-wide v0, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->position:J

    return-wide v0
.end method

.method public getState()Luk/co/uktv/dave/browser/web/MediaPlayer$State;
    .locals 1

    .line 74
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

    .line 70
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

    .line 86
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->error:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    .line 87
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

    .line 62
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

    .line 78
    iput-object p1, p0, Luk/co/uktv/dave/browser/web/MediaPlayer;->state:Luk/co/uktv/dave/browser/web/MediaPlayer$State;

    return-void
.end method
