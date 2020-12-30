.class public Lcom/njpwworld/NJPWWORLD/a/f;
.super Lcom/njpwworld/NJPWWORLD/a/a;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/a/f$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/njpwworld/NJPWWORLD/a/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field f:Lcom/njpwworld/NJPWWORLD/a/f$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/a/f$1;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/a/f$1;-><init>()V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/a/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/f;->f:Lcom/njpwworld/NJPWWORLD/a/f$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/f;->f:Lcom/njpwworld/NJPWWORLD/a/f$a;

    const-class v0, Lcom/njpwworld/NJPWWORLD/a/f$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/njpwworld/NJPWWORLD/a/f$a;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/a/f;->f:Lcom/njpwworld/NJPWWORLD/a/f$a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/njpwworld/NJPWWORLD/a/f$a;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/f;->f:Lcom/njpwworld/NJPWWORLD/a/f$a;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/f;->f:Lcom/njpwworld/NJPWWORLD/a/f$a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
