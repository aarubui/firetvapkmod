.class Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;
.super Ljava/lang/Object;
.source "BCOVSSAIPlayerActivity.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .param p1, "event"    # Lcom/brightcove/player/event/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prevousTime:I

    .line 316
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iput v1, v0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->prTime:I

    .line 318
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v0, v0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->selectedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 319
    .local v0, "newPosition":I
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iput v0, v1, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->selectedIndex:I

    .line 320
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->clearCache()V

    .line 321
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->finish()V

    .line 322
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget v2, v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->selectedIndex:I

    const-string v3, "selectedIndex"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$8;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 324
    return-void
.end method
