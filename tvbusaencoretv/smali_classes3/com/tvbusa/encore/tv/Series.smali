.class public Lcom/tvbusa/encore/tv/Series;
.super Ljava/lang/Object;
.source "Series.java"


# instance fields
.field private banner:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private viet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "viet"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "thumb"    # Ljava/lang/String;
    .param p5, "banner"    # Ljava/lang/String;
    .param p6, "info"    # Ljava/lang/String;
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
            "name",
            "viet",
            "id",
            "thumb",
            "banner",
            "info"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/Series;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/tvbusa/encore/tv/Series;->setViet(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/tvbusa/encore/tv/Series;->setId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p4}, Lcom/tvbusa/encore/tv/Series;->setThumb(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p5}, Lcom/tvbusa/encore/tv/Series;->setBanner(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p6}, Lcom/tvbusa/encore/tv/Series;->setInfo(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getBanner()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Series;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Series;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Series;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Series;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Series;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getViet()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Series;->viet:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0
    .param p1, "banner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Series;->banner:Ljava/lang/String;

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

    .line 28
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Series;->id:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Series;->info:Ljava/lang/String;

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

    .line 19
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Series;->name:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumb"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Series;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setViet(Ljava/lang/String;)V
    .locals 0
    .param p1, "viet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viet"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Series;->viet:Ljava/lang/String;

    return-void
.end method
