.class public final Lcom/tvbusa/encore/tv/MovieList;
.super Ljava/lang/Object;
.source "MovieList.java"


# static fields
.field public static final MOVIE_CATEGORY:[Ljava/lang/String;

.field private static count:J

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Movie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    const-string v0, "Category Zero"

    const-string v1, "Category One"

    const-string v2, "Category Two"

    const-string v3, "Category Three"

    const-string v4, "Category Four"

    const-string v5, "Category Five"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tvbusa/encore/tv/MovieList;->MOVIE_CATEGORY:[Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tvbusa/encore/tv/MovieList;->count:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMovieInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tvbusa/encore/tv/Movie;
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "studio"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .param p4, "cardImageUrl"    # Ljava/lang/String;
    .param p5, "backgroundImageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "description",
            "studio",
            "videoUrl",
            "cardImageUrl",
            "backgroundImageUrl"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/tvbusa/encore/tv/Movie;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/Movie;-><init>()V

    .line 103
    .local v0, "movie":Lcom/tvbusa/encore/tv/Movie;
    sget-wide v1, Lcom/tvbusa/encore/tv/MovieList;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/tvbusa/encore/tv/MovieList;->count:J

    invoke-virtual {v0, v1, v2}, Lcom/tvbusa/encore/tv/Movie;->setId(J)V

    .line 104
    invoke-virtual {v0, p0}, Lcom/tvbusa/encore/tv/Movie;->setTitle(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/tvbusa/encore/tv/Movie;->setDescription(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p2}, Lcom/tvbusa/encore/tv/Movie;->setStudio(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p4}, Lcom/tvbusa/encore/tv/Movie;->setCardImageUrl(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p5}, Lcom/tvbusa/encore/tv/Movie;->setBackgroundImageUrl(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p3}, Lcom/tvbusa/encore/tv/Movie;->setVideoUrl(Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method public static getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Movie;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/tvbusa/encore/tv/MovieList;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/tvbusa/encore/tv/MovieList;->setupMovies()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tvbusa/encore/tv/MovieList;->list:Ljava/util/List;

    .line 37
    :cond_0
    sget-object v0, Lcom/tvbusa/encore/tv/MovieList;->list:Ljava/util/List;

    return-object v0
.end method

.method public static setupMovies()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Movie;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tvbusa/encore/tv/MovieList;->list:Ljava/util/List;

    .line 42
    const-string v0, "Zeitgeist 2010_ Year in Review"

    const-string v1, "Google Demo Slam_ 20ft Search"

    const-string v2, "Introducing Gmail Blue"

    const-string v3, "Introducing Google Fiber to the Pole"

    const-string v4, "Introducing Google Nose"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "title":[Ljava/lang/String;
    const-string v7, "Fusce id nisi turpis. Praesent viverra bibendum semper. Donec tristique, orci sed semper lacinia, quam erat rhoncus massa, non congue tellus est quis tellus. Sed mollis orci venenatis quam scelerisque accumsan. Curabitur a massa sit amet mi accumsan mollis sed et magna. Vivamus sed aliquam risus. Nulla eget dolor in elit facilisis mattis. Ut aliquet luctus lacus. Phasellus nec commodo erat. Praesent tempus id lectus ac scelerisque. Maecenas pretium cursus lectus id volutpat."

    .line 56
    .local v7, "description":Ljava/lang/String;
    const-string v1, "Studio Zero"

    const-string v2, "Studio One"

    const-string v3, "Studio Two"

    const-string v4, "Studio Three"

    const-string v5, "Studio Four"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 59
    .local v8, "studio":[Ljava/lang/String;
    const-string v1, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/Zeitgeist/Zeitgeist%202010_%20Year%20in%20Review.mp4"

    const-string v2, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/Demo%20Slam/Google%20Demo%20Slam_%2020ft%20Search.mp4"

    const-string v3, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Gmail%20Blue.mp4"

    const-string v4, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Google%20Fiber%20to%20the%20Pole.mp4"

    const-string v5, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Google%20Nose.mp4"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 66
    .local v9, "videoUrl":[Ljava/lang/String;
    const-string v1, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/Zeitgeist/Zeitgeist%202010_%20Year%20in%20Review/bg.jpg"

    const-string v2, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/Demo%20Slam/Google%20Demo%20Slam_%2020ft%20Search/bg.jpg"

    const-string v3, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Gmail%20Blue/bg.jpg"

    const-string v4, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Google%20Fiber%20to%20the%20Pole/bg.jpg"

    const-string v5, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Google%20Nose/bg.jpg"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 73
    .local v10, "bgImageUrl":[Ljava/lang/String;
    const-string v1, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/Zeitgeist/Zeitgeist%202010_%20Year%20in%20Review/card.jpg"

    const-string v2, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/Demo%20Slam/Google%20Demo%20Slam_%2020ft%20Search/card.jpg"

    const-string v3, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Gmail%20Blue/card.jpg"

    const-string v4, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Google%20Fiber%20to%20the%20Pole/card.jpg"

    const-string v5, "http://commondatastorage.googleapis.com/android-tv/Sample%20videos/April%20Fool\'s%202013/Introducing%20Google%20Nose/card.jpg"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 81
    .local v11, "cardImageUrl":[Ljava/lang/String;
    const/4 v1, 0x0

    move v12, v1

    .local v12, "index":I
    :goto_0
    array-length v1, v0

    if-ge v12, v1, :cond_0

    .line 82
    sget-object v13, Lcom/tvbusa/encore/tv/MovieList;->list:Ljava/util/List;

    aget-object v1, v0, v12

    aget-object v3, v8, v12

    aget-object v4, v9, v12

    aget-object v5, v11, v12

    aget-object v6, v10, v12

    .line 83
    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/tvbusa/encore/tv/MovieList;->buildMovieInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tvbusa/encore/tv/Movie;

    move-result-object v1

    .line 82
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 92
    .end local v12    # "index":I
    :cond_0
    sget-object v1, Lcom/tvbusa/encore/tv/MovieList;->list:Ljava/util/List;

    return-object v1
.end method
