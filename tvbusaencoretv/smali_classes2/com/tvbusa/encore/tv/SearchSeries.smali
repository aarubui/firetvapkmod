.class public Lcom/tvbusa/encore/tv/SearchSeries;
.super Ljava/lang/Object;
.source "SearchSeries.java"


# instance fields
.field private english:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private thumb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "english"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "thumb"    # Ljava/lang/String;
    .param p5, "keyword"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/SearchSeries;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/tvbusa/encore/tv/SearchSeries;->setEnglish(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/tvbusa/encore/tv/SearchSeries;->setId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p4}, Lcom/tvbusa/encore/tv/SearchSeries;->setThumb(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p5}, Lcom/tvbusa/encore/tv/SearchSeries;->setKeyword(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getEnglish()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchSeries;->english:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchSeries;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchSeries;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchSeries;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SearchSeries;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public setEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "english"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchSeries;->english:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchSeries;->id:Ljava/lang/String;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchSeries;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchSeries;->name:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumb"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SearchSeries;->thumb:Ljava/lang/String;

    return-void
.end method
