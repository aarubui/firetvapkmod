.class public Luk/co/uktv/dave/ExitAppMessageHandler;
.super Luk/co/uktv/dave/core/MessageHandler;
.source "ExitAppMessageHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExitAppVideoMessageHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Luk/co/uktv/dave/core/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "appHost"    # Luk/co/uktv/dave/core/AppHostActivity;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 13
    invoke-virtual {p1}, Luk/co/uktv/dave/core/AppHostActivity;->exit()V

    .line 14
    const/4 v0, 0x1

    return v0
.end method
