.class public final Luk/co/uktv/dave/messaging/internal/ShowErrorMessage;
.super Ljava/lang/Object;
.source "ShowErrorMessage.java"

# interfaces
.implements Luk/co/uktv/dave/messaging/Message;


# instance fields
.field private final messageId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Luk/co/uktv/dave/messaging/internal/ShowErrorMessage;->messageId:I

    return-void
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    .line 17
    iget v0, p0, Luk/co/uktv/dave/messaging/internal/ShowErrorMessage;->messageId:I

    return v0
.end method
