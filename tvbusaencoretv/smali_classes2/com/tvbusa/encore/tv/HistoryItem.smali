.class public Lcom/tvbusa/encore/tv/HistoryItem;
.super Ljava/lang/Object;
.source "HistoryItem.java"


# instance fields
.field private banner:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private thumb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "thumb"    # Ljava/lang/String;
    .param p5, "banner"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/HistoryItem;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/tvbusa/encore/tv/HistoryItem;->setParent(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/tvbusa/encore/tv/HistoryItem;->setId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p4}, Lcom/tvbusa/encore/tv/HistoryItem;->setThumb(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p5}, Lcom/tvbusa/encore/tv/HistoryItem;->setBanner(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getBanner()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tvbusa/encore/tv/HistoryItem;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tvbusa/encore/tv/HistoryItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tvbusa/encore/tv/HistoryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tvbusa/encore/tv/HistoryItem;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tvbusa/encore/tv/HistoryItem;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0
    .param p1, "banner"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryItem;->banner:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryItem;->parent:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumb"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/tvbusa/encore/tv/HistoryItem;->thumb:Ljava/lang/String;

    return-void
.end method
