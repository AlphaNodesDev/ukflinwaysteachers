.class public Landroidx/webkit/internal/WebMessagePayloadAdapter;
.super Ljava/lang/Object;
.source "WebMessagePayloadAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;


# instance fields
.field private final mMessageCompat:Landroidx/webkit/WebMessageCompat;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebMessageCompat;)V
    .locals 0
    .param p1, "webMessageCompat"    # Landroidx/webkit/WebMessageCompat;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/webkit/internal/WebMessagePayloadAdapter;->mMessageCompat:Landroidx/webkit/WebMessageCompat;

    .line 34
    return-void
.end method


# virtual methods
.method public getAsArrayBuffer()[B
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePayloadAdapter;->mMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-virtual {v0}, Landroidx/webkit/WebMessageCompat;->getArrayBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePayloadAdapter;->mMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-virtual {v0}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePayloadAdapter;->mMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-virtual {v0}, Landroidx/webkit/WebMessageCompat;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    .line 50
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 48
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
