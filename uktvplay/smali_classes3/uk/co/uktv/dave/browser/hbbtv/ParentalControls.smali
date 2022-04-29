.class Luk/co/uktv/dave/browser/hbbtv/ParentalControls;
.super Ljava/lang/Object;
.source "ParentalControls.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParentalControls"


# instance fields
.field private final tvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tv_input"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputManager;

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/ParentalControls;->tvInputManager:Landroid/media/tv/TvInputManager;

    return-void
.end method


# virtual methods
.method public isContentBlocked([Landroid/media/tv/TvContentRating;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvContentRatings"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/ParentalControls;->tvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager;->isParentalControlsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 25
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 26
    iget-object v4, p0, Luk/co/uktv/dave/browser/hbbtv/ParentalControls;->tvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v4, v3}, Landroid/media/tv/TvInputManager;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    sget-object p1, Luk/co/uktv/dave/browser/hbbtv/ParentalControls;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v3}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Content blocked due to current parental control policy, rating=%s"

    .line 27
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
