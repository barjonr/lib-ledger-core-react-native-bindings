// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_script.djinni

#import "RCTCoreBitcoinLikeScriptChunk.h"


@implementation RCTCoreBitcoinLikeScriptChunk
//Export module
RCT_EXPORT_MODULE(RCTCoreBitcoinLikeScriptChunk)

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

RCT_REMAP_METHOD(isOperator,isOperator:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeScriptChunk::isOperator, first argument should be an instance of BitcoinLikeScriptChunk", nil);
    }
    BitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeScriptChunk::isOperator, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj isOperator];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeScriptChunk::isOperator", nil);
    }

}

RCT_REMAP_METHOD(isPushedData,isPushedData:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeScriptChunk::isPushedData, first argument should be an instance of BitcoinLikeScriptChunk", nil);
    }
    BitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeScriptChunk::isPushedData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj isPushedData];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeScriptChunk::isPushedData", nil);
    }

}

RCT_REMAP_METHOD(getOperator,getOperator:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeScriptChunk::getOperator, first argument should be an instance of BitcoinLikeScriptChunk", nil);
    }
    BitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeScriptChunk::getOperator, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BitcoinLikeOperator * objcResult = [currentInstanceObj getOperator];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreBitcoinLikeOperator *rctImpl_objcResult = (RCTCoreBitcoinLikeOperator *)[self.bridge moduleForName:@"CoreBitcoinLikeOperator"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreBitcoinLikeOperator", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeScriptChunk::getOperator", nil);
    }

}

RCT_REMAP_METHOD(getPushedData,getPushedData:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeScriptChunk::getPushedData, first argument should be an instance of BitcoinLikeScriptChunk", nil);
    }
    BitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeScriptChunk::getPushedData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getPushedData];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeScriptChunk::getPushedData", nil);
    }

}

RCT_REMAP_METHOD(next,next:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeScriptChunk::next, first argument should be an instance of BitcoinLikeScriptChunk", nil);
    }
    BitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeScriptChunk::next, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BitcoinLikeScriptChunk * objcResult = [currentInstanceObj next];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreBitcoinLikeScriptChunk *rctImpl_objcResult = (RCTCoreBitcoinLikeScriptChunk *)[self.bridge moduleForName:@"CoreBitcoinLikeScriptChunk"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreBitcoinLikeScriptChunk", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeScriptChunk::next", nil);
    }

}

RCT_REMAP_METHOD(hasNext,hasNext:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeScriptChunk::hasNext, first argument should be an instance of BitcoinLikeScriptChunk", nil);
    }
    BitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeScriptChunk::hasNext, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj hasNext];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeScriptChunk::hasNext", nil);
    }

}
@end
