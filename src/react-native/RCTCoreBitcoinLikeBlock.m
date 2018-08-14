// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "RCTCoreBitcoinLikeBlock.h"


@implementation RCTCoreBitcoinLikeBlock
//Export module
RCT_EXPORT_MODULE(RCTCoreBitcoinLikeBlock)

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
 *Hash of block
 *@return string representing hash of this block
 */
RCT_REMAP_METHOD(getHash,getHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeBlock::getHash, first argument should be an instance of BitcoinLikeBlock", nil);
    }
    BitcoinLikeBlock *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeBlock::getHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeBlock::getHash", nil);
    }

}

/**
 *Height of block in blockchain
 *@return 64 bits integer, height of block
 */
RCT_REMAP_METHOD(getHeight,getHeight:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeBlock::getHeight, first argument should be an instance of BitcoinLikeBlock", nil);
    }
    BitcoinLikeBlock *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeBlock::getHeight, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    int64_t objcResult = [currentInstanceObj getHeight];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeBlock::getHeight", nil);
    }

}

/**
 *Timestamp when block was mined
 *@return Date object, date when block was appended to blockchain
 */
RCT_REMAP_METHOD(getTime,getTime:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeBlock::getTime, first argument should be an instance of BitcoinLikeBlock", nil);
    }
    BitcoinLikeBlock *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeBlock::getTime, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSDate * objcResult = [currentInstanceObj getTime];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeBlock::getTime", nil);
    }

}
@end
