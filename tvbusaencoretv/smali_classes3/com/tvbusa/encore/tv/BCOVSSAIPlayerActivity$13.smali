.class Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$13;
.super Ljava/lang/Object;
.source "BCOVSSAIPlayerActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;->recordMemberHistory(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity$13;->this$0:Lcom/tvbusa/encore/tv/BCOVSSAIPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "e"
        }
    .end annotation

    .line 505
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    return-void
.end method
