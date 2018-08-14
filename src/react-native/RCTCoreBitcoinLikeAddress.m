// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#import "RCTCoreBitcoinLikeAddress.h"


@implementation RCTCoreBitcoinLikeAddress
//Export module
RCT_EXPORT_MODULE(RCTCoreBitcoinLikeAddress)

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
 * Gets the version of the address (P2SH or P2PKH)
 * @return The version of the address
 */
RCT_REMAP_METHOD(getVersion,getVersion:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeAddress::getVersion, first argument should be an instance of BitcoinLikeAddress", nil);
    }
    BitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeAddress::getVersion, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getVersion];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeAddress::getVersion", nil);
    }

}

/**
 * Gets the raw hash160 of the public key
 * @return The 20 bytes of the public key hash160
 */
RCT_REMAP_METHOD(getHash160,getHash160:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeAddress::getHash160, first argument should be an instance of BitcoinLikeAddress", nil);
    }
    BitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeAddress::getHash160, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getHash160];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeAddress::getHash160", nil);
    }

}

/**
 * Gets the network parameters used for serializing the address
 * @return The network parameters of the address
 */
RCT_REMAP_METHOD(getNetworkParameters,getNetworkParameters:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeAddress::getNetworkParameters, first argument should be an instance of BitcoinLikeAddress", nil);
    }
    BitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeAddress::getNetworkParameters, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BitcoinLikeNetworkParameters * objcResult = [currentInstanceObj getNetworkParameters];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreBitcoinLikeNetworkParameters *rctImpl_objcResult = (RCTCoreBitcoinLikeNetworkParameters *)[self.bridge moduleForName:@"CoreBitcoinLikeNetworkParameters"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreBitcoinLikeNetworkParameters", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeAddress::getNetworkParameters", nil);
    }

}

/**
 * Serializes the hash160 into a Base58 encoded address (with checksum)
 * @return The Base58 serialization
 */
RCT_REMAP_METHOD(toBase58,toBase58:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeAddress::toBase58, first argument should be an instance of BitcoinLikeAddress", nil);
    }
    BitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeAddress::toBase58, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj toBase58];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeAddress::toBase58", nil);
    }

}

/**
 * Serializes the hash160 to a payment uri (i.e bitcoin:16UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM)
 * @return A payment uri to this address
 * toPaymentUri(): string;
 * Checks if the given address is a P2SH address
 * @return True if the version byte matches the P2SH byte version of the address network parameters
 */
RCT_REMAP_METHOD(isP2SH,isP2SH:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeAddress::isP2SH, first argument should be an instance of BitcoinLikeAddress", nil);
    }
    BitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeAddress::isP2SH, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj isP2SH];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeAddress::isP2SH", nil);
    }

}

/**
 * Checks if the given address is a P2PKH address
 * @return True if the version byte matches the P2PKH byte version of the address network parameters
 */
RCT_REMAP_METHOD(isP2PKH,isP2PKH:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreBitcoinLikeAddress::isP2PKH, first argument should be an instance of BitcoinLikeAddress", nil);
    }
    BitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling BitcoinLikeAddress::isP2PKH, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj isP2PKH];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling BitcoinLikeAddress::isP2PKH", nil);
    }

}
@end
