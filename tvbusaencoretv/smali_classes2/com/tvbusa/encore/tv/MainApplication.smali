.class public Lcom/tvbusa/encore/tv/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# instance fields
.field private adRule:Ljava/lang/String;

.field private contentString:Ljava/lang/String;

.field private liveStreamURL:Ljava/lang/String;

.field private numOfAdsInPod:Ljava/lang/Integer;

.field private number:Ljava/lang/String;

.field private numofPreRoll:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->contentString:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveStreamURL()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->liveStreamURL:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfAdsInPod()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->numOfAdsInPod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumofPreRoll()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->numofPreRoll:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVideoAdRule()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->adRule:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 69
    return-void
.end method

.method public setContentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->contentString:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setLiveStreamURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->liveStreamURL:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setNumOfAdsInPod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/Integer;

    .line 29
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->numOfAdsInPod:Ljava/lang/Integer;

    .line 30
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->number:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setNumofPreRoll(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/Integer;

    .line 37
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->numofPreRoll:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setVideoAdRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->adRule:Ljava/lang/String;

    .line 55
    return-void
.end method
