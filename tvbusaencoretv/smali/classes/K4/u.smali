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
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->i1:[F

    .line 21
    const-string v0, "AdCatalogError"

    .line 23
    iget-object v1, p0, LK4/u;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 25
    invoke-virtual {v1, v0, p1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance p1, LF3/q;

    .line 30
    const/4 v0, 0x4

    .line 32
    invoke-direct {p1, p0, v0}, LF3/q;-><init>(Ljava/lang/Object;I)V

    .line 33
    invoke-virtual {v1, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
    .line 39
.end method

.method public final onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 14
    iget-object v7, v1, LK4/u;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 273
    invoke-static {v7}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->q(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 276
    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 348
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 349
    return-void
    .line 352
.end method
