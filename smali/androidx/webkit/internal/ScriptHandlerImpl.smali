.class public Landroidx/webkit/internal/ScriptHandlerImpl;
.super Landroidx/webkit/ScriptHandler;
.source "ScriptHandlerImpl.java"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;


# direct methods
.method private constructor <init>(Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;)V
    .locals 0
    .param p1, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 33
    invoke-direct {p0}, Landroidx/webkit/ScriptHandler;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/webkit/internal/ScriptHandlerImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 35
    return-void
.end method

.method public static toScriptHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/ScriptHandlerImpl;
    .locals 2
    .param p0, "invocationHandler"    # Ljava/lang/reflect/InvocationHandler;

    .line 42
    const-class v0, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 43
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 45
    .local v0, "boundaryInterface":Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;
    new-instance v1, Landroidx/webkit/internal/ScriptHandlerImpl;

    invoke-direct {v1, v0}, Landroidx/webkit/internal/ScriptHandlerImpl;-><init>(Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;)V

    return-object v1
.end method


# virtual methods
.method public remove()V
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/webkit/internal/ScriptHandlerImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;->remove()V

    .line 56
    return-void
.end method
