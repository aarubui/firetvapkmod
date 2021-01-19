.class Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;
.super Ljava/lang/Object;
.source "DisposeMediaPlayerMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;->handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;

.field final synthetic val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

.field final synthetic val$playerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;Luk/co/uktv/dave/core/AppHostActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;

    .prologue
    .line 23
    iput-object p1, p0, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;->this$0:Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;

    iput-object p2, p0, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;->val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

    iput-object p3, p0, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;->val$playerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;->val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

    check-cast v0, Luk/co/uktv/dave/UKTVPlay;

    iget-object v1, p0, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler$1;->val$playerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/UKTVPlay;->disposeMediaPlayer(Ljava/lang/String;)V

    .line 27
    return-void
.end method
