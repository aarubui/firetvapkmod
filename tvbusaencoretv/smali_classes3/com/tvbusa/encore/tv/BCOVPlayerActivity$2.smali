.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;
.super Ljava/lang/Object;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/brightcove/player/event/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prevousTime:I

    .line 197
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iput v1, v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->prTime:I

    .line 199
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iget v0, v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 200
    .local v0, "newPosition":I
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    iput v0, v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->selectedIndex:I

    .line 201
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->clearCache()V

    .line 202
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 203
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2$1;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2$1;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity$2;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    return-void
.end method
