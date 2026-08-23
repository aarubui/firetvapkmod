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

    .line 1
    iget-object v0, p0, LK4/u;->b:Lcom/brightcove/ssai/SSAIComponent;

    .line 2
    const-string v1, "vmap"

    .line 4
    iget-object v2, p0, LK4/u;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 6
    iget-boolean v3, v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->U0:Z

    .line 8
    const-string v4, "SSAI"

    .line 10
    if-eqz v3, :cond_0

    .line 12
    const-string p1, "Duplicate onVideo delivery ignored"

    .line 14
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    const/4 v3, 0x1

    .line 20
    iput-boolean v3, v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->U0:Z

    .line 21
    new-instance v3, Lcom/brightcove/ssai/controller/SSAISourceSelector;

    .line 23
    invoke-direct {v3}, Lcom/brightcove/ssai/controller/SSAISourceSelector;-><init>()V

    .line 25
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/brightcove/ssai/controller/SSAISourceSelector;->selectSource(Lcom/brightcove/player/model/Video;)Lcom/brightcove/player/model/Source;

    .line 28
    move-result-object v3

    .line 31
    invoke-virtual {v3, v1}, Lcom/brightcove/player/model/MetadataObject;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 35
    iget-object v6, p0, LK4/u;->a:Ljava/util/HashMap;

    .line 36
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    move-result-object v7

    .line 41
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 42
    move-result-object v7

    .line 45
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 46
    move-result-object v6

    .line 49
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v6

    .line 53
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v8

    .line 57
    if-eqz v8, :cond_1

    .line 58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v8

    .line 63
    check-cast v8, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    move-result-object v9

    .line 69
    check-cast v9, Ljava/lang/String;

    .line 70
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    move-result-object v8

    .line 75
    check-cast v8, Ljava/lang/String;

    .line 76
    invoke-virtual {v7, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v8, "VMAP base: "

    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v5

    .line 102
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v7, "VMAP final: "

    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v3}, Lcom/brightcove/player/model/MetadataObject;->getProperties()Ljava/util/Map;

    .line 126
    move-result-object v3

    .line 129
    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0, p1}, Lcom/brightcove/ssai/SSAIComponent;->processVideo(Lcom/brightcove/player/model/Video;)V

    .line 133
    invoke-static {v2}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->q(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 136
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/brightcove/player/view/BaseVideoView;->start()V
    :try_end_0
    .catch Lcom/brightcove/player/controller/NoSourceFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    const-string v3, "NoSourceFoundException \u2014 no SSAI source in video"

    .line 145
    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    const-string v4, "video="

    .line 152
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object v4, v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->e:Ljava/util/List;

    .line 157
    iget v5, v2, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->g:I

    .line 159
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v4

    .line 164
    check-cast v4, LK4/C;

    .line 165
    iget-object v4, v4, LK4/C;->e:Ljava/lang/String;

    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v3

    .line 175
    const-string v4, "AdNoSsaiSource"

    .line 176
    invoke-virtual {v2, v4, v3}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, LG3/u0;->j()Lz3/b;

    .line 181
    move-result-object v3

    .line 184
    if-eqz v3, :cond_2

    .line 185
    iget-object v3, v3, Lz3/b;->a:LD3/u;

    .line 187
    iget-object v4, v3, LD3/u;->o:LE3/e;

    .line 189
    iget-object v4, v4, LE3/e;->a:LE3/c;

    .line 191
    new-instance v5, LA/n;

    .line 193
    const/4 v6, 0x2

    .line 195
    invoke-direct {v5, v3, v6, v1}, LA/n;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 196
    invoke-virtual {v4, v5}, LE3/c;->a(Ljava/lang/Runnable;)LM2/q;

    .line 199
    :cond_2
    invoke-virtual {v0, p1}, Lcom/brightcove/ssai/SSAIComponent;->processVideo(Lcom/brightcove/player/model/Video;)V

    .line 202
    invoke-static {v2}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->r(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 205
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 209
    :goto_1
    return-void
    .line 212
.end method
