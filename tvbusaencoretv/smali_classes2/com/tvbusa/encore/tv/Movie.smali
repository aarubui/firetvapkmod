.class public Lcom/tvbusa/encore/tv/Movie;
.super Ljava/lang/Object;
.source "Movie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0xa18d594d7fe074dL


# instance fields
.field private bgImageUrl:Ljava/lang/String;

.field private cardImageUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:J

.field private studio:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Movie;->bgImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCardImageUrl()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Movie;->cardImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Movie;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/tvbusa/encore/tv/Movie;->id:J

    return-wide v0
.end method

.method public getStudio()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Movie;->studio:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Movie;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Movie;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "bgImageUrl"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Movie;->bgImageUrl:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setCardImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardImageUrl"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Movie;->cardImageUrl:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Movie;->description:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 40
    iput-wide p1, p0, Lcom/tvbusa/encore/tv/Movie;->id:J

    .line 41
    return-void
.end method

.method public setStudio(Ljava/lang/String;)V
    .locals 0
    .param p1, "studio"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Movie;->studio:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Movie;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoUrl"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Movie;->videoUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Movie{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tvbusa/encore/tv/Movie;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/Movie;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/Movie;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/Movie;->bgImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cardImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/Movie;->cardImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
