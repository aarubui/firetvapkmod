.class public Lcom/njpwworld/NJPWWORLD/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/njpwworld/NJPWWORLD/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4M4HRyg2dQkLAE3hUeTd73J7A2bU8FiT"

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/a;->b:Ljava/lang/String;

    const-string v0, "AES"

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/a;->c:Ljava/lang/String;

    const-string v0, "AES/CBC/PKCS5Padding"

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/a/a$a;-><init>(Lcom/njpwworld/NJPWWORLD/a/a;Lcom/njpwworld/NJPWWORLD/a/a$1;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/a;->e:Lcom/njpwworld/NJPWWORLD/a/a$a;

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a([B[B[BLjava/lang/Integer;)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/njpwworld/NJPWWORLD/a/a;->a(Ljavax/crypto/SecretKey;[BLjava/lang/Integer;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/a;->e:Lcom/njpwworld/NJPWWORLD/a/a$a;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "4M4HRyg2dQkLAE3hUeTd73J7A2bU8FiT"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/a/a;->a:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/njpwworld/NJPWWORLD/a/a;->a(Landroid/content/Context;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/a/a;->a([B[B[BLjava/lang/Integer;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/njpwworld/NJPWWORLD/a/a$a;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Ljavax/crypto/SecretKey;[BLjava/lang/Integer;)Ljavax/crypto/Cipher;
    .locals 2

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Landroid/content/Context;)[B
    .locals 2

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/d/f;->w(Landroid/content/Context;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v0}, Lcom/njpwworld/NJPWWORLD/d/f;->a(Landroid/content/Context;[B)V

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/a/a;->e:Lcom/njpwworld/NJPWWORLD/a/a$a;

    invoke-virtual {v1, p1}, Lcom/njpwworld/NJPWWORLD/a/a$a;->a(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "4M4HRyg2dQkLAE3hUeTd73J7A2bU8FiT"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/a/a;->a:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/njpwworld/NJPWWORLD/a/a;->a(Landroid/content/Context;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/njpwworld/NJPWWORLD/a/a;->a([B[B[BLjava/lang/Integer;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
