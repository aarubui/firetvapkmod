.class public final LK4/u;
.super Lcom/brightcove/player/edge/VideoListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Lcom/brightcove/ssai/SSAIComponent;

.field public final synthetic c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;Ljava/util/HashMap;Lcom/brightcove/ssai/SSAIComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK4/u;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 2
    iput-object p2, p0, LK4/u;->a:Ljava/util/HashMap;

    .line 4
    iput-object p3, p0, LK4/u;->b:Lcom/brightcove/ssai/SSAIComponent;

    .line 6
    invoke-direct {p0}, Lcom/brightcove/player/edge/VideoListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Catalog error \u2014 playback request failed: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "SSAI"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->f1:[F

    .line 21
    iget-object v0, p0, LK4/u;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 23
    const-string v1, "AdCatalogError"

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
    .line 30
.end method

.method public final onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 10

    .line 4
    iget-object v2, p0, LK4/u;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 133
    invoke-static {v2}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->q(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 136
    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 139
    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 209
    return-void
    .line 212
.end method
