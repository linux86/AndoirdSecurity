.class Lcom/google/android/gms/maps/GoogleMap$6;
.super Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$a;


# instance fields
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Ze:Lcom/google/android/gms/maps/LocationSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/LocationSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$6;->YZ:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$6;->Ze:Lcom/google/android/gms/maps/LocationSource;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$a;-><init>()V

    return-void
.end method


# virtual methods
.method public activate(Lcom/google/android/gms/maps/internal/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$6;->Ze:Lcom/google/android/gms/maps/LocationSource;

    new-instance v1, Lcom/google/android/gms/maps/GoogleMap$6$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/GoogleMap$6$1;-><init>(Lcom/google/android/gms/maps/GoogleMap$6;Lcom/google/android/gms/maps/internal/h;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/LocationSource;->activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$6;->Ze:Lcom/google/android/gms/maps/LocationSource;

    invoke-interface {v0}, Lcom/google/android/gms/maps/LocationSource;->deactivate()V

    return-void
.end method
