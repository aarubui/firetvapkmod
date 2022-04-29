.class Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage$ValueBag;
.super Ljava/lang/Object;
.source "DisposeMediaPlayerFromTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueBag"
.end annotation


# instance fields
.field private playerId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage$ValueBag;-><init>()V

    return-void
.end method

.method static synthetic access$100(Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage$ValueBag;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage$ValueBag;->playerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/DisposeMediaPlayerFromTalMessage$ValueBag;->playerId:Ljava/lang/String;

    return-object p1
.end method
