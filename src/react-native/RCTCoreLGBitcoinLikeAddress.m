// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#import "RCTCoreLGBitcoinLikeAddress.h"


@implementation RCTCoreLGBitcoinLikeAddress
//Export module
RCT_EXPORT_MODULE(RCTCoreLGBitcoinLikeAddress)

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
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeAddress::getVersion, first argument should be an instance of LGBitcoinLikeAddress", nil);
    }
    LGBitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeAddress::getVersion, instance of uid %@ not found", currentInstance[@"uid"]];
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
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeAddress::getVersion", nil);
    }

}

/**
 * Gets the raw hash160 of the public key
 * @return The 20 bytes of the public key hash160
 */
RCT_REMAP_METHOD(getHash160,getHash160:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeAddress::getHash160, first argument should be an instance of LGBitcoinLikeAddress", nil);
    }
    LGBitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeAddress::getHash160, instance of uid %@ not found", currentInstance[@"uid"]];
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
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeAddress::getHash160", nil);
    }

}

/**
 * Gets the network parameters used for serializing the address
 * @return The network parameters of the address
 */
RCT_REMAP_METHOD(getNetworkParameters,getNetworkParameters:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeAddress::getNetworkParameters, first argument should be an instance of LGBitcoinLikeAddress", nil);
    }
    LGBitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeAddress::getNetworkParameters, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGBitcoinLikeNetworkParameters * objcResult = [currentInstanceObj getNetworkParameters];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeNetworkParameters *rctImpl_objcResult = (RCTCoreLGBitcoinLikeNetworkParameters *)[self.bridge moduleForName:@"CoreLGBitcoinLikeNetworkParameters"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeNetworkParameters", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeAddress::getNetworkParameters", nil);
    }

}

/**
 * Serializes the hash160 into a Base58 encoded address (with checksum)
 * @return The Base58 serialization
 */
RCT_REMAP_METHOD(toBase58,toBase58:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeAddress::toBase58, first argument should be an instance of LGBitcoinLikeAddress", nil);
    }
    LGBitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeAddress::toBase58, instance of uid %@ not found", currentInstance[@"uid"]];
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
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeAddress::toBase58", nil);
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
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeAddress::isP2SH, first argument should be an instance of LGBitcoinLikeAddress", nil);
    }
    LGBitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeAddress::isP2SH, instance of uid %@ not found", currentInstance[@"uid"]];
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
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeAddress::isP2SH", nil);
    }

}

/**
 * Checks if the given address is a P2PKH address
 * @return True if the version byte matches the P2PKH byte version of the address network parameters
 */
RCT_REMAP_METHOD(isP2PKH,isP2PKH:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeAddress::isP2PKH, first argument should be an instance of LGBitcoinLikeAddress", nil);
    }
    LGBitcoinLikeAddress *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeAddress::isP2PKH, instance of uid %@ not found", currentInstance[@"uid"]];
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
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeAddress::isP2PKH", nil);
    }

}
@end