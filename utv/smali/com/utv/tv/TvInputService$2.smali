.class public Lcom/utv/tv/TvInputService$2;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Lcom/arcvideo/MediaPlayer/ArcMediaPlayer$OnInfoListener;


# instance fields
.field final synthetic this$0:Lcom/utv/tv/TvInputService$1;


# direct methods
.method public constructor <init>(Lcom/utv/tv/TvInputService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/utv/tv/TvInputService$2;->this$0:Lcom/utv/tv/TvInputService$1;

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/arcvideo/MediaPlayer/ArcMediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_1

    const/16 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/utv/tv/TvInputService$2;->this$0:Lcom/utv/tv/TvInputService$1;

    invoke-static {p1}, Lcom/utv/tv/TvInputService$1;->access$100(Lcom/utv/tv/TvInputService$1;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/utv/tv/TvInputService$2;->this$0:Lcom/utv/tv/TvInputService$1;

    invoke-static {p1}, Lcom/utv/tv/TvInputService$1;->access$000(Lcom/utv/tv/TvInputService$1;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
