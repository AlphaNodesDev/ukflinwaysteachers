.class Lorg/apache/cordova/inappbrowser/InAppChromeClient$1;
.super Landroid/webkit/WebViewClient;
.source "InAppChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/inappbrowser/InAppChromeClient;

.field final synthetic val$inAppWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppChromeClient;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/inappbrowser/InAppChromeClient;

    .line 159
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppChromeClient$1;->this$0:Lorg/apache/cordova/inappbrowser/InAppChromeClient;

    iput-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppChromeClient$1;->val$inAppWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 162
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppChromeClient$1;->val$inAppWebView:Landroid/webkit/WebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppChromeClient$1;->val$inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method
