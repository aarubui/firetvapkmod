.class public Lcom/utv/bean/ChannelsBean;
.super Ljava/lang/Object;
.source "ChannelsBean.java"


# instance fields
.field private channelId:Ljava/lang/String;

.field private channelLogo:Ljava/lang/String;

.field private channelName:Ljava/lang/String;

.field private channelNum:Ljava/lang/String;

.field private coming:Lcom/utv/bean/ComingBean;

.field private jsonUrl:Ljava/lang/String;

.field private playing:Lcom/utv/bean/PlayingBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/utv/bean/ChannelsBean;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelLogo()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/utv/bean/ChannelsBean;->channelLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/utv/bean/ChannelsBean;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelNum()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/utv/bean/ChannelsBean;->channelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getComing()Lcom/utv/bean/ComingBean;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/utv/bean/ChannelsBean;->coming:Lcom/utv/bean/ComingBean;

    return-object v0
.end method

.method public getJsonUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/utv/bean/ChannelsBean;->jsonUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaying()Lcom/utv/bean/PlayingBean;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/utv/bean/ChannelsBean;->playing:Lcom/utv/bean/PlayingBean;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/utv/bean/ChannelsBean;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setChannelLogo(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/utv/bean/ChannelsBean;->channelLogo:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/utv/bean/ChannelsBean;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setChannelNum(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/utv/bean/ChannelsBean;->channelNum:Ljava/lang/String;

    return-void
.end method

.method public setComing(Lcom/utv/bean/ComingBean;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/utv/bean/ChannelsBean;->coming:Lcom/utv/bean/ComingBean;

    return-void
.end method

.method public setJsonUrl(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/utv/bean/ChannelsBean;->jsonUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlaying(Lcom/utv/bean/PlayingBean;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/utv/bean/ChannelsBean;->playing:Lcom/utv/bean/PlayingBean;

    return-void
.end method
