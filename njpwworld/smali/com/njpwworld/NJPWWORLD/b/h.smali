.class public Lcom/njpwworld/NJPWWORLD/b/h;
.super Lcom/njpwworld/NJPWWORLD/b/a;


# instance fields
.field public f:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/njpwworld/NJPWWORLD/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/b/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/b/h;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/njpwworld/NJPWWORLD/b/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/b/h;->f:Ljava/util/List;

    return-object v0
.end method