.class Lcom/tvbusa/encore/tv/SeriesActivity$8$1;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity$8;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/SeriesActivity$8;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/SeriesActivity$8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 459
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    const-string v0, "VVV"

    const-string v1, "Request Error - Run Again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$8;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8$1;->this$1:Lcom/tvbusa/encore/tv/SeriesActivity$8;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->bcov_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->requestBCOV(Ljava/lang/String;)V

    .line 465
    return-void
.end method
