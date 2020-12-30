.class public Lcom/njpwworld/NJPWWORLD/a/g;
.super Lcom/njpwworld/NJPWWORLD/a/a;


# instance fields
.field public f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playlist_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/g;->f:Ljava/lang/String;

    return-object v0
.end method
