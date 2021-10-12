.class Lcom/tvbusa/encore/tv/SeriesActivity$6$1;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity$6;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/SeriesActivity$6;

.field final synthetic val$s:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity$6;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/SeriesActivity$6;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$s"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$6;

    iput-object p2, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;->val$s:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;->val$s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$6;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$6;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$6;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity$6;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-static {v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->access$100(Lcom/tvbusa/encore/tv/SeriesActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getEpisodePos(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$6$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$6;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$6;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->checkHistory()V

    .line 272
    :goto_0
    return-void
.end method
