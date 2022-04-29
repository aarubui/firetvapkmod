.class public final Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$To;
.source "NavigationToTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "navigation"


# instance fields
.field private final value:Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;


# direct methods
.method public constructor <init>(Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "navigation"

    .line 16
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$To;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage;->value:Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    return-void
.end method


# virtual methods
.method public getValue()Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;
    .locals 1

    .line 21
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage;->value:Luk/co/uktv/dave/messaging/tal/NavigationToTalMessage$NavigationValue;

    return-object v0
.end method
