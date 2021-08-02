.class public Lcom/tvbusa/encore/tv/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# instance fields
.field private adRule:Ljava/lang/String;

.field private contentString:Ljava/lang/String;

.field private liveStreamURL:Ljava/lang/String;

.field private memberEnabled:Z

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

    .line 27
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->contentString:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveStreamURL()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->liveStreamURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberEnabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->memberEnabled:Z

    return v0
.end method

.method public getNumOfAdsInPod()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->numOfAdsInPod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumofPreRoll()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->numofPreRoll:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVideoAdRule()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tvbusa/encore/tv/MainApplication;->adRule:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 79
    return-void
.end method

.method public setContentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->contentString:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setLiveStreamURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->liveStreamURL:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setMemberEnabled(Z)V
    .locals 0
    .param p1, "s"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 23
    iput-boolean p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->memberEnabled:Z

    .line 24
    return-void
.end method

.method public setNumOfAdsInPod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->numOfAdsInPod:Ljava/lang/Integer;

    .line 40
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->number:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setNumofPreRoll(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->numofPreRoll:Ljava/lang/Integer;

    .line 48
    return-void
.end method

.method public setVideoAdRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainApplication;->adRule:Ljava/lang/String;

    .line 65
    return-void
.end method
