.class Lcom/tvbusa/encore/tv/SeriesActivity$2;
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

    .line 105
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    check-cast v1, Ljava/io/Serializable;

    const-string v3, "episodes"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    const-string v1, "selectedIndex"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    const-string v3, "pid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    const-string v3, "parent"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "hasHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v1, "historyTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    iget-object v1, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    const-string v2, "banner"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity$2;->this$0:Lcom/tvbusa/encore/tv/SeriesActivity;

    invoke-virtual {v1, v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method
