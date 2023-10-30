.class public Lcom/android/plugins/Permissions;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Permissions.java"


# static fields
.field private static final ACTION_CHECK_PERMISSION:Ljava/lang/String; = "checkPermission"

.field private static ACTION_MANAGE_OVERLAY_PERMISSION_REQUEST_CODE:I = 0x0

.field private static final ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "requestPermission"

.field private static final ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "requestPermissions"

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_RESULT_PERMISSION:Ljava/lang/String; = "hasPermission"

.field private static final REQUEST_CODE_ENABLE_PERMISSION:I = 0xd889

.field private static TAG:Ljava/lang/String;


# instance fields
.field private permissionsCallback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "Permissions"

    sput-object v0, Lcom/android/plugins/Permissions;->TAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0x155d

    sput v0, Lcom/android/plugins/Permissions;->ACTION_MANAGE_OVERLAY_PERMISSION_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/plugins/Permissions;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "x2"    # Lorg/json/JSONArray;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/plugins/Permissions;->checkPermissionAction(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/plugins/Permissions;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "x2"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/plugins/Permissions;->requestPermissionAction(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/plugins/Permissions;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/plugins/Permissions;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0
    .param p0, "x0"    # Lcom/android/plugins/Permissions;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .line 20
    iput-object p1, p0, Lcom/android/plugins/Permissions;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method private addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 185
    if-nez p3, :cond_0

    .line 186
    :try_start_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 193
    :goto_1
    return-void
.end method

.method private checkPermissionAction(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "permission"    # Lorg/json/JSONArray;

    .line 87
    const-string v0, "message"

    const-string v1, "error"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    nop

    .line 99
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .local v0, "permission0":Ljava/lang/String;
    nop

    .line 107
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v1, "returnObj":Lorg/json/JSONObject;
    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "hasPermission"

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .end local v2    # "context":Landroid/content/Context;
    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2, v0}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :goto_0
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 100
    .end local v0    # "permission0":Ljava/lang/String;
    .end local v1    # "returnObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "ex":Lorg/json/JSONException;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v3, "returnObj":Lorg/json/JSONObject;
    const-string v4, "requestPermission"

    invoke-direct {p0, v3, v1, v4}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check permission has been failed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p1, v3}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 105
    return-void

    .line 88
    .end local v2    # "ex":Lorg/json/JSONException;
    .end local v3    # "returnObj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v2, "returnObj":Lorg/json/JSONObject;
    const-string v3, "checkPermission"

    invoke-direct {p0, v2, v1, v3}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v1, "One time one permission only."

    invoke-direct {p0, v2, v0, v1}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1, v2}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 92
    .end local v2    # "returnObj":Lorg/json/JSONObject;
    nop

    .line 116
    :goto_2
    return-void
.end method

.method private getPermissions(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .param p1, "permissions"    # Lorg/json/JSONArray;

    .line 157
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 158
    .local v0, "stringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v2

    .line 158
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private hasAllPermissions(Lorg/json/JSONArray;)Z
    .locals 1
    .param p1, "permissions"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1}, Lcom/android/plugins/Permissions;->getPermissions(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/plugins/Permissions;->hasAllPermissions([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasAllPermissions([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 174
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 175
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4, v3}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    return v1

    .line 174
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private requestPermissionAction(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "permissions"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 124
    :cond_0
    nop

    .line 128
    invoke-direct {p0, p2}, Lcom/android/plugins/Permissions;->hasAllPermissions(Lorg/json/JSONArray;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v0, "returnObj":Lorg/json/JSONObject;
    const-string v2, "hasPermission"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 132
    .end local v0    # "returnObj":Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/android/plugins/Permissions;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    .line 134
    invoke-direct {p0, p2}, Lcom/android/plugins/Permissions;->getPermissions(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "permissionArray":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    sget-object v1, Lcom/android/plugins/Permissions;->TAG:Ljava/lang/String;

    const-string v2, "Request permission SYSTEM_ALERT_WINDOW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    .line 139
    .local v1, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 144
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    sget-object v3, Lcom/android/plugins/Permissions;->TAG:Ljava/lang/String;

    const-string v4, "Request permission SYSTEM_ALERT_WINDOW start intent because canDrawOverlays=false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 147
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v3, "intent":Landroid/content/Intent;
    sget v4, Lcom/android/plugins/Permissions;->ACTION_MANAGE_OVERLAY_PERMISSION_REQUEST_CODE:I

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    return-void

    .line 152
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    const v2, 0xd889

    invoke-interface {v1, p0, v2, v0}, Lorg/apache/cordova/CordovaInterface;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v0    # "permissionArray":[Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v0, "returnObj":Lorg/json/JSONObject;
    const-string v1, "error"

    const-string v2, "requestPermission"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v1, "message"

    const-string v2, "At least one permission."

    invoke-direct {p0, v0, v1, v2}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 124
    .end local v0    # "returnObj":Lorg/json/JSONObject;
    nop

    .line 154
    :goto_1
    return-void
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

    .line 39
    const-string v0, "checkPermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/android/plugins/Permissions$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/plugins/Permissions$1;-><init>(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    return v1

    .line 46
    :cond_0
    const-string v0, "requestPermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "requestPermissions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/plugins/Permissions;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/android/plugins/Permissions$2;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/plugins/Permissions$2;-><init>(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    return v1
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/plugins/Permissions;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v0, "returnObj":Lorg/json/JSONObject;
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 75
    invoke-direct {p0, p2}, Lcom/android/plugins/Permissions;->hasAllPermissions([Ljava/lang/String;)Z

    move-result v1

    .line 76
    .local v1, "hasAllPermissions":Z
    const-string v2, "hasPermission"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/android/plugins/Permissions;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 78
    .end local v1    # "hasAllPermissions":Z
    goto :goto_0

    .line 79
    :cond_1
    const-string v1, "error"

    const-string v2, "requestPermission"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v1, "message"

    const-string v2, "Unknown error."

    invoke-direct {p0, v0, v1, v2}, Lcom/android/plugins/Permissions;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/android/plugins/Permissions;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 83
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/plugins/Permissions;->permissionsCallback:Lorg/apache/cordova/CallbackContext;

    .line 84
    return-void
.end method
