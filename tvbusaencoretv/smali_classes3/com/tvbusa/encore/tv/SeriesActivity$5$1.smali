.class Lcom/tvbusa/encore/tv/SeriesActivity$5$1;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity$5;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/SeriesActivity$5;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 228
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$000(Lcom/tvbusa/encore/tv/SeriesActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$002(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 230
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    const-string v2, "\u52a0\u5165\u6536\u85cf"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u5df2\u79fb\u9664\u6536\u85cf\u7bc0\u76ee"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u5df2\u6210\u529f\u6536\u85cf\u7bc0\u76ee"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$002(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 235
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$5$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$5;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$5;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    const-string v1, "\u79fb\u9664\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_0
    return-void
.end method
