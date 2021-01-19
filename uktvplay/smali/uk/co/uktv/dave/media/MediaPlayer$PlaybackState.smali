.class public final enum Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum BUFFERING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum COMPLETED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum ERROR:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum IDLE:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum PAUSED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum PLAYING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum PREPARING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

.field public static final enum STOPPED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->IDLE:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 20
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PREPARING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 21
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->ERROR:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 22
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PLAYING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 23
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PAUSED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 24
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->BUFFERING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 25
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->COMPLETED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 26
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    const-string v1, "STOPPED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->STOPPED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->IDLE:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v1, v0, v3

    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PREPARING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v1, v0, v4

    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->ERROR:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v1, v0, v5

    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PLAYING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v1, v0, v6

    sget-object v1, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->PAUSED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->BUFFERING:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->COMPLETED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->STOPPED:Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    aput-object v2, v0, v1

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->$VALUES:[Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    return-object v0
.end method

.method public static values()[Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->$VALUES:[Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    invoke-virtual {v0}, [Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/media/MediaPlayer$PlaybackState;

    return-object v0
.end method
