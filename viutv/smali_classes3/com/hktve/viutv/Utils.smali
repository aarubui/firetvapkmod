.class public Lcom/hktve/viutv/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


.method public static fakeIp(Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;)V
    .locals 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-Forwarded-For"

    const-string v2, "0.0.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;->httpHeaders(Ljava/util/Map;)Lcom/jwplayer/pub/api/media/playlists/PlaylistItem$Builder;

    return-void
.end method

.method public static fakeIp(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 2
    const-string v0, "X-Forwarded-For"

    const-string v1, "0.0.0.0"

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    return-void
.end method
