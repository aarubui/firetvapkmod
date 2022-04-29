.class public final Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;
.super Luk/co/uktv/dave/messaging/tal/TalMessage$From;
.source "GetLicenseUrlFromTalMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "getLicenceUrl"


# instance fields
.field private final value:Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manifestUrl"
        }
    .end annotation

    const-string v0, "getLicenceUrl"

    .line 14
    invoke-direct {p0, v0}, Luk/co/uktv/dave/messaging/tal/TalMessage$From;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;-><init>(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$1;)V

    iput-object v0, p0, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;

    .line 15
    invoke-static {v0, p1}, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;->access$102(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getManifestUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage;->value:Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;

    invoke-static {v0}, Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;->access$100(Luk/co/uktv/dave/messaging/tal/GetLicenseUrlFromTalMessage$ValueBag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
