.class public Lcom/tvbusa/encore/tv/SeriesActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SeriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;
    }
.end annotation


# instance fields
.field adConfigType:I

.field banner:Ljava/lang/String;

.field bcov_id:Ljava/lang/String;

.field dialog:Landroid/app/ProgressDialog;

.field private didFav:Ljava/lang/Boolean;

.field episodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tvbusa/encore/tv/Episode;",
            ">;"
        }
    .end annotation
.end field

.field favButton:Landroid/widget/Button;

.field historyButton:Landroid/widget/Button;

.field historyIndex:I

.field historyTime:I

.field private ii:Ljava/lang/String;

.field isUpdating:Ljava/lang/Boolean;

.field isValid:Ljava/lang/Boolean;

.field legacy_id:Ljava/lang/String;

.field pid:Ljava/lang/String;

.field playButton:Landroid/widget/Button;

.field playlist_id:Ljava/lang/String;

.field poster:Ljava/lang/String;

.field secondary_title:Ljava/lang/String;

.field sss:Ljava/lang/String;

.field title:Ljava/lang/String;

.field userRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 66
    iput v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyIndex:I

    .line 67
    iput v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyTime:I

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    .line 70
    const-string v2, ""

    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->bcov_id:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->legacy_id:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->playlist_id:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isUpdating:Ljava/lang/Boolean;

    .line 79
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isValid:Ljava/lang/Boolean;

    .line 80
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->poster:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->didFav:Ljava/lang/Boolean;

    .line 83
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->ii:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->userRegion:Ljava/lang/String;

    .line 86
    iput v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->adConfigType:I

    return-void
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/SeriesActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 61
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->didFav:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 61
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->didFav:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/SeriesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 61
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->ii:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->ii:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public checkAllHistory()V
    .locals 10

    .line 250
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvCheckHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 255
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"t\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\",\"pid\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "params":Ljava/lang/String;
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 257
    .local v6, "body":Lokhttp3/RequestBody;
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v7, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v7, "POST"

    invoke-virtual {v3, v7, v6}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 259
    .local v3, "request":Lokhttp3/Request;
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 260
    .local v7, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v7, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/SeriesActivity$6;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$6;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 288
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "JSON":Lokhttp3/MediaType;
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "body":Lokhttp3/RequestBody;
    .end local v7    # "client":Lokhttp3/OkHttpClient;
    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->checkHistory()V

    .line 291
    :goto_0
    return-void
.end method

.method public checkFav()V
    .locals 10

    .line 156
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvCheckFav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 161
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"t\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\",\"pid\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "params":Ljava/lang/String;
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 163
    .local v6, "body":Lokhttp3/RequestBody;
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v7, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v7, "POST"

    invoke-virtual {v3, v7, v6}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 165
    .local v3, "request":Lokhttp3/Request;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Run DB - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Check Fav"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 167
    .local v7, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v7, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/SeriesActivity$4;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$4;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 192
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "JSON":Lokhttp3/MediaType;
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "body":Lokhttp3/RequestBody;
    .end local v7    # "client":Lokhttp3/OkHttpClient;
    :cond_0
    return-void
.end method

.method public checkHistory()V
    .locals 3

    .line 296
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 297
    .local v0, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SN - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordHistory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 300
    const-string v1, "SSS Found Null Series"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 304
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-void

    .line 306
    :cond_1
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    const-string v2, "history"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/tvbusa/encore/tv/SeriesActivity$7;

    invoke-direct {v2, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$7;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 322
    return-void
.end method

.method public favThis(Ljava/lang/Boolean;)V
    .locals 11
    .param p1, "isFaved"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFaved"
        }
    .end annotation

    .line 197
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->dialog:Landroid/app/ProgressDialog;

    const-string v3, "\u64cd\u4f5c\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvFavThis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 204
    .local v4, "JSON":Lokhttp3/MediaType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->playlist_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    const-string v7, " "

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "uri":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"t\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\",\"pid\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\",\"name\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\",\"img\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->poster:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\",\"url\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\",\"isFav\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 207
    .local v7, "body":Lokhttp3/RequestBody;
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "Content-Type"

    invoke-virtual {v8, v9, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v8, "POST"

    invoke-virtual {v3, v8, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 209
    .local v3, "request":Lokhttp3/Request;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Run DB - isFav?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FavThis"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 211
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/tv/SeriesActivity$5;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$5;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 244
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "JSON":Lokhttp3/MediaType;
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "params":Ljava/lang/String;
    .end local v7    # "body":Lokhttp3/RequestBody;
    .end local v8    # "client":Lokhttp3/OkHttpClient;
    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "\u6536\u85cf\u529f\u80fd\u53ea\u9650\u767b\u8a18\u6703\u54e1\u4f7f\u7528"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 247
    :goto_0
    return-void
.end method

.method public getEpisodePos(Ljava/lang/String;)V
    .locals 4
    .param p1, "historyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historyId"
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    .line 327
    .local v1, "ep":Lcom/tvbusa/encore/tv/Episode;
    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "ep_id":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iput v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyIndex:I

    .line 330
    goto :goto_1

    .line 325
    .end local v1    # "ep":Lcom/tvbusa/encore/tv/Episode;
    .end local v2    # "ep_id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Ep is called - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    iget v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Episode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordHistory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    iget v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tvbusa/encore/tv/Episode;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Episode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->setContentView(I)V

    .line 92
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->dialog:Landroid/app/ProgressDialog;

    .line 93
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 96
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    .line 99
    :cond_0
    const-string v2, "UserProfile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    const-string v5, "token"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "token":Ljava/lang/String;
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->checkFav()V

    .line 103
    :goto_0
    const-string v5, "generalInfo"

    invoke-virtual {p0, v5, v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 104
    .local v5, "generalInfo":Landroid/content/SharedPreferences;
    const-string v6, "deviceNumber"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    .line 105
    const-string v6, "userRegion"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->userRegion:Ljava/lang/String;

    .line 106
    const v6, 0x7f0b013f

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    .line 107
    new-instance v7, Lcom/tvbusa/encore/tv/SeriesActivity$1;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$1;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v6, 0x7f0b023a

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->playButton:Landroid/widget/Button;

    .line 115
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120173

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->playButton:Landroid/widget/Button;

    new-instance v7, Lcom/tvbusa/encore/tv/SeriesActivity$2;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$2;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v6, 0x7f0b0179

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyButton:Landroid/widget/Button;

    .line 134
    new-instance v7, Lcom/tvbusa/encore/tv/SeriesActivity$3;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$3;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v6, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method public requestBCOV(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/brightcove/player/event/EventEmitterImpl;

    invoke-direct {v0}, Lcom/brightcove/player/event/EventEmitterImpl;-><init>()V

    .line 488
    .local v0, "eventEmitter":Lcom/brightcove/player/event/EventEmitter;
    new-instance v1, Lcom/brightcove/player/edge/Catalog;

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .local v1, "catalog":Lcom/brightcove/player/edge/Catalog;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 490
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "limit"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v3, Lcom/tvbusa/encore/tv/SeriesActivity$11;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$11;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/brightcove/player/edge/Catalog;->findPlaylistByID(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/brightcove/player/edge/PlaylistListener;)V

    .line 553
    return-void
.end method

.method public requestContent(Ljava/lang/String;)V
    .locals 22
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 368
    move-object/from16 v1, p0

    const-string v0, "AdConfig"

    const-string v2, "adConfig"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, "object":Lorg/json/JSONObject;
    const v5, 0x7f0b00ee

    invoke-virtual {v1, v5}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 372
    .local v5, "dramaTitle":Landroid/widget/TextView;
    const v6, 0x7f0b00ed

    invoke-virtual {v1, v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 374
    .local v6, "dramaStatus":Landroid/widget/TextView;
    const v7, 0x7f0b00eb

    invoke-virtual {v1, v7}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 375
    .local v7, "dramaDescription":Landroid/widget/TextView;
    const v8, 0x7f0b0066

    invoke-virtual {v1, v8}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 377
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->adConfigType:I

    .line 378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->adConfigType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config 1 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "title"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    .line 381
    const-string v0, "subtitle"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    .line 382
    const-string v0, "large"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->poster:Ljava/lang/String;

    .line 383
    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "status":Ljava/lang/String;
    const-string v2, "year"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "year":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 386
    iget-object v9, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v9, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const-string v9, "synopsis"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v9, 0x7f0b0308

    invoke-virtual {v1, v9}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 394
    .local v9, "yearBtn":Landroid/widget/Button;
    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 395
    new-instance v10, Lcom/tvbusa/encore/tv/SeriesActivity$8;

    invoke-direct {v10, v1, v2}, Lcom/tvbusa/encore/tv/SeriesActivity$8;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v10, 0x7f0b008f

    invoke-virtual {v1, v10}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 406
    .local v10, "castView":Landroid/widget/LinearLayout;
    const-string v11, "char"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 407
    .local v11, "casts":Lorg/json/JSONArray;
    const/16 v14, 0x28

    const v15, 0x7f08005e

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 408
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "ii":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 409
    new-instance v13, Landroid/widget/Button;

    invoke-direct {v13, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 410
    .local v13, "castBtn":Landroid/widget/Button;
    invoke-static {v1, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v18, v17

    .line 411
    .local v18, "btnDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v15, v18

    .end local v18    # "btnDrawable":Landroid/graphics/drawable/Drawable;
    .local v15, "btnDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 412
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 413
    .local v19, "cast":Ljava/lang/String;
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setHeight(I)V

    .line 414
    const/high16 v14, 0x41900000    # 18.0f

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 415
    move-object/from16 v20, v0

    const/4 v0, 0x0

    const/16 v14, 0x14

    .end local v0    # "status":Ljava/lang/String;
    .local v20, "status":Ljava/lang/String;
    invoke-virtual {v13, v14, v0, v14, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 416
    move-object/from16 v0, v19

    .end local v19    # "cast":Ljava/lang/String;
    .local v0, "cast":Ljava/lang/String;
    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 418
    new-instance v14, Lcom/tvbusa/encore/tv/SeriesActivity$9;

    invoke-direct {v14, v1, v0}, Lcom/tvbusa/encore/tv/SeriesActivity$9;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    new-instance v14, Landroid/widget/Space;

    invoke-direct {v14, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 429
    .local v14, "ss":Landroid/widget/Space;
    move-object/from16 v19, v0

    const/16 v0, 0xa

    .end local v0    # "cast":Ljava/lang/String;
    .restart local v19    # "cast":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 430
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    .end local v13    # "castBtn":Landroid/widget/Button;
    .end local v14    # "ss":Landroid/widget/Space;
    .end local v15    # "btnDrawable":Landroid/graphics/drawable/Drawable;
    .end local v19    # "cast":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v20

    const/16 v14, 0x28

    const v15, 0x7f08005e

    goto :goto_1

    .end local v20    # "status":Ljava/lang/String;
    .local v0, "status":Ljava/lang/String;
    :cond_1
    move-object/from16 v20, v0

    .end local v0    # "status":Ljava/lang/String;
    .restart local v20    # "status":Ljava/lang/String;
    goto :goto_2

    .line 407
    .end local v12    # "ii":I
    .end local v20    # "status":Ljava/lang/String;
    .restart local v0    # "status":Ljava/lang/String;
    :cond_2
    move-object/from16 v20, v0

    .line 435
    .end local v0    # "status":Ljava/lang/String;
    .restart local v20    # "status":Ljava/lang/String;
    :goto_2
    const v0, 0x7f0b0309

    invoke-virtual {v1, v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 436
    .local v0, "genreView":Landroid/widget/LinearLayout;
    const-string v12, "genres"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 437
    .local v12, "genres":Lorg/json/JSONArray;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 438
    const/4 v13, 0x0

    .local v13, "ii":I
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 439
    new-instance v14, Landroid/widget/Button;

    invoke-direct {v14, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 440
    .local v14, "genreBtn":Landroid/widget/Button;
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 441
    .local v15, "genre":Ljava/lang/String;
    move-object/from16 v19, v2

    const v2, 0x7f08005e

    .end local v2    # "year":Ljava/lang/String;
    .local v19, "year":Ljava/lang/String;
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v21, v17

    .line 442
    .local v21, "btnDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v2, v21

    .end local v21    # "btnDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "btnDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 443
    move-object/from16 v21, v2

    const/16 v2, 0x28

    .end local v2    # "btnDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "btnDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 444
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 445
    const/16 v2, 0x14

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4, v2, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 446
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 447
    new-instance v4, Lcom/tvbusa/encore/tv/SeriesActivity$10;

    invoke-direct {v4, v1, v15}, Lcom/tvbusa/encore/tv/SeriesActivity$10;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    new-instance v4, Landroid/widget/Space;

    invoke-direct {v4, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 459
    .local v4, "ss":Landroid/widget/Space;
    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 460
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    .end local v4    # "ss":Landroid/widget/Space;
    .end local v14    # "genreBtn":Landroid/widget/Button;
    .end local v15    # "genre":Ljava/lang/String;
    .end local v21    # "btnDrawable":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, p1

    move-object/from16 v2, v19

    goto :goto_3

    .end local v19    # "year":Ljava/lang/String;
    .local v2, "year":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v2

    .end local v2    # "year":Ljava/lang/String;
    .restart local v19    # "year":Ljava/lang/String;
    goto :goto_4

    .line 437
    .end local v13    # "ii":I
    .end local v19    # "year":Ljava/lang/String;
    .restart local v2    # "year":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v2

    .line 464
    .end local v2    # "year":Ljava/lang/String;
    .restart local v19    # "year":Ljava/lang/String;
    :goto_4
    const-string v2, "UUUUU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "user - "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->userRegion:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v4, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->poster:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 467
    const-string v2, "bcov"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->bcov_id:Ljava/lang/String;

    .line 469
    iget-object v2, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->userRegion:Ljava/lang/String;

    const-string v4, "CA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x8

    const v13, 0x7f0b0153

    if-eqz v2, :cond_5

    const-string v2, "blockInCA"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->userRegion:Ljava/lang/String;

    const-string v14, "US"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "blockInUSA"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 470
    :cond_6
    invoke-virtual {v1, v13}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 471
    .local v2, "gbContainer":Landroid/widget/FrameLayout;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    const v13, 0x7f0b0150

    invoke-virtual {v1, v13}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 473
    .local v13, "loadingFrame":Landroid/widget/FrameLayout;
    invoke-virtual {v13, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 474
    .end local v2    # "gbContainer":Landroid/widget/FrameLayout;
    .end local v13    # "loadingFrame":Landroid/widget/FrameLayout;
    goto :goto_5

    .line 475
    :cond_7
    invoke-virtual {v1, v13}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 476
    .restart local v2    # "gbContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 477
    iget-object v4, v1, Lcom/tvbusa/encore/tv/SeriesActivity;->bcov_id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tvbusa/encore/tv/SeriesActivity;->requestBCOV(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v0    # "genreView":Landroid/widget/LinearLayout;
    .end local v2    # "gbContainer":Landroid/widget/FrameLayout;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v5    # "dramaTitle":Landroid/widget/TextView;
    .end local v6    # "dramaStatus":Landroid/widget/TextView;
    .end local v7    # "dramaDescription":Landroid/widget/TextView;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "yearBtn":Landroid/widget/Button;
    .end local v10    # "castView":Landroid/widget/LinearLayout;
    .end local v11    # "casts":Lorg/json/JSONArray;
    .end local v12    # "genres":Lorg/json/JSONArray;
    .end local v19    # "year":Ljava/lang/String;
    .end local v20    # "status":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 484
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6
    return-void
.end method
