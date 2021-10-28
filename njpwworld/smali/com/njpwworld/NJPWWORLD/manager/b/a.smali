.class public Lcom/njpwworld/NJPWWORLD/manager/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/manager/b/a$b;,
        Lcom/njpwworld/NJPWWORLD/manager/b/a$a;
    }
.end annotation


# static fields
.field public static a:Lb/n;

.field public static b:Lcom/njpwworld/NJPWWORLD/c/a;

.field public static c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

.field public static d:Lcom/njpwworld/NJPWWORLD/d/g$a;

.field private static e:Lcom/njpwworld/NJPWWORLD/manager/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b()V

    return-void
.end method

.method public static a()Lcom/njpwworld/NJPWWORLD/manager/b/a;
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;-><init>()V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->e:Lcom/njpwworld/NJPWWORLD/manager/b/a;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->e:Lcom/njpwworld/NJPWWORLD/manager/b/a;

    return-object v0
.end method

.method public static a(Lokhttp3/OkHttpClient$Builder;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/manager/b/a$2;

    invoke-direct {v1}, Lcom/njpwworld/NJPWWORLD/manager/b/a$2;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p0, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/b/a$3;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a$3;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Z)V
    .locals 2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/d/g$a;->a:Lcom/njpwworld/NJPWWORLD/d/g$a;

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->d:Lcom/njpwworld/NJPWWORLD/d/g$a;

    new-instance v0, Lb/n$a;

    invoke-direct {v0}, Lb/n$a;-><init>()V

    const-string v1, "https://api.njpwworld.com"

    invoke-virtual {v0, v1}, Lb/n$a;->a(Ljava/lang/String;)Lb/n$a;

    move-result-object v0

    invoke-static {}, Lb/b/a/a;->a()Lb/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/n$a;->a(Lb/e$a;)Lb/n$a;

    move-result-object v0

    invoke-static {p0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b(Z)Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/n$a;->a(Lokhttp3/OkHttpClient;)Lb/n$a;

    move-result-object p0

    invoke-static {}, Lb/a/a/i;->a()Lb/a/a/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/n$a;->a(Lb/c$a;)Lb/n$a;

    move-result-object p0

    invoke-virtual {p0}, Lb/n$a;->a()Lb/n;

    move-result-object p0

    sput-object p0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a:Lb/n;

    sget-object p0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a:Lb/n;

    const-class v0, Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-virtual {p0, v0}, Lb/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/njpwworld/NJPWWORLD/c/a;

    sput-object p0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    new-instance p0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;-><init>()V

    sput-object p0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    return-void
.end method

.method private static b(Z)Lokhttp3/OkHttpClient;
    .locals 2

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/b/a$a;

    invoke-direct {v0, p0}, Lcom/njpwworld/NJPWWORLD/manager/b/a$a;-><init>(Z)V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a(Lokhttp3/OkHttpClient$Builder;)V

    sget-boolean p0, Lcom/njpwworld/NJPWWORLD/a;->b:Z

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b(Lokhttp3/OkHttpClient$Builder;)V

    :cond_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a(Z)V

    return-void
.end method

.method private static b(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/b/a$1;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a$1;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method


# virtual methods
.method public c()Lcom/njpwworld/NJPWWORLD/c/a;
    .locals 2

    sget-object v0, Lcom/njpwworld/NJPWWORLD/d/g$a;->a:Lcom/njpwworld/NJPWWORLD/d/g$a;

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->d:Lcom/njpwworld/NJPWWORLD/d/g$a;

    new-instance v0, Lb/n$a;

    invoke-direct {v0}, Lb/n$a;-><init>()V

    const-string v1, "https://api.njpwworld.com"

    invoke-virtual {v0, v1}, Lb/n$a;->a(Ljava/lang/String;)Lb/n$a;

    move-result-object v0

    invoke-static {}, Lb/b/a/a;->a()Lb/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/n$a;->a(Lb/e$a;)Lb/n$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b(Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/n$a;->a(Lokhttp3/OkHttpClient;)Lb/n$a;

    move-result-object v0

    invoke-static {}, Lb/a/a/i;->a()Lb/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/n$a;->a(Lb/c$a;)Lb/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/n$a;->a()Lb/n;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a:Lb/n;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->a:Lb/n;

    const-class v1, Lcom/njpwworld/NJPWWORLD/c/a;

    invoke-virtual {v0, v1}, Lb/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/njpwworld/NJPWWORLD/c/a;

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    invoke-direct {v0}, Lcom/njpwworld/NJPWWORLD/manager/b/a$b;-><init>()V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->c:Lcom/njpwworld/NJPWWORLD/manager/b/a$b;

    sget-object v0, Lcom/njpwworld/NJPWWORLD/manager/b/a;->b:Lcom/njpwworld/NJPWWORLD/c/a;

    return-object v0
.end method
