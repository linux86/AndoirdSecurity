.class Lcom/google/android/gms/internal/jd$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;


# instance fields
.field final synthetic VD:Lcom/google/android/gms/internal/jd$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jd$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jd$2$1;->VD:Lcom/google/android/gms/internal/jd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$2$1;->VD:Lcom/google/android/gms/internal/jd$2;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->cK(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jd$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .locals 2

    const-string v0, "GeofencingImpl"

    const-string v1, "Request ID callback shouldn\'t have been called"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
