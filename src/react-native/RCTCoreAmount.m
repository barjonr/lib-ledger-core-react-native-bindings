// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from amount.djinni

#import "RCTCoreAmount.h"


@implementation RCTCoreAmount
//Export module
RCT_EXPORT_MODULE(RCTCoreAmount)

@synthesize bridge = _bridge;

-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImplementations = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}

/**
 *Get amount as a BitInt
 *@return BitInt
 */
RCT_REMAP_METHOD(toBigInt,toBigInt:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::toBigInt, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::toBigInt, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BigInt * objcResult = [currentInstanceObj toBigInt];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreBigInt *rctImpl_objcResult = (RCTCoreBigInt *)[self.bridge moduleForName:@"CoreBigInt"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreBigInt", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::toBigInt", nil);
    }

}

/**
 *Get currency in which amount was computed
 *@return Currency object
 */
RCT_REMAP_METHOD(getCurrency,getCurrency:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::getCurrency, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::getCurrency, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    Currency * objcResult = [currentInstanceObj getCurrency];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreCurrency *rctImpl_objcResult = (RCTCoreCurrency *)[self.bridge moduleForName:@"CoreCurrency"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreCurrency", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::getCurrency", nil);
    }

}

/**
 *Get currency unit in which amount was computed
 *@return CurrencyUnit object
 */
RCT_REMAP_METHOD(getUnit,getUnit:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::getUnit, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::getUnit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    CurrencyUnit * objcResult = [currentInstanceObj getUnit];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreCurrencyUnit *rctImpl_objcResult = (RCTCoreCurrencyUnit *)[self.bridge moduleForName:@"CoreCurrencyUnit"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreCurrencyUnit", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::getUnit", nil);
    }

}

/**
 *Convert amount in another currency unit
 *@param CurrencyUnit object, target currency unit
 *@return Amount object, amount in target currency unit
 */
RCT_REMAP_METHOD(toUnit,toUnit:(NSDictionary *)currentInstance withParams:(NSDictionary *)unit withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::toUnit, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::toUnit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreCurrencyUnit *rctParam_unit = (RCTCoreCurrencyUnit *)[self.bridge moduleForName:@"CoreCurrencyUnit"];
    CurrencyUnit *objcParam_0 = (CurrencyUnit *)[rctParam_unit.objcImplementations objectForKey:unit[@"uid"]];
    Amount * objcResult = [currentInstanceObj toUnit:objcParam_0];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreAmount *rctImpl_objcResult = (RCTCoreAmount *)[self.bridge moduleForName:@"CoreAmount"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreAmount", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::toUnit", nil);
    }

}

/**TODO */
RCT_REMAP_METHOD(toMagnitude,toMagnitude:(NSDictionary *)currentInstance withParams:(int32_t)magnitude withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::toMagnitude, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::toMagnitude, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    Amount * objcResult = [currentInstanceObj toMagnitude:magnitude];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreAmount *rctImpl_objcResult = (RCTCoreAmount *)[self.bridge moduleForName:@"CoreAmount"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreAmount", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::toMagnitude", nil);
    }

}

/**
 *Get amount as string
 *@return string
 */
RCT_REMAP_METHOD(toString,toString:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::toString, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::toString, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj toString];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::toString", nil);
    }

}

/**
 *Get amount as long
 *@reutrn 64 bits integer
 */
RCT_REMAP_METHOD(toLong,toLong:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::toLong, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::toLong, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    int64_t objcResult = [currentInstanceObj toLong];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::toLong", nil);
    }

}

/**
 *Get amount as double
 *@return double
 */
RCT_REMAP_METHOD(toDouble,toDouble:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::toDouble, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::toDouble, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    double objcResult = [currentInstanceObj toDouble];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::toDouble", nil);
    }

}

/**TODO */
RCT_REMAP_METHOD(format,format:(NSDictionary *)currentInstance withParams:(NSDictionary *)locale
                                                                    rules:(nullable NSDictionary *)rules withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreAmount::format, first argument should be an instance of Amount", nil);
    }
    Amount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling Amount::format, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreLocale *rctParam_locale = (RCTCoreLocale *)[self.bridge moduleForName:@"CoreLocale"];
    Locale *objcParam_0 = (Locale *)[rctParam_locale.objcImplementations objectForKey:locale[@"uid"]];
    RCTCoreFormatRules *rctParam_rules = (RCTCoreFormatRules *)[self.bridge moduleForName:@"CoreFormatRules"];
    FormatRules *objcParam_1 = (FormatRules *)[rctParam_rules.objcImplementations objectForKey:rules[@"uid"]];
    NSString * objcResult = [currentInstanceObj format:objcParam_0 rules:objcParam_1];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::format", nil);
    }

}

RCT_REMAP_METHOD(fromHex,fromHexwithParams:(NSDictionary *)currency
                                       hex:(nonnull NSString *)hex withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTCoreCurrency *rctParam_currency = (RCTCoreCurrency *)[self.bridge moduleForName:@"CoreCurrency"];
    Currency *objcParam_0 = (Currency *)[rctParam_currency.objcImplementations objectForKey:currency[@"uid"]];
    Amount * objcResult = [Amount fromHex:objcParam_0 hex:hex];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreAmount *rctImpl_objcResult = (RCTCoreAmount *)[self.bridge moduleForName:@"CoreAmount"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreAmount", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::fromHex", nil);
    }

}

RCT_REMAP_METHOD(fromLong,fromLongwithParams:(NSDictionary *)currency
                                       value:(int64_t)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTCoreCurrency *rctParam_currency = (RCTCoreCurrency *)[self.bridge moduleForName:@"CoreCurrency"];
    Currency *objcParam_0 = (Currency *)[rctParam_currency.objcImplementations objectForKey:currency[@"uid"]];
    Amount * objcResult = [Amount fromLong:objcParam_0 value:value];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreAmount *rctImpl_objcResult = (RCTCoreAmount *)[self.bridge moduleForName:@"CoreAmount"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreAmount", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling Amount::fromLong", nil);
    }

}
@end
