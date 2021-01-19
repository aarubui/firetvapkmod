.class Luk/co/uktv/dave/core/AppHostWebViewInterface$1$1;
.super Ljava/lang/Object;
.source "AppHostWebViewInterface.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/core/AppHostWebViewInterface$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Luk/co/uktv/dave/core/AppHostWebViewInterface$1;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/core/AppHostWebViewInterface$1;)V
    .locals 0
    .param p1, "this$1"    # Luk/co/uktv/dave/core/AppHostWebViewInterface$1;

    .prologue
    .line 38
    iput-object p1, p0, Luk/co/uktv/dave/core/AppHostWebViewInterface$1$1;->this$1:Luk/co/uktv/dave/core/AppHostWebViewInterface$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/uktv/dave/core/AppHostWebViewInterface$1$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method
