.class public Lcom/tvbusa/encore/tv/Episode;
.super Ljava/lang/Object;
.source "Episode.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "description",
            "image",
            "id"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->image:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->name:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->description:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->id:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/Episode;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/tvbusa/encore/tv/Episode;->setDescription(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p3}, Lcom/tvbusa/encore/tv/Episode;->setImage(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p4}, Lcom/tvbusa/encore/tv/Episode;->setId(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Episode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Episode;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Episode;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Episode;->image:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Episode;->name:Ljava/lang/String;

    return-void
.end method
