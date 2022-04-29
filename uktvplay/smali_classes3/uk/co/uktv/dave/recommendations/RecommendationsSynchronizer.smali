.class public Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;
.super Landroidx/work/Worker;
.source "RecommendationsSynchronizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendationsSynchronizer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "workerParams"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private fetchAndProcessRecommendations()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    invoke-static {v0}, Luk/co/uktv/dave/network/VolleyRequests;->getInstance(Landroid/content/Context;)Luk/co/uktv/dave/network/VolleyRequests;

    move-result-object v1

    const v2, 0x7f1000c4

    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;)V

    .line 97
    invoke-static {v2}, Luk/co/uktv/dave/network/VolleyRequests;->anInBackgroundListener(Lcom/android/volley/Response$Listener;)Lcom/android/volley/Response$Listener;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v0, v2}, Luk/co/uktv/dave/network/VolleyRequests;->requestForJsonArray(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    return-void
.end method

.method private parseRecommendations(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 107
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    new-instance v3, Luk/co/uktv/dave/recommendations/data/Recommendation;

    const-string v4, "house_num"

    .line 112
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    .line 113
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "synopsis"

    .line 114
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "image_url"

    .line 115
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Luk/co/uktv/dave/recommendations/data/Recommendation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 120
    sget-object v3, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring recommendation at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    sget-object p1, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " recommendations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    const-class v0, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    sget-object p0, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->TAG:Ljava/lang/String;

    const-string v0, "Recommendations support is disabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v1}, Lj$/time/ZonedDateTime;->now(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lj$/time/ZonedDateTime;->withHour(I)Lj$/time/ZonedDateTime;

    move-result-object v2

    sget-object v3, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    .line 46
    invoke-virtual {v2, v3}, Lj$/time/ZonedDateTime;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/ZonedDateTime;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Lj$/time/ZonedDateTime;->isBefore(Lj$/time/chrono/ChronoZonedDateTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1

    .line 49
    invoke-virtual {v2, v3, v4}, Lj$/time/ZonedDateTime;->plusDays(J)Lj$/time/ZonedDateTime;

    move-result-object v2

    .line 52
    :cond_1
    sget-object v3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3}, Lj$/time/ZonedDateTime;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    .line 54
    sget-object v3, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling recommendation synchronizer, delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-static {v1, v2, v5}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v4

    const v5, 0x7f1000c6

    .line 56
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    new-instance v7, Landroidx/work/PeriodicWorkRequest$Builder;

    const-wide/16 v8, 0x18

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v7, v0, v8, v9, v10}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    invoke-virtual {v7, v1, v2, v8}, Landroidx/work/PeriodicWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v7

    check-cast v7, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 60
    invoke-virtual {v7}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v7

    check-cast v7, Landroidx/work/PeriodicWorkRequest;

    .line 55
    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v1, v4

    if-lez v6, :cond_2

    const-string v1, "Executing recommendation synchronizer for one time"

    .line 67
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {v1, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-wide/16 v2, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 71
    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    :cond_2
    return-void
.end method

.method private declared-synchronized synchronize(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    new-instance v1, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;

    invoke-direct {v1, v0}, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v2, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;

    invoke-direct {v2, v0}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v2, p1}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->validate(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 138
    invoke-virtual {v1, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->removeOutdated(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-virtual {v1, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->updateChanged(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 140
    invoke-virtual {v1, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationsRepository;->insertNew(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 143
    invoke-virtual {v2, v0}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->dismiss(Ljava/util/List;)V

    .line 144
    invoke-virtual {v2, v3, p1}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->publish(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 84
    :try_start_0
    invoke-direct {p0}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->fetchAndProcessRecommendations()V

    .line 85
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->TAG:Ljava/lang/String;

    const-string v2, "Could not synchronize recommendations"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$fetchAndProcessRecommendations$0$uk-co-uktv-dave-recommendations-RecommendationsSynchronizer(Lorg/json/JSONArray;)V
    .locals 3

    .line 98
    sget-object v0, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " recommendations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, p1}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->parseRecommendations(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/co/uktv/dave/recommendations/RecommendationsSynchronizer;->synchronize(Ljava/util/List;)V

    return-void
.end method
