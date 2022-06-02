.class public Lcom/utv/bean/PlayingBean;
.super Ljava/lang/Object;
.source "PlayingBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/utv/bean/PlayingBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private playEndTime:Ljava/lang/String;

.field private playStartTime:Ljava/lang/String;

.field private programId:Ljava/lang/String;

.field private programName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/utv/bean/PlayingBean$1;

    invoke-direct {v0}, Lcom/utv/bean/PlayingBean$1;-><init>()V

    sput-object v0, Lcom/utv/bean/PlayingBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/utv/bean/PlayingBean;->programName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/utv/bean/PlayingBean;->programId:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/utv/bean/PlayingBean;->playStartTime:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/utv/bean/PlayingBean;->playEndTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayEndTime()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/utv/bean/PlayingBean;->playEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStartTime()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/utv/bean/PlayingBean;->playStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/utv/bean/PlayingBean;->programId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/utv/bean/PlayingBean;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public setPlayEndTime(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/utv/bean/PlayingBean;->playEndTime:Ljava/lang/String;

    return-void
.end method

.method public setPlayStartTime(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/utv/bean/PlayingBean;->playStartTime:Ljava/lang/String;

    return-void
.end method

.method public setProgramId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/utv/bean/PlayingBean;->programId:Ljava/lang/String;

    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/utv/bean/PlayingBean;->programName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/utv/bean/PlayingBean;->programName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/utv/bean/PlayingBean;->programId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/utv/bean/PlayingBean;->playStartTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/utv/bean/PlayingBean;->playEndTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
