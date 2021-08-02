.class public final enum Luk/co/uktv/dave/media/MediaPlayerInfo$State;
.super Ljava/lang/Enum;
.source "MediaPlayerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/media/MediaPlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/co/uktv/dave/media/MediaPlayerInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum BUFFERING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum COMPLETED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum ERROR:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum IDLE:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum PAUSED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum PLAYING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum PREPARING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

.field public static final enum STOPPED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->IDLE:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 13
    new-instance v1, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->PREPARING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 14
    new-instance v3, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->ERROR:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 15
    new-instance v5, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v7, "PLAYING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->PLAYING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 16
    new-instance v7, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v9, "PAUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->PAUSED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 17
    new-instance v9, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v11, "BUFFERING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->BUFFERING:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 18
    new-instance v11, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v13, "COMPLETED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->COMPLETED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    .line 19
    new-instance v13, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const-string v15, "STOPPED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Luk/co/uktv/dave/media/MediaPlayerInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->STOPPED:Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    const/16 v15, 0x8

    new-array v15, v15, [Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 11
    sput-object v15, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->$VALUES:[Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/media/MediaPlayerInfo$State;
    .locals 1

    .line 11
    const-class v0, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    return-object p0
.end method

.method public static values()[Luk/co/uktv/dave/media/MediaPlayerInfo$State;
    .locals 1

    .line 11
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayerInfo$State;->$VALUES:[Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    invoke-virtual {v0}, [Luk/co/uktv/dave/media/MediaPlayerInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/media/MediaPlayerInfo$State;

    return-object v0
.end method
