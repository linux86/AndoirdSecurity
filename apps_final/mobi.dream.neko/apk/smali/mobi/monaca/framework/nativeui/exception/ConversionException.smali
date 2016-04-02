.class public Lmobi/monaca/framework/nativeui/exception/ConversionException;
.super Lmobi/monaca/framework/nativeui/exception/NativeUIException;
.source "ConversionException.java"


# instance fields
.field private keyName:Ljava/lang/String;

.field private targetType:Ljava/lang/String;

.field private userSpecifiedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "userSpecifiedValue"    # Ljava/lang/String;
    .param p4, "targetType"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lmobi/monaca/framework/nativeui/exception/NativeUIException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/exception/ConversionException;->keyName:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lmobi/monaca/framework/nativeui/exception/ConversionException;->userSpecifiedValue:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lmobi/monaca/framework/nativeui/exception/ConversionException;->targetType:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/ConversionException;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->space:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/ConversionException;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->space:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/ConversionException;->userSpecifiedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->exception_conversion:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/ConversionException;->targetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
