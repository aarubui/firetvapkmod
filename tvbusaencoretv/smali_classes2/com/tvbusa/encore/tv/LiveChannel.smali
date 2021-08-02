.class public Lcom/tvbusa/encore/tv/LiveChannel;
.super Ljava/lang/Object;
.source "LiveChannel.java"


# instance fields
.field private banner:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "img"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "banner"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/LiveChannel;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/tvbusa/encore/tv/LiveChannel;->setImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/tvbusa/encore/tv/LiveChannel;->setUrl(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p4}, Lcom/tvbusa/encore/tv/LiveChannel;->setBanner(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getBanner()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LiveChannel;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LiveChannel;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LiveChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LiveChannel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0
    .param p1, "banner"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LiveChannel;->banner:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LiveChannel;->img:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LiveChannel;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LiveChannel;->url:Ljava/lang/String;

    return-void
.end method
