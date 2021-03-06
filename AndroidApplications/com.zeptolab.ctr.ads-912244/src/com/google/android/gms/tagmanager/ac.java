package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Map;

class ac extends aj {
    private static final String ID;
    private static final String US;
    private static final String UT;
    private static final String UU;
    private static final String UV;

    static {
        ID = a.aj.toString();
        US = b.bt.toString();
        UT = b.dt.toString();
        UU = b.cS.toString();
        UV = b.dB.toString();
    }

    public ac() {
        super(ID, new String[]{US});
    }

    public boolean iy() {
        return true;
    }

    public d.a u(Map map) {
        d.a aVar = (d.a) map.get(US);
        if (aVar == null || aVar == di.ku()) {
            return di.ku();
        }
        String j = di.j(aVar);
        aVar = (d.a) map.get(UU);
        String j2 = aVar == null ? "text" : di.j(aVar);
        aVar = (d.a) map.get(UV);
        String j3 = aVar == null ? "base16" : di.j(aVar);
        aVar = (d.a) map.get(UT);
        int i = (aVar == null || !di.n(aVar).booleanValue()) ? 2 : IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
        try {
            byte[] bytes;
            Object d;
            if ("text".equals(j2)) {
                bytes = j.getBytes();
            } else if ("base16".equals(j2)) {
                bytes = j.aX(j);
            } else if ("base64".equals(j2)) {
                bytes = Base64.decode(j, i);
            } else if ("base64url".equals(j2)) {
                bytes = Base64.decode(j, i | 8);
            } else {
                bh.t("Encode: unknown input format: " + j2);
                return di.ku();
            }
            if ("base16".equals(j3)) {
                d = j.d(bytes);
            } else if ("base64".equals(j3)) {
                d = Base64.encodeToString(bytes, i);
            } else if ("base64url".equals(j3)) {
                d = Base64.encodeToString(bytes, i | 8);
            } else {
                bh.t("Encode: unknown output format: " + j3);
                return di.ku();
            }
            return di.r(d);
        } catch (IllegalArgumentException e) {
            bh.t("Encode: invalid input:");
            return di.ku();
        }
    }
}