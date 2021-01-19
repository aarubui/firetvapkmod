.class public Luk/co/uktv/dave/dd/util/GetManifestDocument;
.super Landroid/os/AsyncTask;
.source "GetManifestDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetManifestDocument"


# instance fields
.field private onDocumentLoadedListener:Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;


# direct methods
.method public constructor <init>(Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;)V
    .locals 0
    .param p1, "onDocumentLoadedListener"    # Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Luk/co/uktv/dave/dd/util/GetManifestDocument;->onDocumentLoadedListener:Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/uktv/dave/dd/util/GetManifestDocument;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 27
    const-string v8, "GetManifestDocument"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doInBackground "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 31
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 33
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    .local v3, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 36
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v7, :cond_0

    .line 45
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 48
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 44
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_1
    if-eqz v7, :cond_0

    .line 45
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 41
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 42
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    if-eqz v7, :cond_0

    .line 45
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 44
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_2

    .line 45
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/uktv/dave/dd/util/GetManifestDocument;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Luk/co/uktv/dave/dd/util/GetManifestDocument;->onDocumentLoadedListener:Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Luk/co/uktv/dave/dd/util/GetManifestDocument;->onDocumentLoadedListener:Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;

    invoke-interface {v0, p1}, Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;->onDocumentLoaded(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/uktv/dave/dd/util/GetManifestDocument;->onDocumentLoadedListener:Luk/co/uktv/dave/dd/util/GetManifestDocument$OnDocumentLoadedListener;

    .line 56
    :cond_0
    return-void
.end method
