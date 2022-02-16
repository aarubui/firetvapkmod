.class Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$16;
.super Ljava/lang/Object;
.source "BCOVSSAIPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->requestAudioFocus()V
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

    .line 594
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$16;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$16;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->access$700(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$16;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->access$802(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 602
    goto :goto_0

    .line 605
    :pswitch_2
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$16;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->access$802(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 606
    goto :goto_0

    .line 608
    :pswitch_3
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$16;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->access$802(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$AudioFocusState;

    .line 609
    nop

    .line 612
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
