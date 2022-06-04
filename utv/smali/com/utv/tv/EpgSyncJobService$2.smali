.class public Lcom/utv/tv/EpgSyncJobService$2;
.super Landroid/os/AsyncTask;
.source "EpgSyncJobService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic context:Landroid/content/Context;

.field public final synthetic logoUri:Landroid/net/Uri;

.field public final synthetic logoUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/utv/bean/ChannelsBean;)V
    .locals 0

    iput-object p1, p0, Lcom/utv/tv/EpgSyncJobService$2;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/media/tv/TvContract;->buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/utv/tv/EpgSyncJobService$2;->logoUri:Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/utv/bean/ChannelsBean;->getChannelLogo()Ljava/lang/String;

    move-result-object p3

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/utv/tv/EpgSyncJobService$2;->logoUrl:Ljava/net/URL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/utv/tv/EpgSyncJobService$2;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/utv/tv/EpgSyncJobService$2;->logoUri:Landroid/net/Uri;

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/utv/tv/EpgSyncJobService$2;->logoUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :goto_1
    iget-object v0, p0, Lcom/utv/tv/EpgSyncJobService$2;->logoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v0, ""

    return-object v0
.end method
