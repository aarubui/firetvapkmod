.class public Lcom/njpwworld/NJPWWORLD/manager/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/njpwworld/NJPWWORLD/manager/a;

.field private static b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/njpwworld/NJPWWORLD/manager/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/njpwworld/NJPWWORLD/manager/a;
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/a;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/manager/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/a;->a:Lcom/njpwworld/NJPWWORLD/manager/a;

    sget-object p0, Lcom/njpwworld/NJPWWORLD/manager/a;->a:Lcom/njpwworld/NJPWWORLD/manager/a;

    return-object p0
.end method

.method public static a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/njpwworld/NJPWWORLD/a;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-string v1, "ON"

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/d/c;->b(Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_1
    new-instance v2, Ljava/lang/ProcessBuilder;

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v2

    sget-boolean v3, Lcom/njpwworld/NJPWWORLD/a;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x17

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/njpwworld/NJPWWORLD/a;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0

    nop

    :array_0
    .array-data 2
        0x63s
        0x6fs
        0x6ds
        0x2es
        0x6es
        0x6fs
        0x73s
        0x68s
        0x75s
        0x66s
        0x6fs
        0x75s
        0x2es
        0x61s
        0x6es
        0x64s
        0x72s
        0x6fs
        0x69s
        0x64s
        0x2es
        0x73s
        0x75s
    .end array-data
.end method

.method public static c()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/njpwworld/NJPWWORLD/manager/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/njpwworld/NJPWWORLD/a;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public static d()Z
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/njpwworld/NJPWWORLD/a;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-string v0, "NO"

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/d/c;->b(Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/a;->f()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x18

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    nop

    :array_0
    .array-data 2
        0x63s
        0x6fs
        0x6ds
        0x2es
        0x67s
        0x65s
        0x6es
        0x79s
        0x6ds
        0x6fs
        0x74s
        0x69s
        0x6fs
        0x6es
        0x2es
        0x73s
        0x75s
        0x70s
        0x65s
        0x72s
        0x75s
        0x73s
        0x65s
        0x72s
    .end array-data
.end method

.method private static final h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :array_0
    .array-data 2
        0x73s
        0x75s
    .end array-data
.end method

.method private static i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
