// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from path_resolver.djinni

#import "RCTCorePathResolver.h"


@implementation RCTCorePathResolver
//Export module
RCT_EXPORT_MODULE(RCTCorePathResolver)

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
 * Resolves the path for a SQLite database file.
 * @param path The path to resolve.
 * @return The resolved path.
 */
RCT_REMAP_METHOD(resolveDatabasePath,resolveDatabasePath:(NSDictionary *)currentInstance withParams:(nonnull NSString *)path withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCorePathResolver::resolveDatabasePath, first argument should be an instance of PathResolverImpl", nil);
    }
    PathResolverImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling PathResolverImpl::resolveDatabasePath, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj resolveDatabasePath:path];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling PathResolverImpl::resolveDatabasePath", nil);
    }

}

/**
 * Resolves the path of a single log file.
 * @param path The path to resolve.
 * @return The resolved path.
 */
RCT_REMAP_METHOD(resolveLogFilePath,resolveLogFilePath:(NSDictionary *)currentInstance withParams:(nonnull NSString *)path withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCorePathResolver::resolveLogFilePath, first argument should be an instance of PathResolverImpl", nil);
    }
    PathResolverImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling PathResolverImpl::resolveLogFilePath, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj resolveLogFilePath:path];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling PathResolverImpl::resolveLogFilePath", nil);
    }

}

/**
 * Resolves the path for a json file.
 * @param path The path to resolve.
 * @return The resolved path.
 */
RCT_REMAP_METHOD(resolvePreferencesPath,resolvePreferencesPath:(NSDictionary *)currentInstance withParams:(nonnull NSString *)path withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCorePathResolver::resolvePreferencesPath, first argument should be an instance of PathResolverImpl", nil);
    }
    PathResolverImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling PathResolverImpl::resolvePreferencesPath, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj resolvePreferencesPath:path];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling PathResolverImpl::resolvePreferencesPath", nil);
    }

}
RCT_REMAP_METHOD(new, newWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    PathResolverImpl *objcResult = [[PathResolverImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    [self.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CorePathResolverImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCorePathResolverImpl::init", nil);
    }
    resolve(result);
}
@end
