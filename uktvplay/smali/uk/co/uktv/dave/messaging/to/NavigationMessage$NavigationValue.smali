.class public final enum Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;
.super Ljava/lang/Enum;
.source "NavigationMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/to/NavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

.field public static final enum BACK:Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->BACK:Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    const/4 v1, 0x1

    new-array v1, v1, [Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    aput-object v0, v1, v2

    .line 18
    sput-object v1, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->$VALUES:[Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

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

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;
    .locals 1

    .line 18
    const-class v0, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    return-object p0
.end method

.method public static values()[Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;
    .locals 1

    .line 18
    sget-object v0, Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->$VALUES:[Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    invoke-virtual {v0}, [Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/messaging/to/NavigationMessage$NavigationValue;

    return-object v0
.end method
