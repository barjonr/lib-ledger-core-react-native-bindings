// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

#import "RCTCoreLGPreferencesBackend.h"


@implementation RCTCoreLGPreferencesBackend
//Export module
RCT_EXPORT_MODULE(RCTCoreLGPreferencesBackend)

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

/**
 * Gets the value associated to the given key.
 * @param key The data key.
 * @return The value associated to the key if it exists, an empty option otherwise.
 */
RCT_REMAP_METHOD(get,get:(NSDictionary *)currentInstance withParams:(NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesBackend::get, first argument should be an instance of LGPreferencesBackend", nil);
        return;
    }
    LGPreferencesBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesBackend::get, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:key];

    NSString * objcResult = [currentInstanceObj get:objcParam_0];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesBackend::get", nil);
        return;
    }

}

/**
 * Commit a change.
 * @param changes The list of changes to commit.
 * @return false if unsuccessful (might happen if the underlying DB was destroyed).
 */
RCT_REMAP_METHOD(commit,commit:(NSDictionary *)currentInstance withParams:(NSArray <NSDictionary *> *)changes withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesBackend::commit, first argument should be an instance of LGPreferencesBackend", nil);
        return;
    }
    LGPreferencesBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesBackend::commit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSMutableArray *objcParam_0 = [[NSMutableArray alloc] init];

    for (id changes_elem in changes)
    {
        RCTCoreLGPreferencesChange *rctParam_changes_elem = (RCTCoreLGPreferencesChange *)[self.bridge moduleForName:@"CoreLGPreferencesChange"];
        LGPreferencesChange *objcParam_0_elem = (LGPreferencesChange *)[rctParam_changes_elem.objcImplementations objectForKey:changes_elem[@"uid"]];
        [objcParam_0 addObject:objcParam_0_elem];

    }
    BOOL objcResult = [currentInstanceObj commit:objcParam_0];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesBackend::commit", nil);
        return;
    }

}

/**
 * Turn encryption on for all future uses.
 * This method will set encryption on for all future values that will be persisted.
 * If this function is called on a plaintext storage (i.e. first encryption for
 * instance), it will also encrypt all data already present.
 * @param rng Random number generator used to generate the encryption salt.
 * @param password The new password.
 */
RCT_REMAP_METHOD(setEncryption,setEncryption:(NSDictionary *)currentInstance withParams:(NSDictionary *)rng
                                                                               password:(nonnull NSString *)password withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesBackend::setEncryption, first argument should be an instance of LGPreferencesBackend", nil);
        return;
    }
    LGPreferencesBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesBackend::setEncryption, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGRandomNumberGenerator *rctParam_rng = (RCTCoreLGRandomNumberGenerator *)[self.bridge moduleForName:@"CoreLGRandomNumberGenerator"];
    id<LGRandomNumberGenerator>objcParam_0 = (id<LGRandomNumberGenerator>)[rctParam_rng.objcImplementations objectForKey:rng[@"uid"]];
    LGRandomNumberGeneratorImpl *objcParam_0_objc = (LGRandomNumberGeneratorImpl *)objcParam_0;
    if (objcParam_0_objc)
    {
        objcParam_0_objc.resolve = resolve;
        objcParam_0_objc.reject = reject;
    }
    [currentInstanceObj setEncryption:objcParam_0 password:password];

}

/**
 * Turn off encryption by disabling the use of the internal cipher. Data is left
 * untouched.
 * This method is suitable when you want to get back raw, encrypted data. If you want
 * to disable encryption in order to read clear data back without password, consider
 * the resetEncryption method instead.
 */
RCT_REMAP_METHOD(unsetEncryption,unsetEncryption:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesBackend::unsetEncryption, first argument should be an instance of LGPreferencesBackend", nil);
        return;
    }
    LGPreferencesBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesBackend::unsetEncryption, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj unsetEncryption];
    resolve(@(YES));

}

/**
 * Reset the encryption with a new password by first decrypting on the
 * fly with the old password the data present.
 * If the new password is an empty string, after this method is called, the database
 * is completely unciphered and no password is required to read from it.
 * @return true if the reset occurred correctly, false otherwise (e.g. trying to change
 * password with an old password but without a proper salt already persisted).
 */
RCT_REMAP_METHOD(resetEncryption,resetEncryption:(NSDictionary *)currentInstance withParams:(NSDictionary *)rng
                                                                                oldPassword:(nonnull NSString *)oldPassword
                                                                                newPassword:(nonnull NSString *)newPassword withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesBackend::resetEncryption, first argument should be an instance of LGPreferencesBackend", nil);
        return;
    }
    LGPreferencesBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesBackend::resetEncryption, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGRandomNumberGenerator *rctParam_rng = (RCTCoreLGRandomNumberGenerator *)[self.bridge moduleForName:@"CoreLGRandomNumberGenerator"];
    id<LGRandomNumberGenerator>objcParam_0 = (id<LGRandomNumberGenerator>)[rctParam_rng.objcImplementations objectForKey:rng[@"uid"]];
    BOOL objcResult = [currentInstanceObj resetEncryption:objcParam_0 oldPassword:oldPassword newPassword:newPassword];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesBackend::resetEncryption", nil);
        return;
    }

}

/**
 * Get encryption salt, if any.
 * @return the encryption salt if it exists, an empty string otherwise.
 */
RCT_REMAP_METHOD(getEncryptionSalt,getEncryptionSalt:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesBackend::getEncryptionSalt, first argument should be an instance of LGPreferencesBackend", nil);
        return;
    }
    LGPreferencesBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesBackend::getEncryptionSalt, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getEncryptionSalt];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGPreferencesBackend::getEncryptionSalt", nil);
        return;
    }

}

/** Clear all preferences. */
RCT_REMAP_METHOD(clear,clear:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGPreferencesBackend::clear, first argument should be an instance of LGPreferencesBackend", nil);
        return;
    }
    LGPreferencesBackend *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGPreferencesBackend::clear, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj clear];
    resolve(@(YES));

}
@end
