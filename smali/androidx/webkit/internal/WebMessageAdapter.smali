.class public Landroidx/webkit/internal/WebMessageAdapter;
.super Ljava/lang/Object;
.source "WebMessageAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;


# static fields
.field private static final sFeatures:[Ljava/lang/String;


# instance fields
.field private mWebMessageCompat:Landroidx/webkit/WebMessageCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "WEB_MESSAGE_GET_MESSAGE_PAYLOAD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/webkit/internal/WebMessageAdapter;->sFeatures:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/WebMessageCompat;)V
    .locals 0
    .param p1, "webMessage"    # Landroidx/webkit/WebMessageCompat;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/webkit/internal/WebMessageAdapter;->mWebMessageCompat:Landroidx/webkit/WebMessageCompat;

    .line 48
    return-void
.end method

.method public static isMessagePayloadTypeSupportedByWebView(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 94
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_GET_MESSAGE_PAYLOAD:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 96
    invoke-virtual {v1}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 94
    :goto_1
    return v0
.end method

.method private static toWebMessagePortCompats([Ljava/lang/reflect/InvocationHandler;)[Landroidx/webkit/WebMessagePortCompat;
    .locals 4
    .param p0, "ports"    # [Ljava/lang/reflect/InvocationHandler;

    .line 135
    array-length v0, p0

    new-array v0, v0, [Landroidx/webkit/WebMessagePortCompat;

    .line 136
    .local v0, "compatPorts":[Landroidx/webkit/WebMessagePortCompat;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 137
    new-instance v2, Landroidx/webkit/internal/WebMessagePortImpl;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/webkit/internal/WebMessagePortImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    aput-object v2, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "n":I
    :cond_0
    return-object v0
.end method

.method public static webMessageCompatFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;)Landroidx/webkit/WebMessageCompat;
    .locals 5
    .param p0, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 112
    nop

    .line 113
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getPorts()[Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroidx/webkit/internal/WebMessageAdapter;->toWebMessagePortCompats([Ljava/lang/reflect/InvocationHandler;)[Landroidx/webkit/WebMessagePortCompat;

    move-result-object v0

    .line 114
    .local v0, "ports":[Landroidx/webkit/WebMessagePortCompat;
    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_GET_MESSAGE_PAYLOAD:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v1}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-class v1, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    .line 118
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getMessagePayload()Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .line 116
    invoke-static {v1, v2}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;

    .line 119
    .local v1, "payloadInterface":Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;
    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getType()I

    move-result v2

    .line 120
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 127
    const/4 v3, 0x0

    return-object v3

    .line 124
    :pswitch_0
    new-instance v3, Landroidx/webkit/WebMessageCompat;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsArrayBuffer()[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/webkit/WebMessageCompat;-><init>([B[Landroidx/webkit/WebMessagePortCompat;)V

    return-object v3

    .line 122
    :pswitch_1
    new-instance v3, Landroidx/webkit/WebMessageCompat;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/webkit/WebMessageCompat;-><init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V

    return-object v3

    .line 130
    .end local v1    # "payloadInterface":Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;
    .end local v2    # "type":I
    :cond_0
    new-instance v1, Landroidx/webkit/WebMessageCompat;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/webkit/WebMessageCompat;-><init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/webkit/internal/WebMessageAdapter;->mWebMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-virtual {v0}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessagePayload()Ljava/lang/reflect/InvocationHandler;
    .locals 2

    .line 65
    new-instance v0, Landroidx/webkit/internal/WebMessagePayloadAdapter;

    iget-object v1, p0, Landroidx/webkit/internal/WebMessageAdapter;->mWebMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-direct {v0, v1}, Landroidx/webkit/internal/WebMessagePayloadAdapter;-><init>(Landroidx/webkit/WebMessageCompat;)V

    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    return-object v0
.end method

.method public getPorts()[Ljava/lang/reflect/InvocationHandler;
    .locals 4

    .line 72
    iget-object v0, p0, Landroidx/webkit/internal/WebMessageAdapter;->mWebMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-virtual {v0}, Landroidx/webkit/WebMessageCompat;->getPorts()[Landroidx/webkit/WebMessagePortCompat;

    move-result-object v0

    .line 73
    .local v0, "ports":[Landroidx/webkit/WebMessagePortCompat;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/reflect/InvocationHandler;

    .line 76
    .local v1, "invocationHandlers":[Ljava/lang/reflect/InvocationHandler;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 77
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/webkit/WebMessagePortCompat;->getInvocationHandler()Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    aput-object v3, v1, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "n":I
    :cond_1
    return-object v1
.end method

.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Landroidx/webkit/internal/WebMessageAdapter;->sFeatures:[Ljava/lang/String;

    return-object v0
.end method
