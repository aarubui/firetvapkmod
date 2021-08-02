.class public final enum Luk/co/uktv/dave/media/MediaPlayerInfo$Error;
.super Ljava/lang/Enum;
.source "MediaPlayerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/media/MediaPlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/co/uktv/dave/media/MediaPlayerInfo$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

.field public static final enum Decode:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

.field public static final enum Format:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

.field public static final enum Generic:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

.field public static final enum Incompat:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

.field public static final enum Network:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 24
    new-instance v0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    const-string v1, "Generic"

    const/4 v2, 0x0

    const-string v3, "V000"

    invoke-direct {v0, v1, v2, v3}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Generic:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    .line 25
    new-instance v1, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    const-string v3, "Network"

    const/4 v4, 0x1

    const-string v5, "V002"

    invoke-direct {v1, v3, v4, v5}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Network:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    .line 26
    new-instance v3, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    const-string v5, "Decode"

    const/4 v6, 0x2

    const-string v7, "V003"

    invoke-direct {v3, v5, v6, v7}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Decode:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    .line 27
    new-instance v5, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    const-string v7, "Format"

    const/4 v8, 0x3

    const-string v9, "V004"

    invoke-direct {v5, v7, v8, v9}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Format:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    .line 28
    new-instance v7, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    const-string v9, "Incompat"

    const/4 v10, 0x4

    const-string v11, "V005"

    invoke-direct {v7, v9, v10, v11}, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->Incompat:Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    const/4 v9, 0x5

    new-array v9, v9, [Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 22
    sput-object v9, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->$VALUES:[Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/media/MediaPlayerInfo$Error;
    .locals 1

    .line 22
    const-class v0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    return-object p0
.end method

.method public static values()[Luk/co/uktv/dave/media/MediaPlayerInfo$Error;
    .locals 1

    .line 22
    sget-object v0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->$VALUES:[Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    invoke-virtual {v0}, [Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/media/MediaPlayerInfo$Error;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UKTV-01-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/co/uktv/dave/media/MediaPlayerInfo$Error;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
