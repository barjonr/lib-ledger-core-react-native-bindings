// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "RCTCoreBitcoinLikeOutput.h"


@implementation RCTCoreBitcoinLikeOutput
//Export module
RCT_EXPORT_MODULE(RCTCoreBitcoinLikeOutput)

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
 *Get transaction hash in which output was 'created'
 *@return String, transaction hash containing output
 */
RCT_REMAP_METHOD(getTransactionHash,getTransactionHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeOutput::getTransactionHash, first argument should be an instance of BitcoinLikeOutput", nil);
    }
    BitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeOutput::getTransactionHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getTransactionHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeOutput::getTransactionHash", nil);
    }

}

/**
 *Get index of output in list of all outputs contained in same transaction
 *@return 32 bits integer, index of output
 */
RCT_REMAP_METHOD(getOutputIndex,getOutputIndex:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeOutput::getOutputIndex, first argument should be an instance of BitcoinLikeOutput", nil);
    }
    BitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeOutput::getOutputIndex, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    int32_t objcResult = [currentInstanceObj getOutputIndex];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeOutput::getOutputIndex", nil);
    }

}

/**
 *Get amount of output
 *@return Amount object, amount of output
 */
RCT_REMAP_METHOD(getValue,getValue:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeOutput::getValue, first argument should be an instance of BitcoinLikeOutput", nil);
    }
    BitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeOutput::getValue, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    Amount * objcResult = [currentInstanceObj getValue];

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
        reject(@"impl_call_error", @"Error while calling BitcoinLikeOutput::getValue", nil);
    }

}

/**
 *Get script (witness script) cryptographic puzzle that determines the conditions to spend the output
 *@return in Bytes (variable size depending on type of script P2PKH, P2SH), locking script to spend UTXO
 */
RCT_REMAP_METHOD(getScript,getScript:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeOutput::getScript, first argument should be an instance of BitcoinLikeOutput", nil);
    }
    BitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeOutput::getScript, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getScript];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeOutput::getScript", nil);
    }

}

RCT_REMAP_METHOD(parseScript,parseScript:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeOutput::parseScript, first argument should be an instance of BitcoinLikeOutput", nil);
    }
    BitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeOutput::parseScript, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BitcoinLikeScript * objcResult = [currentInstanceObj parseScript];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreBitcoinLikeScript *rctImpl_objcResult = (RCTCoreBitcoinLikeScript *)[self.bridge moduleForName:@"CoreBitcoinLikeScript"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreBitcoinLikeScript", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeOutput::parseScript", nil);
    }

}

/**
 *Get address that spent the output
 *@return Optional String, address that spent
 */
RCT_REMAP_METHOD(getAddress,getAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeOutput::getAddress, first argument should be an instance of BitcoinLikeOutput", nil);
    }
    BitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeOutput::getAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeOutput::getAddress", nil);
    }

}

RCT_REMAP_METHOD(getDerivationPath,getDerivationPath:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeOutput::getDerivationPath, first argument should be an instance of BitcoinLikeOutput", nil);
    }
    BitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeOutput::getDerivationPath, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    DerivationPath * objcResult = [currentInstanceObj getDerivationPath];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreDerivationPath *rctImpl_objcResult = (RCTCoreDerivationPath *)[self.bridge moduleForName:@"CoreDerivationPath"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreDerivationPath", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeOutput::getDerivationPath", nil);
    }

}
@end
