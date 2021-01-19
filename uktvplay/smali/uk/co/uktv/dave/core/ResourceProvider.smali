.class public Luk/co/uktv/dave/core/ResourceProvider;
.super Ljava/lang/Object;
.source "ResourceProvider.java"


# static fields
.field private static instance:Luk/co/uktv/dave/core/ResourceProvider;


# instance fields
.field private context:Landroid/content/Context;

.field private packageName:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Luk/co/uktv/dave/core/ResourceProvider;->context:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Luk/co/uktv/dave/core/ResourceProvider;->packageName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Luk/co/uktv/dave/core/ResourceProvider;->resources:Landroid/content/res/Resources;

    .line 20
    return-void
.end method

.method private getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Luk/co/uktv/dave/core/ResourceProvider;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Luk/co/uktv/dave/core/ResourceProvider;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Luk/co/uktv/dave/core/ResourceProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Luk/co/uktv/dave/core/ResourceProvider;->instance:Luk/co/uktv/dave/core/ResourceProvider;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Luk/co/uktv/dave/core/ResourceProvider;

    invoke-direct {v0, p0}, Luk/co/uktv/dave/core/ResourceProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Luk/co/uktv/dave/core/ResourceProvider;->instance:Luk/co/uktv/dave/core/ResourceProvider;

    .line 26
    :cond_0
    sget-object v0, Luk/co/uktv/dave/core/ResourceProvider;->instance:Luk/co/uktv/dave/core/ResourceProvider;

    return-object v0
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Luk/co/uktv/dave/core/ResourceProvider;->resources:Landroid/content/res/Resources;

    const-string v1, "int"

    invoke-direct {p0, p1, v1}, Luk/co/uktv/dave/core/ResourceProvider;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getPlural(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "quantity"    # I

    .prologue
    .line 30
    iget-object v0, p0, Luk/co/uktv/dave/core/ResourceProvider;->resources:Landroid/content/res/Resources;

    const-string v1, "plurals"

    .line 31
    invoke-direct {p0, p1, v1}, Luk/co/uktv/dave/core/ResourceProvider;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 30
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Luk/co/uktv/dave/core/ResourceProvider;->resources:Landroid/content/res/Resources;

    const-string v1, "string"

    invoke-direct {p0, p1, v1}, Luk/co/uktv/dave/core/ResourceProvider;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
