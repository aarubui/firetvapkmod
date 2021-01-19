.class public Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;
.super Ljava/lang/Object;
.source "LicenceAcquisitionURLProvider.java"

# interfaces
.implements Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LicenceAcquisitionURLProvider"


# instance fields
.field private mOnURLAvailableListener:Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;


# direct methods
.method public constructor <init>(Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;->setOnURLAvailableListener(Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getLicenceAcquisitionURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "manifestUrl"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v1, "LicenceAcquisitionURLProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLicenceAcquisitionURL manifestUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Luk/co/uktv/dave/dd/util/GetManifestDocument;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/dd/util/GetManifestDocument;-><init>(Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;)V

    .line 25
    .local v0, "getManifest":Luk/co/uktv/dave/dd/util/GetManifestDocument;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/dd/util/GetManifestDocument;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method

.method public onDocumentLoaded(Ljava/lang/String;)V
    .locals 5
    .param p1, "documentText"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Luk/co/uktv/dave/dd/util/Base64FragmentProvider;

    invoke-direct {v1}, Luk/co/uktv/dave/dd/util/Base64FragmentProvider;-><init>()V

    .line 30
    .local v1, "fragmentProvider":Luk/co/uktv/dave/dd/util/Base64FragmentProvider;
    invoke-virtual {v1, p1}, Luk/co/uktv/dave/dd/util/Base64FragmentProvider;->getFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "fragment":Ljava/lang/String;
    new-instance v3, Luk/co/uktv/dave/dd/util/URLExtractor;

    invoke-direct {v3}, Luk/co/uktv/dave/dd/util/URLExtractor;-><init>()V

    .line 32
    .local v3, "urlExtractor":Luk/co/uktv/dave/dd/util/URLExtractor;
    invoke-virtual {v3, v0}, Luk/co/uktv/dave/dd/util/URLExtractor;->getURLFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;->mOnURLAvailableListener:Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;

    if-eqz v4, :cond_0

    .line 34
    iget-object v4, p0, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;->mOnURLAvailableListener:Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;

    invoke-interface {v4, v2}, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;->onURLAvailable(Ljava/lang/String;)V

    .line 35
    const/4 v4, 0x0

    iput-object v4, p0, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;->mOnURLAvailableListener:Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;

    .line 37
    :cond_0
    return-void
.end method

.method public setOnURLAvailableListener(Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;

    .prologue
    .line 19
    iput-object p1, p0, Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider;->mOnURLAvailableListener:Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;

    .line 20
    return-void
.end method
