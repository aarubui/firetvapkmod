.class public Lcom/tvbusa/encore/tv/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# instance fields
.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "key"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/Setting;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/tvbusa/encore/tv/Setting;->setKey(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Setting;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Setting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Setting;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Setting;->name:Ljava/lang/String;

    return-void
.end method
