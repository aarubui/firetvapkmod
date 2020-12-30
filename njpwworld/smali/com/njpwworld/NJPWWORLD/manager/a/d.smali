.class public final enum Lcom/njpwworld/NJPWWORLD/manager/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/njpwworld/NJPWWORLD/manager/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/njpwworld/NJPWWORLD/manager/a/d;

.field private static final synthetic d:[Lcom/njpwworld/NJPWWORLD/manager/a/d;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/a/d;

    const-string v1, "MAGAZINE_MONTHLY"

    const-string v2, "com.njpwworld.amazon.iap.subscription"

    const-string v3, "JP"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/njpwworld/NJPWWORLD/manager/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/a/d;->a:Lcom/njpwworld/NJPWWORLD/manager/a/d;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/njpwworld/NJPWWORLD/manager/a/d;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/a/d;->a:Lcom/njpwworld/NJPWWORLD/manager/a/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/a/d;->d:[Lcom/njpwworld/NJPWWORLD/manager/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/njpwworld/NJPWWORLD/manager/a/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/njpwworld/NJPWWORLD/manager/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a/d;->values()[Lcom/njpwworld/NJPWWORLD/manager/a/d;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/njpwworld/NJPWWORLD/manager/a/d;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/njpwworld/NJPWWORLD/manager/a/d;
    .locals 1

    const-class v0, Lcom/njpwworld/NJPWWORLD/manager/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/njpwworld/NJPWWORLD/manager/a/d;

    return-object p0
.end method

.method public static values()[Lcom/njpwworld/NJPWWORLD/manager/a/d;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/a/d;->d:[Lcom/njpwworld/NJPWWORLD/manager/a/d;

    invoke-virtual {v0}, [Lcom/njpwworld/NJPWWORLD/manager/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/njpwworld/NJPWWORLD/manager/a/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/d;->b:Ljava/lang/String;

    return-object v0
.end method
