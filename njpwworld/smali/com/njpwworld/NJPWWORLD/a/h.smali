.class public Lcom/njpwworld/NJPWWORLD/a/h;
.super Lcom/njpwworld/NJPWWORLD/a/a;


# instance fields
.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/njpwworld/NJPWWORLD/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/h;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/a/h;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/njpwworld/NJPWWORLD/a/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/a/h;->h:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/a/h;->g:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/njpwworld/NJPWWORLD/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/h;->h:Ljava/util/List;

    return-object v0
.end method
