.class public Lcom/adrianodigiovanni/permission/CDVPermission;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CDVPermission.java"


# instance fields
.field private lastRequestCode:I

.field private mCallbackContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/apache/cordova/CallbackContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->lastRequestCode:I

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->mCallbackContexts:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic lambda$onRequestPermissionResult$2([Ljava/lang/String;[ILorg/apache/cordova/CallbackContext;)V
    .locals 5
    .param p0, "permissions"    # [Ljava/lang/String;
    .param p1, "grantResults"    # [I
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .line 60
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v0, "message":Lorg/json/JSONObject;
    array-length v1, p0

    .line 62
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 63
    aget-object v3, p0, v2

    aget v4, p1, v2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "message":Lorg/json/JSONObject;
    .end local v1    # "n":I
    goto :goto_2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private toArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4
    .param p1, "permissions"    # Lorg/json/JSONArray;

    .line 73
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 74
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/String;

    .line 75
    .local v1, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 76
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    const-string v0, "has"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p3}, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;-><init>(Lcom/adrianodigiovanni/permission/CDVPermission;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 35
    return v1

    .line 38
    :cond_0
    const-string v0, "request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->mCallbackContexts:Landroid/util/SparseArray;

    iget v2, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->lastRequestCode:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->lastRequestCode:I

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p3}, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda1;-><init>(Lcom/adrianodigiovanni/permission/CDVPermission;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 48
    return v1

    .line 51
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$execute$0$com-adrianodigiovanni-permission-CDVPermission(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 6
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .line 23
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 24
    .local v0, "permissions":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .local v1, "message":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 26
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 27
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5, v4}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 26
    nop

    .end local v4    # "permission":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "permissions":Lorg/json/JSONArray;
    .end local v1    # "message":Lorg/json/JSONObject;
    .end local v2    # "n":I
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method synthetic lambda$execute$1$com-adrianodigiovanni-permission-CDVPermission(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .line 42
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adrianodigiovanni/permission/CDVPermission;->toArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "permissions":[Ljava/lang/String;
    iget-object v1, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget v2, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->lastRequestCode:I

    invoke-interface {v1, p0, v2, v0}, Lorg/apache/cordova/CordovaInterface;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->mCallbackContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CallbackContext;

    .line 57
    .local v0, "callbackContext":Lorg/apache/cordova/CallbackContext;
    iget-object v1, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->mCallbackContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 58
    iget-object v1, p0, Lcom/adrianodigiovanni/permission/CDVPermission;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p3, v0}, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;[ILorg/apache/cordova/CallbackContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
