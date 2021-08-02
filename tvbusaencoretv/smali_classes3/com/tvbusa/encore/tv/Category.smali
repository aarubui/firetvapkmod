.class public Lcom/tvbusa/encore/tv/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private image:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "image",
            "key"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/tvbusa/encore/tv/Category;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p3}, Lcom/tvbusa/encore/tv/Category;->setKey(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/tvbusa/encore/tv/Category;->setImage(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Category;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Category;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/tvbusa/encore/tv/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Category;->image:Ljava/lang/String;

    return-void
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

    .line 20
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Category;->key:Ljava/lang/String;

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

    .line 14
    iput-object p1, p0, Lcom/tvbusa/encore/tv/Category;->name:Ljava/lang/String;

    return-void
.end method
