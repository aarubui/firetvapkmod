.class abstract Luk/co/uktv/dave/recommendations/data/Database;
.super Landroidx/room/RoomDatabase;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "uktvplay_db"

.field private static instance:Luk/co/uktv/dave/recommendations/data/Database;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Luk/co/uktv/dave/recommendations/data/Database;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Luk/co/uktv/dave/recommendations/data/Database;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Luk/co/uktv/dave/recommendations/data/Database;->instance:Luk/co/uktv/dave/recommendations/data/Database;

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "uktvplay_db"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Luk/co/uktv/dave/recommendations/data/Database;

    sput-object p0, Luk/co/uktv/dave/recommendations/data/Database;->instance:Luk/co/uktv/dave/recommendations/data/Database;

    .line 29
    :cond_0
    sget-object p0, Luk/co/uktv/dave/recommendations/data/Database;->instance:Luk/co/uktv/dave/recommendations/data/Database;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method abstract recommendations()Luk/co/uktv/dave/recommendations/data/Database$RecommendationDAO;
.end method
