.class public final Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$To;
.source "LicenseGotToTalMessage.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "licenceGot"


# instance fields
.field private final laUrl:Ljava/lang/String;

.field private final manifestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manifestUrl",
            "laUrl"
        }
    .end annotation

    const-string v0, "licenceGot"

    .line 11
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$To;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;->manifestUrl:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;->laUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLaUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;->laUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/LicenseGotToTalMessage;->manifestUrl:Ljava/lang/String;

    return-object v0
.end method
