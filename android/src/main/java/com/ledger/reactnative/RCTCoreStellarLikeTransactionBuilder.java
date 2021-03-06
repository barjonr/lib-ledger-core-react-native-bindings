// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

package com.ledger.reactnative;

import co.ledger.core.Amount;
import co.ledger.core.BigInt;
import co.ledger.core.Currency;
import co.ledger.core.StellarLikeTransaction;
import co.ledger.core.StellarLikeTransactionBuilder;
import co.ledger.core.StellarLikeTransactionCallback;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableNativeArray;
import com.facebook.react.bridge.ReadableNativeMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;
import java.util.UUID;

@ReactModule(name = "RCTCoreStellarLikeTransactionBuilder")
public class RCTCoreStellarLikeTransactionBuilder extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, StellarLikeTransactionBuilder> javaObjects;
    public Map<String, StellarLikeTransactionBuilder> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreStellarLikeTransactionBuilder(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, StellarLikeTransactionBuilder>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreStellarLikeTransactionBuilder";
    }
    @ReactMethod
    public void release(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            this.javaObjects.remove(uid);
            promise.resolve(0);
        }
        else
        {
            promise.reject("Failed to release instance of RCTCoreStellarLikeTransactionBuilder", "First parameter of RCTCoreStellarLikeTransactionBuilder::release should be an instance of RCTCoreStellarLikeTransactionBuilder");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, StellarLikeTransactionBuilder> elem : this.javaObjects.entrySet())
        {
            result.pushString(elem.getKey());
        }
        promise.resolve(result);
    }
    @ReactMethod
    public void flush(Promise promise)
    {
        this.javaObjects.clear();
        promise.resolve(0);
    }
    @ReactMethod
    public void isNull(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (this.javaObjects.get(uid) == null)
            {
                promise.resolve(true);
                return;
            }
            else
            {
                promise.resolve(false);
                return;
            }
        }
        promise.resolve(true);
    }
    public static byte[] hexStringToByteArray(String hexString)
    {
        int hexStringLength = hexString.length();
        byte[] data = new byte[hexStringLength / 2];
        for (int i = 0; i < hexStringLength; i += 2)
        {
            data[i / 2] = (byte) ((Character.digit(hexString.charAt(i), 16) << 4) + Character.digit(hexString.charAt(i+1), 16));
        }
        return data;
    }
    static final String HEXES = "0123456789ABCDEF";
    public static String byteArrayToHexString( byte [] data)
    {
        if (data == null)
        {
            return null;
        }
        final StringBuilder hexStringBuilder = new StringBuilder( 2 * data.length );
        for ( final byte b : data )
        {
            hexStringBuilder.append(HEXES.charAt((b & 0xF0) >> 4)).append(HEXES.charAt((b & 0x0F)));
        }
        return hexStringBuilder.toString();
    }

    @ReactMethod
    public void addNativePayment(ReadableMap currentInstance, String address, ReadableMap amount, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreAmount rctParam_amount = this.reactContext.getNativeModule(RCTCoreAmount.class);
            Amount javaParam_1 = rctParam_amount.getJavaObjects().get(amount.getString("uid"));
            StellarLikeTransactionBuilder javaResult = currentInstanceObj.addNativePayment(address, javaParam_1);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void addCreateAccount(ReadableMap currentInstance, String address, ReadableMap amount, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreAmount rctParam_amount = this.reactContext.getNativeModule(RCTCoreAmount.class);
            Amount javaParam_1 = rctParam_amount.getJavaObjects().get(amount.getString("uid"));
            StellarLikeTransactionBuilder javaResult = currentInstanceObj.addCreateAccount(address, javaParam_1);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setBaseFee(ReadableMap currentInstance, ReadableMap baseFee, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreAmount rctParam_baseFee = this.reactContext.getNativeModule(RCTCoreAmount.class);
            Amount javaParam_0 = rctParam_baseFee.getJavaObjects().get(baseFee.getString("uid"));
            StellarLikeTransactionBuilder javaResult = currentInstanceObj.setBaseFee(javaParam_0);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setTextMemo(ReadableMap currentInstance, String text, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            StellarLikeTransactionBuilder javaResult = currentInstanceObj.setTextMemo(text);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setNumberMemo(ReadableMap currentInstance, ReadableMap number, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreBigInt rctParam_number = this.reactContext.getNativeModule(RCTCoreBigInt.class);
            BigInt javaParam_0 = rctParam_number.getJavaObjects().get(number.getString("uid"));
            StellarLikeTransactionBuilder javaResult = currentInstanceObj.setNumberMemo(javaParam_0);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setHashMemo(ReadableMap currentInstance, String hash, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(hash);

            StellarLikeTransactionBuilder javaResult = currentInstanceObj.setHashMemo(javaParam_0);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setReturnMemo(ReadableMap currentInstance, String value, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(value);

            StellarLikeTransactionBuilder javaResult = currentInstanceObj.setReturnMemo(javaParam_0);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setSequence(ReadableMap currentInstance, ReadableMap sequence, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreBigInt rctParam_sequence = this.reactContext.getNativeModule(RCTCoreBigInt.class);
            BigInt javaParam_0 = rctParam_sequence.getJavaObjects().get(sequence.getString("uid"));
            StellarLikeTransactionBuilder javaResult = currentInstanceObj.setSequence(javaParam_0);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void build(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            StellarLikeTransactionBuilder currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreStellarLikeTransactionCallback javaParam_0 = RCTCoreStellarLikeTransactionCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.build(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void parseRawTransaction(ReadableMap currency, String rawTransaction, Promise promise) {
        try
        {
            RCTCoreCurrency rctParam_currency = this.reactContext.getNativeModule(RCTCoreCurrency.class);
            Currency javaParam_0 = rctParam_currency.getJavaObjects().get(currency.getString("uid"));
            byte [] javaParam_1 = hexStringToByteArray(rawTransaction);

            StellarLikeTransaction javaResult = StellarLikeTransactionBuilder.parseRawTransaction(javaParam_0, javaParam_1);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransaction rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransaction.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransaction");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void parseSignatureBase(ReadableMap currency, String rawTransaction, Promise promise) {
        try
        {
            RCTCoreCurrency rctParam_currency = this.reactContext.getNativeModule(RCTCoreCurrency.class);
            Currency javaParam_0 = rctParam_currency.getJavaObjects().get(currency.getString("uid"));
            byte [] javaParam_1 = hexStringToByteArray(rawTransaction);

            StellarLikeTransaction javaResult = StellarLikeTransactionBuilder.parseSignatureBase(javaParam_0, javaParam_1);

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreStellarLikeTransaction rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreStellarLikeTransaction.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreStellarLikeTransaction");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
