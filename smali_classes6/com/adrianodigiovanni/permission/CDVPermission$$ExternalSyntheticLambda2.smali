.class public final synthetic Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;[ILorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;->f$2:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lcom/adrianodigiovanni/permission/CDVPermission$$ExternalSyntheticLambda2;->f$2:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/adrianodigiovanni/permission/CDVPermission;->lambda$onRequestPermissionResult$2([Ljava/lang/String;[ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method
