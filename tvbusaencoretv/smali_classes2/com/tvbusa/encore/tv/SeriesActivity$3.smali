.class Lcom/tvbusa/encore/tv/SeriesActivity$3;
.super Ljava/lang/Object;
.source "SeriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SeriesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SeriesActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 122
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "episodes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->historyIndex:I

    const-string v2, "selectedIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "hasHistory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->historyTime:I

    const-string v2, "historyTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    const-string v2, "banner"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$3;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v1, v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method