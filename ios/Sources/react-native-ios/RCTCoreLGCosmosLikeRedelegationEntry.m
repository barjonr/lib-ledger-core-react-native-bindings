// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "RCTCoreLGCosmosLikeRedelegationEntry.h"


@implementation RCTCoreLGCosmosLikeRedelegationEntry
//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeRedelegationEntry)

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

/** Block height of the begin redelegate request */
RCT_REMAP_METHOD(getCreationHeight,getCreationHeight:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegationEntry::getCreationHeight, first argument should be an instance of LGCosmosLikeRedelegationEntry", nil);
        return;
    }
    LGCosmosLikeRedelegationEntry *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegationEntry::getCreationHeight, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getCreationHeight];

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
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegationEntry::getCreationHeight", nil);
        return;
    }

}

/** Timestamp of the redelegation completion */
RCT_REMAP_METHOD(getCompletionTime,getCompletionTime:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegationEntry::getCompletionTime, first argument should be an instance of LGCosmosLikeRedelegationEntry", nil);
        return;
    }
    LGCosmosLikeRedelegationEntry *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegationEntry::getCompletionTime, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDate * objcResult = [currentInstanceObj getCompletionTime];
    NSISO8601DateFormatter *dateFormatter = [[NSISO8601DateFormatter alloc] init];
    NSString *objcResultDate = [dateFormatter stringFromDate:objcResult];
    NSDictionary *result = @{@"value" : objcResultDate};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegationEntry::getCompletionTime", nil);
        return;
    }

}

/** Balance requested to redelegate */
RCT_REMAP_METHOD(getInitialBalance,getInitialBalance:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegationEntry::getInitialBalance, first argument should be an instance of LGCosmosLikeRedelegationEntry", nil);
        return;
    }
    LGCosmosLikeRedelegationEntry *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegationEntry::getInitialBalance, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getInitialBalance];

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
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegationEntry::getInitialBalance", nil);
        return;
    }

}

/** Current amount being redelegated (i.e. less than initialBalance if slashed) */
RCT_REMAP_METHOD(getBalance,getBalance:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegationEntry::getBalance, first argument should be an instance of LGCosmosLikeRedelegationEntry", nil);
        return;
    }
    LGCosmosLikeRedelegationEntry *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegationEntry::getBalance, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getBalance];

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
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegationEntry::getBalance", nil);
        return;
    }

}
@end
