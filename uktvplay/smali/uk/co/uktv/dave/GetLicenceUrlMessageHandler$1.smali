.class Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;
.super Ljava/lang/Object;
.source "GetLicenceUrlMessageHandler.java"

# interfaces
.implements Luk/co/uktv/dave/dd/LicenceAcquisitionURLProvider$OnURLAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/GetLicenceUrlMessageHandler;->handleMessage(Luk/co/uktv/dave/core/AppHostActivity;Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/GetLicenceUrlMessageHandler;

.field final synthetic val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

.field final synthetic val$manifestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/GetLicenceUrlMessageHandler;Ljava/lang/String;Luk/co/uktv/dave/core/AppHostActivity;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/uktv/dave/GetLicenceUrlMessageHandler;

    .prologue
    .line 35
    iput-object p1, p0, Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;->this$0:Luk/co/uktv/dave/GetLicenceUrlMessageHandler;

    iput-object p2, p0, Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;->val$manifestUrl:Ljava/lang/String;

    iput-object p3, p0, Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;->val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onURLAvailable(Ljava/lang/String;)V
    .locals 4
    .param p1, "laUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v1, "GetLicenceUrlMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onURLAvailable laUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Luk/co/uktv/dave/core/MessageBuilder;

    const-string v2, "licenceGot"

    invoke-direct {v1, v2}, Luk/co/uktv/dave/core/MessageBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "manifestUrl"

    iget-object v3, p0, Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;->val$manifestUrl:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2, v3}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    move-result-object v1

    const-string v2, "laUrl"

    .line 40
    invoke-virtual {v1, v2, p1}, Luk/co/uktv/dave/core/MessageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Luk/co/uktv/dave/core/MessageBuilder;

    move-result-object v0

    .line 41
    .local v0, "messageBuilder":Luk/co/uktv/dave/core/MessageBuilder;
    iget-object v1, p0, Luk/co/uktv/dave/GetLicenceUrlMessageHandler$1;->val$appHost:Luk/co/uktv/dave/core/AppHostActivity;

    invoke-virtual {v0, v1}, Luk/co/uktv/dave/core/MessageBuilder;->send(Luk/co/uktv/dave/core/AppHostActivity;)V

    .line 42
    return-void
.end method
