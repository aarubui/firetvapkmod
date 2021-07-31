.class public Lcom/tvbusa/encore/tv/MainTitleFragment;
.super Landroidx/leanback/app/BrowseFragment;
.source "MainTitleFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/leanback/app/BrowseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 16
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method
