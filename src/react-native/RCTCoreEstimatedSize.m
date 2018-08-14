// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tuples.djinni

#import "RCTCoreEstimatedSize.h"
#import "EstimatedSize.h"

@implementation RCTCoreEstimatedSize

//Export module
RCT_EXPORT_MODULE(RCTCoreEstimatedSize)

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
RCT_REMAP_METHOD(init, initWithMin:(int32_t)Min
                               Max:(int32_t)Max withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {


    EstimatedSize * finalResult = [[EstimatedSize alloc] initWithMin:Min Max:Max];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreEstimatedSize *rctImpl = (RCTCoreEstimatedSize *)[self.bridge moduleForName:@"CoreEstimatedSize"];
    [rctImpl.objcImplementations setObject:finalResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreEstimatedSize", @"uid" : uuid };
    if(result)
    {
        resolve(result);
    }
}

@end
