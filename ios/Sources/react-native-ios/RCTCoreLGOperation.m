// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "RCTCoreLGOperation.h"


@implementation RCTCoreLGOperation
//Export module
RCT_EXPORT_MODULE(RCTCoreLGOperation)

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

/**
 * Get id's operation.
 * @return string
 */
RCT_REMAP_METHOD(getUid,getUid:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getUid, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getUid, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getUid];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getUid", nil);
        return;
    }

}

/**
 * Get account's index in user's wallet.
 * @return 32-bit integer
 */
RCT_REMAP_METHOD(getAccountIndex,getAccountIndex:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getAccountIndex, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getAccountIndex, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getAccountIndex];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getAccountIndex", nil);
        return;
    }

}

/**
 * Get type of operation.
 * @return OperationType object (for more details refer to OperationType)
 */
RCT_REMAP_METHOD(getOperationType,getOperationType:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getOperationType, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getOperationType, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGOperationType objcResult = [currentInstanceObj getOperationType];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getOperationType", nil);
        return;
    }

}

/**
 * Return date on which operation was issued.
 * @return date object
 */
RCT_REMAP_METHOD(getDate,getDate:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getDate, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getDate, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDate * objcResult = [currentInstanceObj getDate];
    NSISO8601DateFormatter *dateFormatter = [[NSISO8601DateFormatter alloc] init];
    NSString *objcResultDate = [dateFormatter stringFromDate:objcResult];
    NSDictionary *result = @{@"value" : objcResultDate};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getDate", nil);
        return;
    }

}

/**
 * Get senders of operation.
 * @return List of string, list of all senders
 */
RCT_REMAP_METHOD(getSenders,getSenders:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getSenders, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getSenders, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSArray<NSString *> * objcResult = [currentInstanceObj getSenders];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getSenders", nil);
        return;
    }

}

/**
 * Get recipients of operation.
 * @return List of string, list of all recipients
 */
RCT_REMAP_METHOD(getRecipients,getRecipients:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getRecipients, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getRecipients, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSArray<NSString *> * objcResult = [currentInstanceObj getRecipients];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getRecipients", nil);
        return;
    }

}

/**
 * Get amount of operation.
 * @return Amount object
 */
RCT_REMAP_METHOD(getAmount,getAmount:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getAmount, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getAmount, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getAmount];

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
        reject(@"impl_call_error", @"Error while calling LGOperation::getAmount", nil);
        return;
    }

}

/**
 * Get fees of operation.
 * @return Optional Amount object
 */
RCT_REMAP_METHOD(getFees,getFees:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getFees, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getFees, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getFees];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    if (objcResult)
    {
        NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
        [rctImpl_objcResult baseSetObject:objcResult_array];
    }
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getFees", nil);
        return;
    }

}

/**
 * Get preferences of operation.
 * @return Prefences object
 */
RCT_REMAP_METHOD(getPreferences,getPreferences:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getPreferences, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getPreferences, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGPreferences * objcResult = [currentInstanceObj getPreferences];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGPreferences *rctImpl_objcResult = (RCTCoreLGPreferences *)[self.bridge moduleForName:@"CoreLGPreferences"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGPreferences", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getPreferences", nil);
        return;
    }

}

/**
 * Get trust indicator of operation.
 * @return TrustIndicator object
 */
RCT_REMAP_METHOD(getTrust,getTrust:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getTrust, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getTrust, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGTrustIndicator * objcResult = [currentInstanceObj getTrust];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGTrustIndicator *rctImpl_objcResult = (RCTCoreLGTrustIndicator *)[self.bridge moduleForName:@"CoreLGTrustIndicator"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGTrustIndicator", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getTrust", nil);
        return;
    }

}

/**
 * Get block height on which operation was included.
 * @return Optional 64-bit integer, height of block in which operation was validated
 */
RCT_REMAP_METHOD(getBlockHeight,getBlockHeight:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getBlockHeight, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getBlockHeight, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSNumber * objcResult = [currentInstanceObj getBlockHeight];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getBlockHeight", nil);
        return;
    }

}

/**
 * Convert operation as Bitcoin operation.
 * @return BitcoinLikeOperation object
 */
RCT_REMAP_METHOD(asBitcoinLikeOperation,asBitcoinLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::asBitcoinLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::asBitcoinLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBitcoinLikeOperation * objcResult = [currentInstanceObj asBitcoinLikeOperation];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeOperation *rctImpl_objcResult = (RCTCoreLGBitcoinLikeOperation *)[self.bridge moduleForName:@"CoreLGBitcoinLikeOperation"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeOperation", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::asBitcoinLikeOperation", nil);
        return;
    }

}

/**
 * Convert operation as Ethereum operation.
 * @return EthereumLikeOperation object
 */
RCT_REMAP_METHOD(asEthereumLikeOperation,asEthereumLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::asEthereumLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::asEthereumLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGEthereumLikeOperation * objcResult = [currentInstanceObj asEthereumLikeOperation];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGEthereumLikeOperation *rctImpl_objcResult = (RCTCoreLGEthereumLikeOperation *)[self.bridge moduleForName:@"CoreLGEthereumLikeOperation"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGEthereumLikeOperation", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::asEthereumLikeOperation", nil);
        return;
    }

}

/**
 *Convert operation as Ripple operation
 *@return RippleLikeOperation object
 */
RCT_REMAP_METHOD(asRippleLikeOperation,asRippleLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::asRippleLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::asRippleLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGRippleLikeOperation * objcResult = [currentInstanceObj asRippleLikeOperation];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeOperation *rctImpl_objcResult = (RCTCoreLGRippleLikeOperation *)[self.bridge moduleForName:@"CoreLGRippleLikeOperation"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeOperation", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::asRippleLikeOperation", nil);
        return;
    }

}

/**
 *Convert operation as Tezos operation
 *@return TezosLikeOperation object
 */
RCT_REMAP_METHOD(asTezosLikeOperation,asTezosLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::asTezosLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::asTezosLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGTezosLikeOperation * objcResult = [currentInstanceObj asTezosLikeOperation];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGTezosLikeOperation *rctImpl_objcResult = (RCTCoreLGTezosLikeOperation *)[self.bridge moduleForName:@"CoreLGTezosLikeOperation"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGTezosLikeOperation", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::asTezosLikeOperation", nil);
        return;
    }

}

/** Same as isInstanceOfBitcoinLikeOperation for bitcoin. */
RCT_REMAP_METHOD(isInstanceOfBitcoinLikeOperation,isInstanceOfBitcoinLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::isInstanceOfBitcoinLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::isInstanceOfBitcoinLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isInstanceOfBitcoinLikeOperation];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::isInstanceOfBitcoinLikeOperation", nil);
        return;
    }

}

/** Same as isInstanceOfEthereumLikeOperation for ethereum. */
RCT_REMAP_METHOD(isInstanceOfEthereumLikeOperation,isInstanceOfEthereumLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::isInstanceOfEthereumLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::isInstanceOfEthereumLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isInstanceOfEthereumLikeOperation];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::isInstanceOfEthereumLikeOperation", nil);
        return;
    }

}

/** Same as isInstanceOfRippleLikeOperation for ripple. */
RCT_REMAP_METHOD(isInstanceOfRippleLikeOperation,isInstanceOfRippleLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::isInstanceOfRippleLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::isInstanceOfRippleLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isInstanceOfRippleLikeOperation];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::isInstanceOfRippleLikeOperation", nil);
        return;
    }

}

/** Same as isInstanceOfTezosLikeOperation for tezos. */
RCT_REMAP_METHOD(isInstanceOfTezosLikeOperation,isInstanceOfTezosLikeOperation:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::isInstanceOfTezosLikeOperation, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::isInstanceOfTezosLikeOperation, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isInstanceOfTezosLikeOperation];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::isInstanceOfTezosLikeOperation", nil);
        return;
    }

}

/**
 * Tells if the operation is complete.
 * @return boolean
 */
RCT_REMAP_METHOD(isComplete,isComplete:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::isComplete, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::isComplete, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isComplete];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::isComplete", nil);
        return;
    }

}

/**
 * Get type of wallet from which operation was issued.
 * @return WalletType object
 */
RCT_REMAP_METHOD(getWalletType,getWalletType:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getWalletType, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getWalletType, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGWalletType objcResult = [currentInstanceObj getWalletType];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getWalletType", nil);
        return;
    }

}

/** Get the currency this operation is about. */
RCT_REMAP_METHOD(getCurrency,getCurrency:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGOperation::getCurrency, first argument should be an instance of LGOperation", nil);
        return;
    }
    LGOperation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGOperation::getCurrency, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGCurrency * objcResult = [currentInstanceObj getCurrency];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCurrency *rctImpl_objcResult = (RCTCoreLGCurrency *)[self.bridge moduleForName:@"CoreLGCurrency"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGCurrency", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGOperation::getCurrency", nil);
        return;
    }

}
@end
