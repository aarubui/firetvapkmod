.class Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;
.super Ljava/lang/Object;
.source "GetLicenseUrlFromTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueBag"
.end annotation


# instance fields
.field private manifestUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;-><init>()V

    return-void
.end method

.method static synthetic access$100(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;->manifestUrl:Ljava/lang/String;

    return-object p1
.end method
