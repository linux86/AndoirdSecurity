package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

public abstract class gc$a
  extends Binder
  implements gc
{
  public gc$a()
  {
    attachInterface(this, "com.google.android.gms.appstate.internal.IAppStateCallbacks");
  }
  
  public static gc E(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof gc))) {
      return (gc)localIInterface;
    }
    return new gc.a.a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.appstate.internal.IAppStateCallbacks");
      return true;
    case 5001: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
      paramInt1 = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0) {
        localObject1 = DataHolder.CREATOR.x(paramParcel1);
      }
      a(paramInt1, (DataHolder)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 5002: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
      localObject1 = localObject2;
      if (paramParcel1.readInt() != 0) {
        localObject1 = DataHolder.CREATOR.x(paramParcel1);
      }
      a((DataHolder)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 5003: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
      b(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 5004: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
      dO();
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
    L(paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */