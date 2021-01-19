.class public final enum Luk/co/uktv/dave/media/Error;
.super Ljava/lang/Enum;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Luk/co/uktv/dave/media/Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/media/Error;

.field public static final enum Decode:Luk/co/uktv/dave/media/Error;

.field public static final enum Format:Luk/co/uktv/dave/media/Error;

.field public static final enum Generic:Luk/co/uktv/dave/media/Error;

.field public static final enum Incompat:Luk/co/uktv/dave/media/Error;

.field public static final enum Network:Luk/co/uktv/dave/media/Error;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Luk/co/uktv/dave/media/Error;

    const-string v1, "Generic"

    const-string v2, "V000"

    invoke-direct {v0, v1, v3, v2}, Luk/co/uktv/dave/media/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/co/uktv/dave/media/Error;->Generic:Luk/co/uktv/dave/media/Error;

    .line 6
    new-instance v0, Luk/co/uktv/dave/media/Error;

    const-string v1, "Network"

    const-string v2, "V002"

    invoke-direct {v0, v1, v4, v2}, Luk/co/uktv/dave/media/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/co/uktv/dave/media/Error;->Network:Luk/co/uktv/dave/media/Error;

    .line 7
    new-instance v0, Luk/co/uktv/dave/media/Error;

    const-string v1, "Decode"

    const-string v2, "V003"

    invoke-direct {v0, v1, v5, v2}, Luk/co/uktv/dave/media/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/co/uktv/dave/media/Error;->Decode:Luk/co/uktv/dave/media/Error;

    .line 8
    new-instance v0, Luk/co/uktv/dave/media/Error;

    const-string v1, "Format"

    const-string v2, "V004"

    invoke-direct {v0, v1, v6, v2}, Luk/co/uktv/dave/media/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/co/uktv/dave/media/Error;->Format:Luk/co/uktv/dave/media/Error;

    .line 9
    new-instance v0, Luk/co/uktv/dave/media/Error;

    const-string v1, "Incompat"

    const-string v2, "V005"

    invoke-direct {v0, v1, v7, v2}, Luk/co/uktv/dave/media/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/co/uktv/dave/media/Error;->Incompat:Luk/co/uktv/dave/media/Error;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Luk/co/uktv/dave/media/Error;

    sget-object v1, Luk/co/uktv/dave/media/Error;->Generic:Luk/co/uktv/dave/media/Error;

    aput-object v1, v0, v3

    sget-object v1, Luk/co/uktv/dave/media/Error;->Network:Luk/co/uktv/dave/media/Error;

    aput-object v1, v0, v4

    sget-object v1, Luk/co/uktv/dave/media/Error;->Decode:Luk/co/uktv/dave/media/Error;

    aput-object v1, v0, v5

    sget-object v1, Luk/co/uktv/dave/media/Error;->Format:Luk/co/uktv/dave/media/Error;

    aput-object v1, v0, v6

    sget-object v1, Luk/co/uktv/dave/media/Error;->Incompat:Luk/co/uktv/dave/media/Error;

    aput-object v1, v0, v7

    sput-object v0, Luk/co/uktv/dave/media/Error;->$VALUES:[Luk/co/uktv/dave/media/Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Luk/co/uktv/dave/media/Error;->code:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/media/Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Luk/co/uktv/dave/media/Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/media/Error;

    return-object v0
.end method

.method public static values()[Luk/co/uktv/dave/media/Error;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Luk/co/uktv/dave/media/Error;->$VALUES:[Luk/co/uktv/dave/media/Error;

    invoke-virtual {v0}, [Luk/co/uktv/dave/media/Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/media/Error;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UKTV-01-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/uktv/dave/media/Error;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
