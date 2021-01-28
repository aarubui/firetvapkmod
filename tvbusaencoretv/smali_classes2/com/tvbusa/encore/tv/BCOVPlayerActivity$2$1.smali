.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2$1;
.super Ljava/lang/Object;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->processEvent(Lcom/brightcove/player/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;

    .line 209
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v1, v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->playThisVideo(I)V

    .line 213
    return-void
.end method
