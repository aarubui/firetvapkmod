.class Lcom/tvbusa/encore/tv/SeriesActivity$8;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity;->requestContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

.field final synthetic val$year:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SeriesActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$year"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iput-object p2, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->val$year:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 382
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/SearchResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "\u5e74\u4efd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->val$year:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$8;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v1, v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method
