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

    .line 4
    iget-object v3, v1, LK4/u;->b:Lcom/brightcove/ssai/SSAIComponent;

    .line 6
    const-string v0, ""

    .line 8
    const-string v4, "vmap"

    .line 10
    const-string v5, "ad_cues"

    .line 12
    iget-object v6, v1, LK4/u;->a:Ljava/util/HashMap;

    .line 14
    iget-object v7, v1, LK4/u;->c:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    .line 16
    iget-boolean v8, v7, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->W0:Z

    .line 18
    const-string v9, "SSAI"

    .line 20
    if-eqz v8, :cond_0

    .line 22
    const-string v0, "Duplicate onVideo delivery ignored"

    .line 24
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_0
    const/4 v8, 0x1

    .line 30
    iput-boolean v8, v7, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->W0:Z

    .line 31
    new-instance v8, Lcom/brightcove/ssai/controller/SSAISourceSelector;

    .line 33
    invoke-direct {v8}, Lcom/brightcove/ssai/controller/SSAISourceSelector;-><init>()V

    .line 35
    :try_start_0
    invoke-virtual {v8, v2}, Lcom/brightcove/ssai/controller/SSAISourceSelector;->selectSource(Lcom/brightcove/player/model/Video;)Lcom/brightcove/player/model/Source;

    .line 38
    move-result-object v8

    .line 41
    invoke-virtual {v8, v4}, Lcom/brightcove/player/model/MetadataObject;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v10
    :try_end_0
    .catch Lcom/brightcove/player/controller/NoSourceFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/brightcove/player/model/MetadataObject;->getProperties()Ljava/util/Map;

    .line 46
    move-result-object v11

    .line 49
    const-string v12, "customFields"

    .line 50
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v11

    .line 55
    instance-of v12, v11, Ljava/util/Map;

    .line 56
    if-eqz v12, :cond_1

    .line 58
    check-cast v11, Ljava/util/Map;

    .line 60
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v11

    .line 65
    if-eqz v11, :cond_1

    .line 66
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    nop

    .line 73
    :cond_1
    move-object v11, v0

    .line 74
    :goto_0
    if-nez v11, :cond_2

    .line 75
    goto :goto_3

    .line 77
    :cond_2
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v13, ","

    .line 83
    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    move-result-object v11

    .line 88
    array-length v13, v11

    .line 89
    const/4 v14, 0x0

    .line 90
    :goto_1
    if-ge v14, v13, :cond_6

    .line 91
    aget-object v15, v11, v14

    .line 93
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 95
    move-result-object v15

    .line 98
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 99
    move-result v16
    :try_end_2
    .catch Lcom/brightcove/player/controller/NoSourceFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    if-eqz v16, :cond_3

    .line 103
    move-object/from16 v16, v0

    .line 105
    goto :goto_2

    .line 107
    :cond_3
    move-object/from16 v16, v0

    .line 108
    :try_start_3
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 110
    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/brightcove/player/controller/NoSourceFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 113
    const-wide/16 v17, 0x0

    .line 114
    cmp-long v15, v0, v17

    .line 116
    if-gtz v15, :cond_4

    .line 118
    goto :goto_2

    .line 120
    :cond_4
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    .line 121
    move-result v15

    .line 124
    if-lez v15, :cond_5

    .line 125
    const/16 v15, 0x2c

    .line 127
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :cond_5
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 135
    move-object/from16 v1, p0

    .line 137
    move-object/from16 v0, v16

    .line 139
    goto :goto_1

    .line 141
    :catch_1
    move-object/from16 v0, v16

    .line 142
    goto :goto_3

    .line 144
    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 148
    :goto_3
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v1, "ad_cues="

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 165
    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 178
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 182
    move-result-object v0

    .line 185
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 186
    move-result-object v1

    .line 189
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object v1

    .line 193
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v5

    .line 197
    if-eqz v5, :cond_7

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object v5

    .line 203
    check-cast v5, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 206
    move-result-object v6

    .line 209
    check-cast v6, Ljava/lang/String;

    .line 210
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 212
    move-result-object v5

    .line 215
    check-cast v5, Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 218
    goto :goto_4

    .line 221
    :cond_7
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    const-string v5, "VMAP base: "

    .line 231
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 242
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    const-string v5, "VMAP final: "

    .line 251
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v1

    .line 262
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v8}, Lcom/brightcove/player/model/MetadataObject;->getProperties()Ljava/util/Map;

    .line 266
    move-result-object v1

    .line 269
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {v3, v2}, Lcom/brightcove/ssai/SSAIComponent;->processVideo(Lcom/brightcove/player/model/Video;)V

    .line 273
    invoke-static {v7}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->q(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 276
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V
    :try_end_4
    .catch Lcom/brightcove/player/controller/NoSourceFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 280
    goto :goto_5

    .line 283
    :catch_2
    move-exception v0

    .line 284
    const-string v1, "NoSourceFoundException \u2014 no SSAI source in video"

    .line 285
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    const-string v4, "video="

    .line 292
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    iget-object v4, v7, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->e:Ljava/util/List;

    .line 297
    iget v5, v7, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->g:I

    .line 299
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 301
    move-result-object v4

    .line 304
    check-cast v4, LK4/B;

    .line 305
    iget-object v4, v4, LK4/B;->e:Ljava/lang/String;

    .line 307
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 315
    const-string v4, "AdNoSsaiSource"

    .line 316
    invoke-virtual {v7, v4, v1}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, LK4/d0;->d()Lz3/b;

    .line 321
    move-result-object v1

    .line 324
    if-eqz v1, :cond_8

    .line 325
    iget-object v1, v1, Lz3/b;->a:LD3/u;

    .line 327
    iget-object v4, v1, LD3/u;->o:LE3/e;

    .line 329
    iget-object v4, v4, LE3/e;->a:LE3/c;

    .line 331
    new-instance v5, LA/n;

    .line 333
    const/4 v6, 0x2

    .line 335
    invoke-direct {v5, v1, v6, v0}, LA/n;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 336
    invoke-virtual {v4, v5}, LE3/c;->a(Ljava/lang/Runnable;)LM2/q;

    .line 339
    :cond_8
    invoke-virtual {v3, v2}, Lcom/brightcove/ssai/SSAIComponent;->processVideo(Lcom/brightcove/player/model/Video;)V

    .line 342
    invoke-static {v7}, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->r(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;

    .line 345
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 349
    :goto_5
    return-void
    .line 352
.end method
