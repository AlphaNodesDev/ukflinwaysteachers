.class public Landroidx/webkit/internal/AssetHelper;
.super Ljava/lang/Object;
.source "AssetHelper.java"


# static fields
.field public static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/webkit/internal/AssetHelper;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static getCanonicalDirPath(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "canonicalPath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    return-object v0
.end method

.method public static getCanonicalFileIfChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "child"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-static {p0}, Landroidx/webkit/internal/AssetHelper;->getCanonicalDirPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "parentCanonicalPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "childCanonicalPath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 158
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 186
    nop

    .line 187
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForN;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getFieldId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "resourceType"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Landroidx/webkit/internal/AssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroidx/webkit/internal/AssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "id":I
    return v1
.end method

.method private getValueType(I)I
    .locals 3
    .param p1, "fieldId"    # I

    .line 75
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 76
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroidx/webkit/internal/AssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 77
    iget v1, v0, Landroid/util/TypedValue;->type:I

    return v1
.end method

.method public static guessMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 203
    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "text/plain"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static handleSvgzStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-string v0, ".svgz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static openFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 136
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/webkit/internal/AssetHelper;->handleSvgzStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private static removeLeadingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 65
    :cond_0
    return-object p0
.end method


# virtual methods
.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->removeLeadingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p0, Landroidx/webkit/internal/AssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 123
    .local v0, "assets":Landroid/content/res/AssetManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/webkit/internal/AssetHelper;->handleSvgzStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public openResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->removeLeadingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    const-string v0, "/"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "pathSegments":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 95
    const/4 v2, 0x0

    aget-object v4, v0, v2

    .line 96
    .local v4, "resourceType":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v6, v0, v5

    .line 99
    .local v6, "resourceName":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 100
    .local v7, "dotIndex":I
    if-eq v7, v1, :cond_0

    .line 101
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 103
    :cond_0
    invoke-direct {p0, v4, v6}, Landroidx/webkit/internal/AssetHelper;->getFieldId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "fieldId":I
    invoke-direct {p0, v1}, Landroidx/webkit/internal/AssetHelper;->getValueType(I)I

    move-result v8

    .line 105
    .local v8, "valueType":I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 110
    iget-object v2, p0, Landroidx/webkit/internal/AssetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/webkit/internal/AssetHelper;->handleSvgzStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 106
    :cond_1
    new-instance v9, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    .line 107
    const-string v2, "Expected %s resource to be of TYPE_STRING but was %d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 93
    .end local v1    # "fieldId":I
    .end local v4    # "resourceType":Ljava/lang/String;
    .end local v6    # "resourceName":Ljava/lang/String;
    .end local v7    # "dotIndex":I
    .end local v8    # "valueType":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect resource path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
