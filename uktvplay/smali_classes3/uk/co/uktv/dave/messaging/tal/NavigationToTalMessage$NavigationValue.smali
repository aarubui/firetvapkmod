.class public final enum Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;
.super Ljava/lang/Enum;
.source "NavigationToTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

.field public static final enum BACK:Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "back"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;->BACK:Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    const/4 v1, 0x1

    new-array v1, v1, [Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    aput-object v0, v1, v2

    .line 11
    sput-object v1, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;->$VALUES:[Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11
    const-class v0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    return-object p0
.end method

.method public static values()[Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;
    .locals 1

    .line 11
    sget-object v0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;->$VALUES:[Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    invoke-virtual {v0}, [Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    return-object v0
.end method
