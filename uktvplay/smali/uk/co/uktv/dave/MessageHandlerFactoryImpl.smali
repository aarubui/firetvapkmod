.class public Luk/co/uktv/dave/MessageHandlerFactoryImpl;
.super Ljava/lang/Object;
.source "MessageHandlerFactoryImpl.java"

# interfaces
.implements Luk/co/uktv/dave/core/MessageHandlerFactory;


# static fields
.field public static final COMMAND_CONTROL:Ljava/lang/String; = "disposeMediaPlayer"

.field public static final COMMAND_DISPOSE:Ljava/lang/String; = "controlMediaPlayer"

.field public static final COMMAND_EXIT_APP:Ljava/lang/String; = "exitApp"

.field public static final COMMAND_GET_LICENCE_URL:Ljava/lang/String; = "getLicenceUrl"

.field public static final COMMAND_INIT:Ljava/lang/String; = "inititializeMediaPlayer"


# instance fields
.field private handlerClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Luk/co/uktv/dave/core/MessageHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    .line 22
    iget-object v0, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    const-string v1, "inititializeMediaPlayer"

    const-class v2, Luk/co/uktv/dave/InitializeMediaPlayerMessageHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    const-string v1, "disposeMediaPlayer"

    const-class v2, Luk/co/uktv/dave/DisposeMediaPlayerMessageHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    const-string v1, "controlMediaPlayer"

    const-class v2, Luk/co/uktv/dave/ControlMediaPlayerMessageHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    const-string v1, "exitApp"

    const-class v2, Luk/co/uktv/dave/ExitAppMessageHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    const-string v1, "getLicenceUrl"

    const-class v2, Luk/co/uktv/dave/GetLicenceUrlMessageHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private createHandler(Ljava/lang/String;)Luk/co/uktv/dave/core/MessageHandler;
    .locals 4
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    iget-object v3, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 36
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Luk/co/uktv/dave/core/MessageHandler;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 37
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Luk/co/uktv/dave/core/MessageHandler;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/co/uktv/dave/core/MessageHandler;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 47
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Luk/co/uktv/dave/core/MessageHandler;>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Luk/co/uktv/dave/core/MessageHandler;>;"
    :goto_0
    return-object v3

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 47
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 40
    :catch_1
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getHandler(Ljava/lang/String;)Luk/co/uktv/dave/core/MessageHandler;
    .locals 1
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->handlerClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Luk/co/uktv/dave/MessageHandlerFactoryImpl;->createHandler(Ljava/lang/String;)Luk/co/uktv/dave/core/MessageHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
