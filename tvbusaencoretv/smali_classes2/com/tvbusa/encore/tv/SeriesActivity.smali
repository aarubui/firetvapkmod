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

.field secondary_title:Ljava/lang/String;

.field sss:Ljava/lang/String;

.field thumbnail:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyIndex:I

    .line 59
    iput v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyTime:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->bcov_id:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->legacy_id:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->playlist_id:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isUpdating:Ljava/lang/Boolean;

    .line 71
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isValid:Ljava/lang/Boolean;

    .line 72
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->thumbnail:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->didFav:Ljava/lang/Boolean;

    .line 75
    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->ii:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/SeriesActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 53
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->didFav:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 53
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->didFav:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/SeriesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;

    .line 53
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->ii:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tvbusa/encore/tv/SeriesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/SeriesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->ii:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public checkAllHistory()V
    .locals 10

    .line 237
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvCheckHistory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 242
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

    .line 243
    .local v5, "params":Ljava/lang/String;
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 244
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

    .line 246
    .local v3, "request":Lokhttp3/Request;
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 247
    .local v7, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v7, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/SeriesActivity$6;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$6;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 275
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "JSON":Lokhttp3/MediaType;
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "body":Lokhttp3/RequestBody;
    .end local v7    # "client":Lokhttp3/OkHttpClient;
    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->checkHistory()V

    .line 278
    :goto_0
    return-void
.end method

.method public checkFav()V
    .locals 10

    .line 143
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvCheckFav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 148
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

    .line 149
    .local v5, "params":Ljava/lang/String;
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 150
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

    .line 152
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

    .line 153
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 154
    .local v7, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v7, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v9, Lcom/tvbusa/encore/tv/SeriesActivity$4;

    invoke-direct {v9, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$4;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-interface {v8, v9}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 179
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

    .line 284
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 285
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

    .line 287
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 288
    const-string v1, "SSS Found Null Series"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 292
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-void

    .line 294
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

    .line 310
    return-void
.end method

.method public favThis(Ljava/lang/Boolean;)V
    .locals 11
    .param p1, "isFaved"    # Ljava/lang/Boolean;

    .line 184
    const-string v0, "UserProfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->dialog:Landroid/app/ProgressDialog;

    const-string v3, "\u64cd\u4f5c\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fireTvFavThis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "url":Ljava/lang/String;
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 191
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

    .line 192
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

    iget-object v7, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->thumbnail:Ljava/lang/String;

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

    .line 193
    .local v6, "params":Ljava/lang/String;
    invoke-static {v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 194
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

    .line 196
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

    .line 197
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 198
    .local v8, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v8, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v10, Lcom/tvbusa/encore/tv/SeriesActivity$5;

    invoke-direct {v10, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$5;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 231
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "JSON":Lokhttp3/MediaType;
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "params":Ljava/lang/String;
    .end local v7    # "body":Lokhttp3/RequestBody;
    .end local v8    # "client":Lokhttp3/OkHttpClient;
    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "\u6536\u85cf\u529f\u80fd\u53ea\u9650\u767b\u8a18\u6703\u54e1\u4f7f\u7528"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 234
    :goto_0
    return-void
.end method

.method public getEpisodePos(Ljava/lang/String;)V
    .locals 4
    .param p1, "historyId"    # Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->episodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tvbusa/encore/tv/Episode;

    .line 315
    .local v1, "ep":Lcom/tvbusa/encore/tv/Episode;
    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/Episode;->getId()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "ep_id":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    iput v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyIndex:I

    .line 318
    goto :goto_1

    .line 313
    .end local v1    # "ep":Lcom/tvbusa/encore/tv/Episode;
    .end local v2    # "ep_id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
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

    .line 323
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7e7c\u7e8c\u89c0\u770b\u81f3"

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

    .line 324
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/MainApplication;

    .line 83
    .local v0, "mApp":Lcom/tvbusa/encore/tv/MainApplication;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->dialog:Landroid/app/ProgressDialog;

    .line 84
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 86
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 87
    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->pid:Ljava/lang/String;

    .line 90
    :cond_0
    const/4 v3, 0x0

    const-string v4, "UserProfile"

    invoke-virtual {p0, v4, v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 91
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    const-string v6, "token"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "token":Ljava/lang/String;
    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->checkFav()V

    .line 94
    :goto_0
    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/MainApplication;->getNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->sss:Ljava/lang/String;

    .line 96
    const v6, 0x7f0a00ef

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    .line 97
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->favButton:Landroid/widget/Button;

    new-instance v7, Lcom/tvbusa/encore/tv/SeriesActivity$1;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$1;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v6, 0x7f0a01af

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->playButton:Landroid/widget/Button;

    .line 105
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->playButton:Landroid/widget/Button;

    new-instance v7, Lcom/tvbusa/encore/tv/SeriesActivity$2;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$2;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v6, 0x7f0a0120

    invoke-virtual {p0, v6}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyButton:Landroid/widget/Button;

    .line 122
    iget-object v6, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->historyButton:Landroid/widget/Button;

    new-instance v7, Lcom/tvbusa/encore/tv/SeriesActivity$3;

    invoke-direct {v7, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$3;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    new-instance v6, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;

    invoke-direct {v6, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/tvbusa/encore/tv/SeriesActivity$ProgramTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public requestBCOV(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 408
    new-instance v0, Lcom/brightcove/player/event/EventEmitterImpl;

    invoke-direct {v0}, Lcom/brightcove/player/event/EventEmitterImpl;-><init>()V

    .line 409
    .local v0, "eventEmitter":Lcom/brightcove/player/event/EventEmitter;
    new-instance v1, Lcom/brightcove/player/edge/Catalog;

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v1, "catalog":Lcom/brightcove/player/edge/Catalog;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "limit"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v3, Lcom/tvbusa/encore/tv/SeriesActivity$8;

    invoke-direct {v3, p0}, Lcom/tvbusa/encore/tv/SeriesActivity$8;-><init>(Lcom/tvbusa/encore/tv/SeriesActivity;)V

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/brightcove/player/edge/Catalog;->findPlaylistByID(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/brightcove/player/edge/PlaylistListener;)V

    .line 469
    return-void
.end method

.method public requestContent(Ljava/lang/String;)V
    .locals 13
    .param p1, "json"    # Ljava/lang/String;

    .line 354
    const-string v0, "large"

    const-string v1, " | "

    const-string v2, "legacy_id"

    const-string v3, "true"

    const-string v4, "stringValue"

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 355
    .local v5, "playlist_object":Lorg/json/JSONObject;
    const-string v6, "fields"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 358
    .local v6, "fields":Lorg/json/JSONObject;
    const-string v7, "isUpdating"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "false"

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 359
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isUpdating:Ljava/lang/Boolean;

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isUpdating:Ljava/lang/Boolean;

    .line 364
    :goto_0
    const-string v7, "isAvailable"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isValid:Ljava/lang/Boolean;

    goto :goto_1

    .line 367
    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->isValid:Ljava/lang/Boolean;

    .line 370
    :goto_1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x4

    if-ge v3, v7, :cond_2

    .line 371
    const-string v2, "drama_id"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->legacy_id:Ljava/lang/String;

    goto :goto_2

    .line 373
    :cond_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->legacy_id:Ljava/lang/String;

    .line 377
    :goto_2
    const v2, 0x7f0a00be

    invoke-virtual {p0, v2}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    .local v2, "dramaTitle":Landroid/widget/TextView;
    const v3, 0x7f0a00bd

    invoke-virtual {p0, v3}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 379
    .local v3, "dramaSecondaryTitle":Landroid/widget/TextView;
    const v7, 0x7f0a00bc

    invoke-virtual {p0, v7}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 380
    .local v7, "dramaInfo":Landroid/widget/TextView;
    const v8, 0x7f0a00bb

    invoke-virtual {p0, v8}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 381
    .local v8, "dramaDescription":Landroid/widget/TextView;
    const v9, 0x7f0a0058

    invoke-virtual {p0, v9}, Lcom/tvbusa/encore/tv/SeriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 383
    .local v9, "imageView":Landroid/widget/ImageView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "genre"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "status"

    .line 384
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cast"

    .line 385
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "infoText":Ljava/lang/String;
    const-string v10, "chinese"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    .line 388
    const-string v10, "english"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    .line 389
    const-string v10, "topbanner"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    .line 390
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->thumbnail:Ljava/lang/String;

    .line 391
    const-string v10, "WatchHistory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Banner URL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->banner:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v10, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->secondary_title:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const-string v10, "description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/SeriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 398
    const-string v0, "bcov_id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->bcov_id:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SeriesActivity;->bcov_id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/SeriesActivity;->requestBCOV(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "infoText":Ljava/lang/String;
    .end local v2    # "dramaTitle":Landroid/widget/TextView;
    .end local v3    # "dramaSecondaryTitle":Landroid/widget/TextView;
    .end local v5    # "playlist_object":Lorg/json/JSONObject;
    .end local v6    # "fields":Lorg/json/JSONObject;
    .end local v7    # "dramaInfo":Landroid/widget/TextView;
    .end local v8    # "dramaDescription":Landroid/widget/TextView;
    .end local v9    # "imageView":Landroid/widget/ImageView;
    goto :goto_3

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 405
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method
