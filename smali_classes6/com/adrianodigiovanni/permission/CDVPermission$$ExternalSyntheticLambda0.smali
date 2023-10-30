.class public final synthetic Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/adrianodigiovanni/permission/CDVPermission;

.field public final synthetic f$1:Lorg/json/JSONArray;

.field public final synthetic f$2:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lcom/adrianodigiovanni/permission/CDVPermission;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;->f$0:Lcom/adrianodigiovanni/permission/CDVPermission;

    iput-object p2, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;->f$2:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;->f$0:Lcom/adrianodigiovanni/permission/CDVPermission;

    iget-object v1, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda0;->f$2:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2}, Lcom/adrianodigiovanni/permission/CDVPermission;->lambda$execute$0$com-adrianodigiovanni-permission-CDVPermission(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
