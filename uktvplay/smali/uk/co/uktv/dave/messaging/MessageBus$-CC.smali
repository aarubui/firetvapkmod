.class public final synthetic Luk/co/uktv/dave/messaging/MessageBus$-CC;
.super Ljava/lang/Object;
.source "MessageBus.java"


# direct methods
.method public static post(Luk/co/uktv/dave/messaging/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Luk/co/uktv/dave/messaging/Message;",
            ">(TT;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 23
    sget-object p0, Luk/co/uktv/dave/messaging/MessageBus;->TAG:Ljava/lang/String;

    const-string v0, "Skipping posting empty message"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 26
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static postError(I)V
    .locals 1

    .line 30
    new-instance v0, Luk/co/uktv/dave/messaging/ShowErrorMessage;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/messaging/ShowErrorMessage;-><init>(I)V

    invoke-static {v0}, Luk/co/uktv/dave/messaging/MessageBus$-CC;->post(Luk/co/uktv/dave/messaging/Message;)V

    return-void
.end method

.method public static registerSubscriber(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static unregisterSubscriber(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
