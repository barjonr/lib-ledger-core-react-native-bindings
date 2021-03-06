// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#import "RCTCoreLGStellarLikeTransaction.h"


@implementation RCTCoreLGStellarLikeTransaction
//Export module
RCT_EXPORT_MODULE(RCTCoreLGStellarLikeTransaction)

@synthesize bridge = _bridge;


+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseRelease:currentInstance withResolver: resolve rejecter:reject];
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseLogWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseFlushWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(isNull, isNull:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseIsNull:currentInstance withResolver:resolve rejecter:reject];
}
-(NSData *) hexStringToData: (NSString *)hexString 
{
    NSMutableData *data= [[NSMutableData alloc] init];
    unsigned char byte;
    char byteChars[3] = {'\0','\0','\0'};
    for (int i = 0; i < ([hexString length] / 2); i++)
    {
        byteChars[0] = [hexString characterAtIndex: i*2];
        byteChars[1] = [hexString characterAtIndex: i*2 + 1];
        byte = strtol(byteChars, NULL, 16);
        [data appendBytes:&byte length:1];
    }
    return data;
}
-(NSString *) dataToHexString: (NSData *)data 
{
    const unsigned char *bytes = (const unsigned char *)data.bytes;
    NSMutableString *hex = [NSMutableString new];
    for (NSInteger i = 0; i < data.length; i++)
    {
        [hex appendFormat:@"%02x", bytes[i]];
    }
    return [hex copy];
}

RCT_REMAP_METHOD(toRawTransaction,toRawTransaction:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGStellarLikeTransaction::toRawTransaction, first argument should be an instance of LGStellarLikeTransaction", nil);
        return;
    }
    LGStellarLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGStellarLikeTransaction::toRawTransaction, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj toRawTransaction];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGStellarLikeTransaction::toRawTransaction", nil);
        return;
    }

}

/** Returns the payload which should be signed by the user in order to send the transaction. */
RCT_REMAP_METHOD(toSignatureBase,toSignatureBase:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGStellarLikeTransaction::toSignatureBase, first argument should be an instance of LGStellarLikeTransaction", nil);
        return;
    }
    LGStellarLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGStellarLikeTransaction::toSignatureBase, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj toSignatureBase];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGStellarLikeTransaction::toSignatureBase", nil);
        return;
    }

}

/** Add a new signature to the transaction envelope */
RCT_REMAP_METHOD(putSignature,putSignature:(NSDictionary *)currentInstance withParams:(NSString *)signature
                                                                              address:(NSDictionary *)address withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGStellarLikeTransaction::putSignature, first argument should be an instance of LGStellarLikeTransaction", nil);
        return;
    }
    LGStellarLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGStellarLikeTransaction::putSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:signature];

    RCTCoreLGAddress *rctParam_address = (RCTCoreLGAddress *)[self.bridge moduleForName:@"CoreLGAddress"];
    LGAddress *objcParam_1 = (LGAddress *)[rctParam_address.objcImplementations objectForKey:address[@"uid"]];
    [currentInstanceObj putSignature:objcParam_0 address:objcParam_1];
    resolve(@(YES));

}

/** Returns the author of the transaction */
RCT_REMAP_METHOD(getSourceAccount,getSourceAccount:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGStellarLikeTransaction::getSourceAccount, first argument should be an instance of LGStellarLikeTransaction", nil);
        return;
    }
    LGStellarLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGStellarLikeTransaction::getSourceAccount, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAddress * objcResult = [currentInstanceObj getSourceAccount];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAddress *rctImpl_objcResult = (RCTCoreLGAddress *)[self.bridge moduleForName:@"CoreLGAddress"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAddress", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGStellarLikeTransaction::getSourceAccount", nil);
        return;
    }

}

/** Returns the sequence of the source account used for this transaction */
RCT_REMAP_METHOD(getSourceAccountSequence,getSourceAccountSequence:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGStellarLikeTransaction::getSourceAccountSequence, first argument should be an instance of LGStellarLikeTransaction", nil);
        return;
    }
    LGStellarLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGStellarLikeTransaction::getSourceAccountSequence, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getSourceAccountSequence];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBigInt *rctImpl_objcResult = (RCTCoreLGBigInt *)[self.bridge moduleForName:@"CoreLGBigInt"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGBigInt", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGStellarLikeTransaction::getSourceAccountSequence", nil);
        return;
    }

}

/** Returns the fee paid for this transaction to be validated */
RCT_REMAP_METHOD(getFee,getFee:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGStellarLikeTransaction::getFee, first argument should be an instance of LGStellarLikeTransaction", nil);
        return;
    }
    LGStellarLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGStellarLikeTransaction::getFee, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getFee];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGStellarLikeTransaction::getFee", nil);
        return;
    }

}

/** Returns the transaction memo */
RCT_REMAP_METHOD(getMemo,getMemo:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGStellarLikeTransaction::getMemo, first argument should be an instance of LGStellarLikeTransaction", nil);
        return;
    }
    LGStellarLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGStellarLikeTransaction::getMemo, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGStellarLikeMemo * objcResult = [currentInstanceObj getMemo];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGStellarLikeMemo *rctImpl_objcResult = (RCTCoreLGStellarLikeMemo *)[self.bridge moduleForName:@"CoreLGStellarLikeMemo"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGStellarLikeMemo", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGStellarLikeTransaction::getMemo", nil);
        return;
    }

}
@end
