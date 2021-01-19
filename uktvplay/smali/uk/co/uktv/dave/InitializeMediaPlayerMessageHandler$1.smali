.class Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;
.super Ljava/lang/Object;
.source "InitializeMediaPlayerMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;->handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;

.field final synthetic val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

.field final synthetic val$contentUrl:Ljava/lang/String;

.field final synthetic val$laUrl:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$playerId:Ljava/lang/String;

.field final synthetic val$position:J


# direct methods
.method constructor <init>(Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;Luk/co/uktv/dave/core/AppHostActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;

    .prologue
    .line 52
    iput-object p1, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->this$0:Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;

    iput-object p2, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

    iput-object p3, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$playerId:Ljava/lang/String;

    iput-object p4, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$contentUrl:Ljava/lang/String;

    iput-object p6, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$laUrl:Ljava/lang/String;

    iput-wide p7, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 55
    iget-object v1, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

    check-cast v1, Luk/co/uktv/dave/UKTVPlay;

    iget-object v2, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$playerId:Ljava/lang/String;

    iget-object v3, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$contentUrl:Ljava/lang/String;

    iget-object v5, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$laUrl:Ljava/lang/String;

    iget-wide v6, p0, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler$1;->val$position:J

    invoke-virtual/range {v1 .. v7}, Luk/co/uktv/dave/UKTVPlay;->initializePlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    return-void
.end method
