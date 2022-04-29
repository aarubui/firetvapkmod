.class public final Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;
.super Ljava/lang/Object;
.source "EvaluateJavaScriptMessage.java"

# interfaces
.implements Luk/co/uktv/dave/messaging/Message;


# instance fields
.field private final javaScriptCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaScriptCode"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;->javaScriptCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJavaScriptCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Luk/co/uktv/dave/messaging/internal/EvaluateJavaScriptMessage;->javaScriptCode:Ljava/lang/String;

    return-object v0
.end method
