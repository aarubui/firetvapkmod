.class public final enum Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;
.super Ljava/lang/Enum;
.source "ControlMediaPlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

.field public static final enum PAUSE:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

.field public static final enum RESUME:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

.field public static final enum SEEK:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

.field public static final enum STOP:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    const-string v1, "RESUME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->RESUME:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    .line 20
    new-instance v1, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    const-string v3, "PAUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->PAUSE:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    .line 21
    new-instance v3, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    const-string v5, "STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->STOP:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    .line 22
    new-instance v5, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    const-string v7, "SEEK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->SEEK:Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    const/4 v7, 0x4

    new-array v7, v7, [Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 18
    sput-object v7, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->$VALUES:[Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;
    .locals 1

    .line 18
    const-class v0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    return-object p0
.end method

.method public static values()[Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;
    .locals 1

    .line 18
    sget-object v0, Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->$VALUES:[Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    invoke-virtual {v0}, [Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/messaging/from/ControlMediaPlayerMessage$Action;

    return-object v0
.end method
