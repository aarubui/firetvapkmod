.class Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;
.super Ljava/lang/Object;
.source "BCOVPlayerActivity.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->setupIMA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    .line 343
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$7;->this$0:Lcom/tvbusa/encore/tv/BCOVPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 2
    .param p1, "adErrorEvent"    # Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;

    .line 346
    const-string v0, "TestIMA"

    const-string v1, "Ads Loader AdError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method
