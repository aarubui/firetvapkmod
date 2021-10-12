.class Lcom/tvbusa/encore/tv/SeriesActivity$4$1;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity$4;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/SeriesActivity$4;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/SeriesActivity$4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$4;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$4;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$000(Lcom/tvbusa/encore/tv/SeriesActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$4;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    const-string v1, "\u79fb\u9664\u6536\u85cf"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$4$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$4;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$4;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    const-string v1, "\u52a0\u5165\u6536\u85cf"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method
