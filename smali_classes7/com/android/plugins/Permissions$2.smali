.class Lcom/android/plugins/Permissions$2;
.super Ljava/lang/Object;
.source "Permissions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/plugins/Permissions;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/plugins/Permissions;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/plugins/Permissions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/android/plugins/Permissions$2;->this$0:Lcom/android/plugins/Permissions;

    iput-object p2, p0, Lcom/android/plugins/Permissions$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lcom/android/plugins/Permissions$2;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/plugins/Permissions$2;->this$0:Lcom/android/plugins/Permissions;

    iget-object v1, p0, Lcom/android/plugins/Permissions$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/android/plugins/Permissions$2;->val$args:Lorg/json/JSONArray;

    invoke-static {v0, v1, v2}, Lcom/android/plugins/Permissions;->access$100(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v1, "returnObj":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/android/plugins/Permissions$2;->this$0:Lcom/android/plugins/Permissions;

    const-string v3, "error"

    const-string v4, "requestPermission"

    invoke-static {v2, v1, v3, v4}, Lcom/android/plugins/Permissions;->access$200(Lcom/android/plugins/Permissions;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v2, p0, Lcom/android/plugins/Permissions$2;->this$0:Lcom/android/plugins/Permissions;

    const-string v3, "message"

    const-string v4, "Request permission has been denied."

    invoke-static {v2, v1, v3, v4}, Lcom/android/plugins/Permissions;->access$200(Lcom/android/plugins/Permissions;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/android/plugins/Permissions$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 57
    iget-object v2, p0, Lcom/android/plugins/Permissions$2;->this$0:Lcom/android/plugins/Permissions;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/plugins/Permissions;->access$302(Lcom/android/plugins/Permissions;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "returnObj":Lorg/json/JSONObject;
    :goto_0
    return-void
.end method
