.class Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;
.super Ljava/lang/Object;
.source "BCOVSSAIPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordAR(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$time"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iput p2, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Midroll - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;->val$time:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestIMA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget-object v1, v0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->sss:Ljava/lang/String;

    const-string v2, "AR"

    invoke-virtual {v0, v1, v2}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->snPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 439
    .local v0, "adParams":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->parent:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "AdRequest"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 441
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$11;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordFirebaseAR()V

    .line 442
    return-void
.end method
