// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "RCTCoreLGCosmosLikeMsgSetWithdrawAddress.h"
#import "LGCosmosLikeMsgSetWithdrawAddress.h"

@implementation RCTCoreLGCosmosLikeMsgSetWithdrawAddress

//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeMsgSetWithdrawAddress)

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
RCT_REMAP_METHOD(init, initWithDelegatorAddress:(nonnull NSString *)delegatorAddress
                                withdrawAddress:(nonnull NSString *)withdrawAddress withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {


    LGCosmosLikeMsgSetWithdrawAddress * finalResult = [[LGCosmosLikeMsgSetWithdrawAddress alloc] initWithDelegatorAddress:delegatorAddress withdrawAddress:withdrawAddress];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeMsgSetWithdrawAddress *rctImpl = (RCTCoreLGCosmosLikeMsgSetWithdrawAddress *)[self.bridge moduleForName:@"CoreLGCosmosLikeMsgSetWithdrawAddress"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGCosmosLikeMsgSetWithdrawAddress", @"uid" : uuid };
    if (result)
    {
        resolve(result);
    }
}

RCT_REMAP_METHOD(getDelegatorAddress, getDelegatorAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeMsgSetWithdrawAddress *objcImpl = (LGCosmosLikeMsgSetWithdrawAddress *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.delegatorAddress};
    resolve(result);
}

RCT_REMAP_METHOD(getWithdrawAddress, getWithdrawAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeMsgSetWithdrawAddress *objcImpl = (LGCosmosLikeMsgSetWithdrawAddress *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.withdrawAddress};
    resolve(result);
}

@end