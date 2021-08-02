.class public Lcom/tvbusa/encore/tv/DetailsActivity;
.super Landroid/app/Activity;
.source "DetailsActivity.java"


# static fields
.field public static final MOVIE:Ljava/lang/String; = "Movie"

.field public static final SHARED_ELEMENT_NAME:Ljava/lang/String; = "hero"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/DetailsActivity;->setContentView(I)V

    .line 34
    return-void
.end method
