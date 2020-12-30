.class public Lcom/njpwworld/NJPWWORLD/a/f$a;
.super Lcom/njpwworld/NJPWWORLD/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field B:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relative"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/njpwworld/NJPWWORLD/a/e;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/njpwworld/NJPWWORLD/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/f$a;->B:Ljava/util/List;

    return-object v0
.end method
