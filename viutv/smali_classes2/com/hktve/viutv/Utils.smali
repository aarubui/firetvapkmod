.class public Lcom/hktve/viutv/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static fakeIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2
    const v0, 0x40000

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x71fc0000

    add-int v1, v1, v0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hktve/viutv/Utils;->fakeIp:Ljava/lang/String;

    return-void
.end method

.method public static fakeIp(Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;)V
    .locals 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-Forwarded-For"

    sget-object v2, Lcom/hktve/viutv/Utils;->fakeIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;->httpHeaders(Ljava/util/Map;)Lcom/longtailvideo/jwplayer/media/playlists/PlaylistItem$Builder;

    return-void
.end method

.method public static fakeIp(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 2
    const-string v0, "X-Forwarded-For"

    sget-object v1, Lcom/hktve/viutv/Utils;->fakeIp:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    return-void
.end method
