.class public final synthetic Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lj$/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;->f$0:Ljava/lang/String;

    iput-object p2, p0, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;->f$1:Ljava/lang/String;

    iput-object p3, p0, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;->f$0:Ljava/lang/String;

    iget-object v1, p0, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;->f$1:Ljava/lang/String;

    iget-object v2, p0, Luk/co/uktv/dave/media/-$$Lambda$MediaPlayerInfo$YIZkTWPNiRTj8renT86nXLRI700;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Luk/co/uktv/dave/media/MediaPlayerInfo;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
