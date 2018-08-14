// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreBinaryCallback.h"


@implementation RCTCoreBinaryCallback
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
- (void)onCallback:(nullable NSData *)result
             error:(nullable Error *)error {
    if (error)
    {
        self.reject(@"RCTCoreBinaryCallback Error", error.message, nil);
    }


    self.resolve(result);

}
@end
