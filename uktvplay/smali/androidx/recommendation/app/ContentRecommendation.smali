.class public final Landroidx/recommendation/app/ContentRecommendation;
.super Ljava/lang/Object;
.source "ContentRecommendation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recommendation/app/ContentRecommendation$Builder;,
        Landroidx/recommendation/app/ContentRecommendation$IntentData;,
        Landroidx/recommendation/app/ContentRecommendation$IntentType;,
        Landroidx/recommendation/app/ContentRecommendation$ContentMaturity;,
        Landroidx/recommendation/app/ContentRecommendation$ContentStatus;,
        Landroidx/recommendation/app/ContentRecommendation$ContentPricing;,
        Landroidx/recommendation/app/ContentRecommendation$ContentType;
    }
.end annotation


# static fields
.field public static final CONTENT_MATURITY_ALL:Ljava/lang/String; = "android.contentMaturity.all"

.field public static final CONTENT_MATURITY_HIGH:Ljava/lang/String; = "android.contentMaturity.high"

.field public static final CONTENT_MATURITY_LOW:Ljava/lang/String; = "android.contentMaturity.low"

.field public static final CONTENT_MATURITY_MEDIUM:Ljava/lang/String; = "android.contentMaturity.medium"

.field public static final CONTENT_PRICING_FREE:Ljava/lang/String; = "android.contentPrice.free"

.field public static final CONTENT_PRICING_PREORDER:Ljava/lang/String; = "android.contentPrice.preorder"

.field public static final CONTENT_PRICING_PURCHASE:Ljava/lang/String; = "android.contentPrice.purchase"

.field public static final CONTENT_PRICING_RENTAL:Ljava/lang/String; = "android.contentPrice.rental"

.field public static final CONTENT_PRICING_SUBSCRIPTION:Ljava/lang/String; = "android.contentPrice.subscription"

.field public static final CONTENT_STATUS_AVAILABLE:I = 0x2

.field public static final CONTENT_STATUS_PENDING:I = 0x1

.field public static final CONTENT_STATUS_READY:I = 0x0

.field public static final CONTENT_STATUS_UNAVAILABLE:I = 0x3

.field public static final CONTENT_TYPE_APP:Ljava/lang/String; = "android.contentType.app"

.field public static final CONTENT_TYPE_BOOK:Ljava/lang/String; = "android.contentType.book"

.field public static final CONTENT_TYPE_COMIC:Ljava/lang/String; = "android.contentType.comic"

.field public static final CONTENT_TYPE_GAME:Ljava/lang/String; = "android.contentType.game"

.field public static final CONTENT_TYPE_MAGAZINE:Ljava/lang/String; = "android.contentType.magazine"

.field public static final CONTENT_TYPE_MOVIE:Ljava/lang/String; = "android.contentType.movie"

.field public static final CONTENT_TYPE_MUSIC:Ljava/lang/String; = "android.contentType.music"

.field public static final CONTENT_TYPE_NEWS:Ljava/lang/String; = "android.contentType.news"

.field public static final CONTENT_TYPE_PODCAST:Ljava/lang/String; = "android.contentType.podcast"

.field public static final CONTENT_TYPE_RADIO:Ljava/lang/String; = "android.contentType.radio"

.field public static final CONTENT_TYPE_SERIAL:Ljava/lang/String; = "android.contentType.serial"

.field public static final CONTENT_TYPE_SPORTS:Ljava/lang/String; = "android.contentType.sports"

.field public static final CONTENT_TYPE_TRAILER:Ljava/lang/String; = "android.contentType.trailer"

.field public static final CONTENT_TYPE_VIDEO:Ljava/lang/String; = "android.contentType.video"

.field public static final CONTENT_TYPE_WEBSITE:Ljava/lang/String; = "android.contentType.website"

.field public static final INTENT_TYPE_ACTIVITY:I = 0x1

.field public static final INTENT_TYPE_BROADCAST:I = 0x2

.field public static final INTENT_TYPE_SERVICE:I = 0x3


# instance fields
.field private mAutoDismiss:Z

.field private final mBackgroundImageUri:Ljava/lang/String;

.field private final mBadgeIconId:I

.field private final mColor:I

.field private final mContentGenres:[Ljava/lang/String;

.field private final mContentImage:Landroid/graphics/Bitmap;

.field private final mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

.field private final mContentTypes:[Ljava/lang/String;

.field private final mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

.field private mGroup:Ljava/lang/String;

.field private final mIdTag:Ljava/lang/String;

.field private final mMaturityRating:Ljava/lang/String;

.field private final mPriceType:Ljava/lang/String;

.field private final mPriceValue:Ljava/lang/String;

.field private mProgressAmount:I

.field private mProgressMax:I

.field private final mRunningTime:J

.field private mSortKey:Ljava/lang/String;

.field private final mSourceName:Ljava/lang/String;

.field private mStatus:I

.field private final mText:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/recommendation/app/ContentRecommendation$Builder;)V
    .locals 2

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderIdTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mIdTag:Ljava/lang/String;

    .line 340
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderTitle:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mTitle:Ljava/lang/String;

    .line 341
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderText:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mText:Ljava/lang/String;

    .line 342
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderSourceName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mSourceName:Ljava/lang/String;

    .line 343
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderContentImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentImage:Landroid/graphics/Bitmap;

    .line 344
    iget v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderBadgeIconId:I

    iput v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mBadgeIconId:I

    .line 345
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderBackgroundImageUri:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mBackgroundImageUri:Ljava/lang/String;

    .line 346
    iget v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderColor:I

    iput v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mColor:I

    .line 347
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 348
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 349
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderContentTypes:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentTypes:[Ljava/lang/String;

    .line 350
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderContentGenres:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentGenres:[Ljava/lang/String;

    .line 351
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderPriceType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mPriceType:Ljava/lang/String;

    .line 352
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderPriceValue:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mPriceValue:Ljava/lang/String;

    .line 353
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderMaturityRating:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mMaturityRating:Ljava/lang/String;

    .line 354
    iget-wide v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderRunningTime:J

    iput-wide v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mRunningTime:J

    .line 356
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderGroup:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mGroup:Ljava/lang/String;

    .line 357
    iget-object v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderSortKey:Ljava/lang/String;

    iput-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mSortKey:Ljava/lang/String;

    .line 358
    iget v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderProgressAmount:I

    iput v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressAmount:I

    .line 359
    iget v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderProgressMax:I

    iput v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressMax:I

    .line 360
    iget-boolean v0, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderAutoDismiss:Z

    iput-boolean v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mAutoDismiss:Z

    .line 361
    iget p1, p1, Landroidx/recommendation/app/ContentRecommendation$Builder;->mBuilderStatus:I

    iput p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mStatus:I

    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 682
    instance-of v0, p1, Landroidx/recommendation/app/ContentRecommendation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mIdTag:Ljava/lang/String;

    .line 683
    check-cast p1, Landroidx/recommendation/app/ContentRecommendation;

    invoke-virtual {p1}, Landroidx/recommendation/app/ContentRecommendation;->getIdTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBackgroundImageUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mBackgroundImageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeImageResourceId()I
    .locals 1

    iget v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mBadgeIconId:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mColor:I

    return v0
.end method

.method public getContentImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentIntent()Landroidx/recommendation/app/ContentRecommendation$IntentData;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    return-object v0
.end method

.method public getContentTypes()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentTypes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 584
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getDismissIntent()Landroidx/recommendation/app/ContentRecommendation$IntentData;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentGenres:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 611
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mIdTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMaturityRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mMaturityRating:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationObject(Landroid/content/Context;)Landroid/app/Notification;
    .locals 8

    .line 1082
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1083
    new-instance v1, Landroidx/recommendation/app/RecommendationExtender;

    invoke-direct {v1}, Landroidx/recommendation/app/RecommendationExtender;-><init>()V

    const-string v2, "recommendation"

    .line 1087
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mTitle:Ljava/lang/String;

    .line 1088
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mText:Ljava/lang/String;

    .line 1089
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mSourceName:Ljava/lang/String;

    .line 1090
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentImage:Landroid/graphics/Bitmap;

    .line 1091
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mBadgeIconId:I

    .line 1092
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mBackgroundImageUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1094
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.backgroundImageUri"

    iget-object v4, p0, Landroidx/recommendation/app/ContentRecommendation;->mBackgroundImageUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mColor:I

    .line 1097
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mGroup:Ljava/lang/String;

    .line 1098
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mSortKey:Ljava/lang/String;

    .line 1099
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressMax:I

    iget v3, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressAmount:I

    const/4 v4, 0x0

    .line 1100
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-boolean v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mAutoDismiss:Z

    .line 1101
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/high16 v5, 0xa000000

    if-eqz v2, :cond_3

    .line 1105
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mType:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1106
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mRequestCode:I

    iget-object v6, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v6, v6, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v7, v7, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mOptions:Landroid/os/Bundle;

    invoke-static {p1, v2, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1109
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1110
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mRequestCode:I

    iget-object v6, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v6, v6, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mIntent:Landroid/content/Intent;

    invoke-static {p1, v2, v6, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1113
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mRequestCode:I

    iget-object v6, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v6, v6, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mIntent:Landroid/content/Intent;

    invoke-static {p1, v2, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1117
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_3
    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    if-eqz v2, :cond_6

    .line 1122
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mType:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1123
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mRequestCode:I

    iget-object v3, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v3, v3, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v4, v4, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mOptions:Landroid/os/Bundle;

    invoke-static {p1, v2, v3, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1126
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mType:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1127
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mRequestCode:I

    iget-object v3, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v3, v3, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mIntent:Landroid/content/Intent;

    invoke-static {p1, v2, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    .line 1130
    iget v2, v2, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mRequestCode:I

    iget-object v3, p0, Landroidx/recommendation/app/ContentRecommendation;->mDismissIntentData:Landroidx/recommendation/app/ContentRecommendation$IntentData;

    iget-object v3, v3, Landroidx/recommendation/app/ContentRecommendation$IntentData;->mIntent:Landroid/content/Intent;

    invoke-static {p1, v2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1134
    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_6
    iget-object p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentTypes:[Ljava/lang/String;

    .line 1137
    invoke-virtual {v1, p1}, Landroidx/recommendation/app/RecommendationExtender;->setContentTypes([Ljava/lang/String;)Landroidx/recommendation/app/RecommendationExtender;

    iget-object p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentGenres:[Ljava/lang/String;

    .line 1138
    invoke-virtual {v1, p1}, Landroidx/recommendation/app/RecommendationExtender;->setGenres([Ljava/lang/String;)Landroidx/recommendation/app/RecommendationExtender;

    iget-object p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mPriceType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mPriceValue:Ljava/lang/String;

    .line 1139
    invoke-virtual {v1, p1, v2}, Landroidx/recommendation/app/RecommendationExtender;->setPricingInformation(Ljava/lang/String;Ljava/lang/String;)Landroidx/recommendation/app/RecommendationExtender;

    iget p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mStatus:I

    .line 1140
    invoke-virtual {v1, p1}, Landroidx/recommendation/app/RecommendationExtender;->setStatus(I)Landroidx/recommendation/app/RecommendationExtender;

    iget-object p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mMaturityRating:Ljava/lang/String;

    .line 1141
    invoke-virtual {v1, p1}, Landroidx/recommendation/app/RecommendationExtender;->setMaturityRating(Ljava/lang/String;)Landroidx/recommendation/app/RecommendationExtender;

    iget-wide v2, p0, Landroidx/recommendation/app/ContentRecommendation;->mRunningTime:J

    .line 1142
    invoke-virtual {v1, v2, v3}, Landroidx/recommendation/app/RecommendationExtender;->setRunningTime(J)Landroidx/recommendation/app/RecommendationExtender;

    .line 1144
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 1145
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getPricingType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mPriceType:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mPriceValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mContentTypes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 597
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 598
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressMax()I
    .locals 1

    iget v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressMax:I

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    iget v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressAmount:I

    return v0
.end method

.method public getRunningTime()J
    .locals 2

    iget-wide v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mRunningTime:J

    return-wide v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mStatus:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasProgressInfo()Z
    .locals 1

    iget v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressMax:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mIdTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method public isAutoDismiss()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recommendation/app/ContentRecommendation;->mAutoDismiss:Z

    return v0
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mAutoDismiss:Z

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mGroup:Ljava/lang/String;

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iput p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressMax:I

    iput p2, p0, Landroidx/recommendation/app/ContentRecommendation;->mProgressAmount:I

    return-void

    .line 494
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mSortKey:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Landroidx/recommendation/app/ContentRecommendation;->mStatus:I

    return-void
.end method
