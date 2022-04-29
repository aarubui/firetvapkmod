.class public Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;
.super Ljava/lang/Object;
.source "RecommendationImagesRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendationImagesRepository"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->context:Landroid/content/Context;

    return-void
.end method

.method private prepareImageFileName(Luk/co/uktv/dave/recommendations/data/Recommendation;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendation"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getHouseNumber()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1000c5

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private storeImage(Luk/co/uktv/dave/recommendations/data/Recommendation;Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recommendation",
            "bitmap"
        }
    .end annotation

    const-string v0, ", url="

    .line 75
    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-direct {p0, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->prepareImageFileName(Luk/co/uktv/dave/recommendations/data/Recommendation;)Ljava/lang/String;

    move-result-object p1

    .line 78
    :try_start_0
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    sget-object p2, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image stored successfully, file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 81
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz v2, :cond_0

    .line 78
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    .line 82
    sget-object v2, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not store image, file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method deleteImage(Luk/co/uktv/dave/recommendations/data/Recommendation;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendation"
        }
    .end annotation

    const-string v0, ", url="

    .line 56
    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {p0, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->prepareImageFileName(Luk/co/uktv/dave/recommendations/data/Recommendation;)Ljava/lang/String;

    move-result-object p1

    .line 60
    :try_start_0
    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image deleted successfully, file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_0
    sget-object v2, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete image, file= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 66
    sget-object v3, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete image, file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$loadImage$0$uk-co-uktv-dave-recommendations-data-RecommendationImagesRepository(Luk/co/uktv/dave/recommendations/data/Recommendation;Lj$/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p3}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->storeImage(Luk/co/uktv/dave/recommendations/data/Recommendation;Landroid/graphics/Bitmap;)V

    .line 48
    invoke-virtual {p1, p3}, Luk/co/uktv/dave/recommendations/data/Recommendation;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    invoke-interface {p2, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public loadImage(Luk/co/uktv/dave/recommendations/data/Recommendation;Lj$/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recommendation",
            "onImageLoaded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            "Lj$/util/function/Consumer<",
            "Luk/co/uktv/dave/recommendations/data/Recommendation;",
            ">;)V"
        }
    .end annotation

    const-string v0, ", url="

    .line 27
    invoke-virtual {p1}, Luk/co/uktv/dave/recommendations/data/Recommendation;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-direct {p0, p1}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->prepareImageFileName(Luk/co/uktv/dave/recommendations/data/Recommendation;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 31
    :try_start_0
    iget-object v4, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 33
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    .line 31
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v4

    .line 36
    sget-object v5, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load image, file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    nop

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {p1, v3}, Luk/co/uktv/dave/recommendations/data/Recommendation;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    invoke-interface {p2, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 43
    :cond_2
    sget-object v3, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading image, file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Luk/co/uktv/dave/network/VolleyRequests;->getInstance(Landroid/content/Context;)Luk/co/uktv/dave/network/VolleyRequests;

    move-result-object v0

    new-instance v2, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/recommendations/data/RecommendationImagesRepository;Luk/co/uktv/dave/recommendations/data/Recommendation;Lj$/util/function/Consumer;)V

    .line 46
    invoke-static {v2}, Luk/co/uktv/dave/network/VolleyRequests;->anInBackgroundListener(Lcom/android/volley/Response$Listener;)Lcom/android/volley/Response$Listener;

    move-result-object p1

    .line 44
    invoke-virtual {v0, v1, p1}, Luk/co/uktv/dave/network/VolleyRequests;->requestForImage(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    :goto_2
    return-void
.end method
