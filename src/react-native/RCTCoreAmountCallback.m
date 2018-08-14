// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreAmountCallback.h"


@implementation RCTCoreAmountCallback
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge
{
    self = [super init];
    if(self)
    {
        self.resolve = resolve;
        self.reject = reject;
        self.bridge = bridge;
    }
    return self;
}

/**
 * Method triggered when main task complete
 * @params result optional of type T, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable Amount *)result
             error:(nullable Error *)error {
    if (error)
    {
        self.reject(@"RCTCoreAmountCallback Error", error.message, nil);
    }

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreAmount *rctImpl_result = (RCTCoreAmount *)[self.bridge moduleForName:@"CoreAmount"];
    [rctImpl_result.objcImplementations setObject:result forKey:uuid];
    NSDictionary *converted_result = @{@"type" : @"CoreAmount", @"uid" : uuid };

    self.resolve(converted_result);

}
@end
