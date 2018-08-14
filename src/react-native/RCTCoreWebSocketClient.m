// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from websocket_client.djinni

#import "RCTCoreWebSocketClient.h"


@implementation RCTCoreWebSocketClient
//Export module
RCT_EXPORT_MODULE(RCTCoreWebSocketClient)

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

RCT_REMAP_METHOD(connect,connect:(NSDictionary *)currentInstance withParams:(nonnull NSString *)url
                                                                 connection:(NSDictionary *)connection withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWebSocketClient::connect, first argument should be an instance of WebSocketClientImpl", nil);
    }
    WebSocketClientImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WebSocketClientImpl::connect, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreWebSocketConnection *rctParam_connection = (RCTCoreWebSocketConnection *)[self.bridge moduleForName:@"CoreWebSocketConnection"];
    WebSocketConnection *objcParam_1 = (WebSocketConnection *)[rctParam_connection.objcImplementations objectForKey:connection[@"uid"]];
    [currentInstanceObj connect:url connection:objcParam_1];

}

RCT_REMAP_METHOD(send,send:(NSDictionary *)currentInstance withParams:(NSDictionary *)connection
                                                                 data:(nonnull NSString *)data withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWebSocketClient::send, first argument should be an instance of WebSocketClientImpl", nil);
    }
    WebSocketClientImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WebSocketClientImpl::send, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreWebSocketConnection *rctParam_connection = (RCTCoreWebSocketConnection *)[self.bridge moduleForName:@"CoreWebSocketConnection"];
    WebSocketConnection *objcParam_0 = (WebSocketConnection *)[rctParam_connection.objcImplementations objectForKey:connection[@"uid"]];
    [currentInstanceObj send:objcParam_0 data:data];

}

RCT_REMAP_METHOD(disconnect,disconnect:(NSDictionary *)currentInstance withParams:(NSDictionary *)connection withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWebSocketClient::disconnect, first argument should be an instance of WebSocketClientImpl", nil);
    }
    WebSocketClientImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WebSocketClientImpl::disconnect, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreWebSocketConnection *rctParam_connection = (RCTCoreWebSocketConnection *)[self.bridge moduleForName:@"CoreWebSocketConnection"];
    WebSocketConnection *objcParam_0 = (WebSocketConnection *)[rctParam_connection.objcImplementations objectForKey:connection[@"uid"]];
    [currentInstanceObj disconnect:objcParam_0];

}
RCT_REMAP_METHOD(new, newWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    WebSocketClientImpl *objcResult = [[WebSocketClientImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    [self.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreWebSocketClientImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWebSocketClientImpl::init", nil);
    }
    resolve(result);
}
@end
