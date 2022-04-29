.class public abstract Luk/co/uktv/dave/messaging/tal/TalMessage;
.super Ljava/lang/Object;
.source "TalMessage.java"

# interfaces
.implements Luk/co/uktv/dave/messaging/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/messaging/tal/TalMessage$To;,
        Luk/co/uktv/dave/messaging/tal/TalMessage$From;
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/TalMessage;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/TalMessage;->type:Ljava/lang/String;

    return-object v0
.end method
