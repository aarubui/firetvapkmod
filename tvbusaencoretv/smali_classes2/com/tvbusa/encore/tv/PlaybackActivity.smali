.class public Lcom/tvbusa/encore/tv/PlaybackActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PlaybackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;

    invoke-direct {v2}, Lcom/tvbusa/encore/tv/PlaybackVideoFragment;-><init>()V

    .line 32
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 35
    :cond_0
    return-void
.end method
