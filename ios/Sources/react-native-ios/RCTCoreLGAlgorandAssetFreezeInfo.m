// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import "RCTCoreLGAlgorandAssetFreezeInfo.h"
#import "LGAlgorandAssetFreezeInfo.h"

@implementation RCTCoreLGAlgorandAssetFreezeInfo

//Export module
RCT_EXPORT_MODULE(RCTCoreLGAlgorandAssetFreezeInfo)

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
RCT_REMAP_METHOD(init, initWithAssetId:(nonnull NSString *)assetId
                         frozenAddress:(nonnull NSString *)frozenAddress
                                frozen:(BOOL)frozen withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {


    LGAlgorandAssetFreezeInfo * finalResult = [[LGAlgorandAssetFreezeInfo alloc] initWithAssetId:assetId frozenAddress:frozenAddress frozen:frozen];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAlgorandAssetFreezeInfo *rctImpl = (RCTCoreLGAlgorandAssetFreezeInfo *)[self.bridge moduleForName:@"CoreLGAlgorandAssetFreezeInfo"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGAlgorandAssetFreezeInfo", @"uid" : uuid };
    if (result)
    {
        resolve(result);
    }
}

RCT_REMAP_METHOD(getAssetId, getAssetId:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetFreezeInfo *objcImpl = (LGAlgorandAssetFreezeInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.assetId};
    resolve(result);
}

RCT_REMAP_METHOD(getFrozenAddress, getFrozenAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetFreezeInfo *objcImpl = (LGAlgorandAssetFreezeInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.frozenAddress};
    resolve(result);
}

RCT_REMAP_METHOD(getFrozen, getFrozen:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetFreezeInfo *objcImpl = (LGAlgorandAssetFreezeInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @(objcImpl.frozen)};
    resolve(result);
}

@end
