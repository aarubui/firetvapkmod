.class Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;
.super Ljava/lang/Object;
.source "BCOVLivePlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->requestAudioFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    .line 438
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .line 442
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$800(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange() focusChange? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$1202(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 446
    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$1202(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 450
    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;->access$1202(Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;)Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 453
    nop

    .line 456
    :goto_0
    return-void
.end method
