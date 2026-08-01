.class public final LK4/w;
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
    iput-object p1, p0, LK4/w;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 2
    iput-object p2, p0, LK4/w;->a:Ljava/util/HashMap;

    .line 4
    iput-object p3, p0, LK4/w;->b:Lcom/brightcove/ssai/SSAIComponent;

    .line 6
    invoke-direct {p0}, Lcom/brightcove/player/edge/VideoListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 10

    .line 6
    iget-object v3, p0, LK4/w;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 70
    invoke-static {v3}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->o(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 73
    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 76
    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 77
    return-void
    .line 123
.end method
