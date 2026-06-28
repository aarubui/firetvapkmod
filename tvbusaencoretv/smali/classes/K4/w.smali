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

    .line 1
    iget-object v0, p0, LK4/w;->b:Lcom/brightcove/ssai/SSAIComponent;

    .line 2
    const-string v1, "vmap"

    .line 4
    const-string v2, "SSAI"

    .line 6
    iget-object v3, p0, LK4/w;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 8
    const-string v4, "VMAP final: "

    .line 10
    const-string v5, "VMAP base: "

    .line 12
    new-instance v6, Lcom/brightcove/ssai/controller/SSAISourceSelector;

    .line 14
    invoke-direct {v6}, Lcom/brightcove/ssai/controller/SSAISourceSelector;-><init>()V

    .line 16
    :try_start_0
    invoke-virtual {v6, p1}, Lcom/brightcove/ssai/controller/SSAISourceSelector;->selectSource(Lcom/brightcove/player/model/Video;)Lcom/brightcove/player/model/Source;

    .line 19
    move-result-object v6

    .line 22
    invoke-virtual {v6, v1}, Lcom/brightcove/player/model/MetadataObject;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v7

    .line 26
    iget-object v8, p0, LK4/w;->a:Ljava/util/HashMap;

    .line 27
    invoke-static {v3, v7, v8}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->i(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    .line 29
    move-result-object v8

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 44
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 59
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v6}, Lcom/brightcove/player/model/MetadataObject;->getProperties()Ljava/util/Map;

    .line 63
    move-result-object v4

    .line 66
    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v0, p1}, Lcom/brightcove/ssai/SSAIComponent;->processVideo(Lcom/brightcove/player/model/Video;)V

    .line 70
    invoke-static {v3}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->o(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 73
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->start()V
    :try_end_0
    .catch Lcom/brightcove/player/controller/NoSourceFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    const-string v4, "NoSourceFoundException \u2014 no SSAI source in video"

    .line 82
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-static {}, LG3/u0;->m()Lz3/b;

    .line 87
    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    iget-object v2, v2, Lz3/b;->a:LD3/v;

    .line 93
    iget-object v4, v2, LD3/v;->o:LE3/e;

    .line 95
    iget-object v4, v4, LE3/e;->a:LE3/c;

    .line 97
    new-instance v5, LA/n;

    .line 99
    const/4 v6, 0x2

    .line 101
    invoke-direct {v5, v2, v6, v1}, LA/n;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 102
    invoke-virtual {v4, v5}, LE3/c;->a(Ljava/lang/Runnable;)LM2/q;

    .line 105
    :cond_0
    invoke-virtual {v0, p1}, Lcom/brightcove/ssai/SSAIComponent;->processVideo(Lcom/brightcove/player/model/Video;)V

    .line 108
    invoke-static {v3}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->p(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 111
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 115
    new-instance p1, Ljava/lang/RuntimeException;

    .line 118
    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    throw p1
    .line 123
.end method
