// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

package com.ledger.reactnative;

import co.ledger.core.AlgorandParticipationInfo;
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

@ReactModule(name = "RCTCoreAlgorandParticipationInfo")
public class RCTCoreAlgorandParticipationInfo extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, AlgorandParticipationInfo> javaObjects;
    public Map<String, AlgorandParticipationInfo> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreAlgorandParticipationInfo(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, AlgorandParticipationInfo>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreAlgorandParticipationInfo";
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
            promise.reject("Failed to release instance of RCTCoreAlgorandParticipationInfo", "First parameter of RCTCoreAlgorandParticipationInfo::release should be an instance of RCTCoreAlgorandParticipationInfo");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, AlgorandParticipationInfo> elem : this.javaObjects.entrySet())
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

    @ReactMethod
    public void init(String rootPublicKey, String vrfPublicKey, String voteKeyDilution, String voteFirstRound, String voteLastRound, Promise promise) {
        AlgorandParticipationInfo javaResult = new AlgorandParticipationInfo(rootPublicKey, vrfPublicKey, voteKeyDilution, voteFirstRound, voteLastRound);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreAlgorandParticipationInfo");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void getRootPublicKey(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            AlgorandParticipationInfo javaObj = this.javaObjects.get(uid);
            String result = javaObj.getRootPublicKey();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreAlgorandParticipationInfo::getRootPublicKey", "First parameter of RCTCoreAlgorandParticipationInfo::getRootPublicKey should be an instance of RCTCoreAlgorandParticipationInfo");
        }
    }

    @ReactMethod
    public void getVrfPublicKey(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            AlgorandParticipationInfo javaObj = this.javaObjects.get(uid);
            String result = javaObj.getVrfPublicKey();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreAlgorandParticipationInfo::getVrfPublicKey", "First parameter of RCTCoreAlgorandParticipationInfo::getVrfPublicKey should be an instance of RCTCoreAlgorandParticipationInfo");
        }
    }

    @ReactMethod
    public void getVoteKeyDilution(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            AlgorandParticipationInfo javaObj = this.javaObjects.get(uid);
            String result = javaObj.getVoteKeyDilution();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreAlgorandParticipationInfo::getVoteKeyDilution", "First parameter of RCTCoreAlgorandParticipationInfo::getVoteKeyDilution should be an instance of RCTCoreAlgorandParticipationInfo");
        }
    }

    @ReactMethod
    public void getVoteFirstRound(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            AlgorandParticipationInfo javaObj = this.javaObjects.get(uid);
            String result = javaObj.getVoteFirstRound();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreAlgorandParticipationInfo::getVoteFirstRound", "First parameter of RCTCoreAlgorandParticipationInfo::getVoteFirstRound should be an instance of RCTCoreAlgorandParticipationInfo");
        }
    }

    @ReactMethod
    public void getVoteLastRound(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            AlgorandParticipationInfo javaObj = this.javaObjects.get(uid);
            String result = javaObj.getVoteLastRound();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreAlgorandParticipationInfo::getVoteLastRound", "First parameter of RCTCoreAlgorandParticipationInfo::getVoteLastRound should be an instance of RCTCoreAlgorandParticipationInfo");
        }
    }

}