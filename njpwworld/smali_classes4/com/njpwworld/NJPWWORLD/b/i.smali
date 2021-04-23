.class public Lcom/njpwworld/NJPWWORLD/b/i;
.super Lcom/njpwworld/NJPWWORLD/b/a;


# instance fields
.field public f:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field public g:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "registered"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/b/i;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/njpwworld/NJPWWORLD/b/i;->g:Z

    return v0
.end method
