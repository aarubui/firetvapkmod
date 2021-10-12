.class Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2$1;
.super Ljava/lang/Object;
.source "BCOVLivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;->processEvent(Lcom/brightcove/player/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$500(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 240
    return-void
.end method
