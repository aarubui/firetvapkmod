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

.field private playEndTimestamp:Ljava/lang/String;

.field private playStartTimestamp:Ljava/lang/String;

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

    move-result-object v0

    iput-object v0, p0, Lcom/utv/bean/PlayingBean;->playEndTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/utv/bean/PlayingBean;->playStartTimestamp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/utv/bean/PlayingBean;->playEndTimestamp:Ljava/lang/String;

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

    iget-object p2, p0, Lcom/utv/bean/PlayingBean;->playStartTimestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/utv/bean/PlayingBean;->playEndTimestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public toContentValues(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 6

    const-string v1, "title"

    iget-object v2, p0, Lcom/utv/bean/PlayingBean;->programName:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_time_utc_millis"

    iget-object v2, p0, Lcom/utv/bean/PlayingBean;->playStartTimestamp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "end_time_utc_millis"

    iget-object v2, p0, Lcom/utv/bean/PlayingBean;->playEndTimestamp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "channel_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
