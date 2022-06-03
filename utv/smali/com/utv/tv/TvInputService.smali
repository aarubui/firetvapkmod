.class public Lcom/utv/tv/TvInputService;
.super Landroid/media/tv/TvInputService;
.source "TvInputService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvInputService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
    .locals 1

    new-instance v0, Lcom/utv/tv/TvInputService$1;

    invoke-direct {v0, p0}, Lcom/utv/tv/TvInputService$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
