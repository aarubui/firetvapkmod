.class Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;
.super Ljava/lang/Object;
.source "InitializeMediaPlayerFromTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueBag"
.end annotation


# instance fields
.field private contentUrl:Ljava/lang/String;

.field private laUrl:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private playerId:Ljava/lang/String;

.field private position:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;-><init>()V

    return-void
.end method

.method static synthetic access$100(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->playerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->playerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->mimeType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->contentUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->contentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->laUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->laUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;)F
    .locals 0

    .line 9
    iget p0, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->position:F

    return p0
.end method

.method static synthetic access$502(Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;F)F
    .locals 0

    .line 9
    iput p1, p0, Luk/co/uktv/dave/messaging/tal/InitializeMediaPlayerFromTalMessage$ValueBag;->position:F

    return p1
.end method
