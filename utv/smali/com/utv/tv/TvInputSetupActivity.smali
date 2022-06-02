.class public Lcom/utv/tv/TvInputSetupActivity;
.super Landroid/app/Activity;
.source "TvInputSetupActivity.java"

# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/utv/tv/TvInputSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.media.tv.extra.INPUT_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/utv/tv/EpgSyncJobService;

    invoke-direct {p1}, Lcom/utv/tv/EpgSyncJobService;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/utv/tv/EpgSyncJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/utv/tv/EpgSyncJobService;->requestImmediateSync(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    :cond_0
    invoke-virtual {p0}, Lcom/utv/tv/TvInputSetupActivity;->finish()V

    return-void
.end method
