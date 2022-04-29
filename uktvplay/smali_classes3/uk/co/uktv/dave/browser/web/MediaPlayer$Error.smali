.class public final enum Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/browser/web/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/co/uktv/dave/browser/web/MediaPlayer$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

.field public static final enum Decode:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UKTV-01-V003"
    .end annotation
.end field

.field public static final enum Format:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UKTV-01-V004"
    .end annotation
.end field

.field public static final enum Generic:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UKTV-01-V000"
    .end annotation
.end field

.field public static final enum Incompat:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UKTV-01-V005"
    .end annotation
.end field

.field public static final enum Network:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UKTV-01-V002"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 20
    new-instance v0, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    const-string v1, "Generic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Generic:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    .line 21
    new-instance v1, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    const-string v3, "Network"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Network:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    .line 22
    new-instance v3, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    const-string v5, "Decode"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Decode:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    .line 23
    new-instance v5, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    const-string v7, "Format"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Format:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    .line 24
    new-instance v7, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    const-string v9, "Incompat"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->Incompat:Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    const/4 v9, 0x5

    new-array v9, v9, [Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 19
    sput-object v9, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->$VALUES:[Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 19
    const-class v0, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-object p0
.end method

.method public static values()[Luk/co/uktv/dave/browser/web/MediaPlayer$Error;
    .locals 1

    .line 19
    sget-object v0, Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->$VALUES:[Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    invoke-virtual {v0}, [Luk/co/uktv/dave/browser/web/MediaPlayer$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/browser/web/MediaPlayer$Error;

    return-object v0
.end method
