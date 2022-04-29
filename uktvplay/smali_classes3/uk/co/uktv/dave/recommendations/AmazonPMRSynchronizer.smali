.class public Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;
.super Ljava/lang/Object;
.source "AmazonPMRSynchronizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmazonPMRSynchronizer"


# instance fields
.field private final context:Landroid/content/Context;

.field private final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private final recommendationImagesRepository:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;


# direct methods
.method public static synthetic $r8$lambda$Gy5m0Rw8LF_qoGc7qR6TMd4YtmY(Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 0

    invoke-direct {p0, p1}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->notify(Luk/co/uktv/dave/recommendations/data/Recommendation;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 35
    new-instance v0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    invoke-direct {v0, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->recommendationImagesRepository:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    return-void
.end method

.method private declared-synchronized createNotificationChannel()V
    .locals 3

    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v0, Landroidx/core/app/NotificationChannelCompat$Builder;

    iget-object v1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    const v2, 0x7f1000c3

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    const v2, 0x7f1000c2

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    const v2, 0x7f1000c1

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroidx/core/app/NotificationChannelCompat$Builder;->build()Landroidx/core/app/NotificationChannelCompat;

    move-result-object v0

    .line 76
    iget-object v1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroidx/core/app/NotificationChannelCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$validate$0(Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 3

    .line 44
    sget-object v0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring recommendation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized notify(Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendation"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.amazon.extra.DISPLAY_NAME"

    .line 81
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    const v3, 0x7f10001e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    const v3, 0x7f1000c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "recommendation"

    .line 84
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0800bc

    .line 87
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Luk/co/uktv/dave/launcher/DeepLinkCapabilitiesUtils;->buildPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 93
    iget-object v1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getPmrId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 94
    sget-object v0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Published notification for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized dismiss(Ljava/util/List;)V
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

    .line 51
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/uktv/dave/recommendations/data/Recommendation;

    .line 52
    iget-object v1, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getPmrId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 53
    sget-object v1, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dismissed notification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public publish(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedRecommendations",
            "newRecommendations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    invoke-static {p1, p2}, Lj$/util/stream/Stream$-CC;->concat(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 60
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 62
    invoke-direct {p0}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->createNotificationChannel()V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/co/uktv/dave/recommendations/data/Recommendation;

    .line 65
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->recommendationImagesRepository:Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;

    new-instance v1, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;)V

    invoke-virtual {v0, p2, v1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->loadImage(Luk/co/uktv/dave/recommendations/data/Recommendation;Lj$/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validate(Ljava/util/List;)Ljava/util/List;
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
            ">;)",
            "Ljava/util/List<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 41
    sget-object v1, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recommendations count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") exceeds notifications limit ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), trimming..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    int-to-long v2, v0

    .line 43
    invoke-interface {v1, v2, v3}, Lj$/util/stream/Stream;->skip(J)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer$$ExternalSyntheticLambda1;->INSTANCE:Luk/co/uktv/dave/recommendations/AmazonPMRSynchronizer$$ExternalSyntheticLambda1;

    .line 44
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V

    const/4 v1, 0x0

    .line 45
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method
