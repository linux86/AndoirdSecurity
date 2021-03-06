package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

public class n
  implements Parcelable.Creator<DeleteResourceRequest>
{
  static void a(DeleteResourceRequest paramDeleteResourceRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Ir, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public DeleteResourceRequest[] aX(int paramInt)
  {
    return new DeleteResourceRequest[paramInt];
  }
  
  public DeleteResourceRequest ab(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    int i = 0;
    DriveId localDriveId = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localDriveId = (DriveId)a.a(paramParcel, k, DriveId.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new DeleteResourceRequest(i, localDriveId);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */