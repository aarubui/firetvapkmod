.class Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;
.super Ljava/lang/Object;
.source "ControlMediaPlayerFromTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueBag"
.end annotation


# instance fields
.field private action:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;

.field private playerId:Ljava/lang/String;

.field private position:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;-><init>()V

    return-void
.end method

.method static synthetic access$100(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->playerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->playerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;)Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;
    .locals 0

    .line 11
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->action:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;

    return-object p0
.end method

.method static synthetic access$202(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;)Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;
    .locals 0

    .line 11
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->action:Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$Action;

    return-object p1
.end method

.method static synthetic access$300(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->position:J

    return-wide v0
.end method

.method static synthetic access$302(Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;J)J
    .locals 0

    .line 11
    iput-wide p1, p0, Luk/co/uktv/dave/messaging/tal/ControlMediaPlayerFromTalMessage$ValueBag;->position:J

    return-wide p1
.end method
