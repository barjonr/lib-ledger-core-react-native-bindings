// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from emitter.djinni

#import "RCTCoreEventReceiver.h"


@implementation RCTCoreEventReceiver
//Export module
RCT_EXPORT_MODULE(RCTCoreEventReceiver)

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
 *Method triggered when an event occurs
 *@param event, Event object that triggers this method
 */
RCT_REMAP_METHOD(onEvent,onEvent:(NSDictionary *)currentInstance withParams:(NSDictionary *)event withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreEventReceiver::onEvent, first argument should be an instance of EventReceiverImpl", nil);
    }
    EventReceiverImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling EventReceiverImpl::onEvent, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreEvent *rctParam_event = (RCTCoreEvent *)[self.bridge moduleForName:@"CoreEvent"];
    Event *objcParam_0 = (Event *)[rctParam_event.objcImplementations objectForKey:event[@"uid"]];
    [currentInstanceObj onEvent:objcParam_0];

}
RCT_REMAP_METHOD(new, newWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    EventReceiverImpl *objcResult = [[EventReceiverImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    [self.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreEventReceiverImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreEventReceiverImpl::init", nil);
    }
    resolve(result);
}
@end
