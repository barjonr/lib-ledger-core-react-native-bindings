// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http_client.djinni

#import "RCTCoreHttpRequest.h"


@implementation RCTCoreHttpRequest
//Export module
RCT_EXPORT_MODULE(RCTCoreHttpRequest)

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
 *Get method of request
 *@return HttpMethod enum entry
 */
RCT_REMAP_METHOD(getMethod,getMethod:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreHttpRequest::getMethod, first argument should be an instance of HttpRequest", nil);
    }
    HttpRequest *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling HttpRequest::getMethod, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    HttpMethod objcResult = [currentInstanceObj getMethod];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling HttpRequest::getMethod", nil);
    }

}

/**
 *Get headers set in the request
 *@return Map with key and value of type string
 */
RCT_REMAP_METHOD(getHeaders,getHeaders:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreHttpRequest::getHeaders, first argument should be an instance of HttpRequest", nil);
    }
    HttpRequest *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling HttpRequest::getHeaders, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSDictionary<NSString *, NSString *> * objcResult = [currentInstanceObj getHeaders];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling HttpRequest::getHeaders", nil);
    }

}

/**
 *Get body of request
 *@return binary
 */
RCT_REMAP_METHOD(getBody,getBody:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreHttpRequest::getBody, first argument should be an instance of HttpRequest", nil);
    }
    HttpRequest *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling HttpRequest::getBody, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getBody];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling HttpRequest::getBody", nil);
    }

}

/**
 *Get Url of request
 *@return string
 */
RCT_REMAP_METHOD(getUrl,getUrl:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreHttpRequest::getUrl, first argument should be an instance of HttpRequest", nil);
    }
    HttpRequest *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling HttpRequest::getUrl, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getUrl];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling HttpRequest::getUrl", nil);
    }

}

/**
 *Method called when reauest is completed
 *@param response, Optional HttpUrlConnection object, response of request if succeed
 *@param error, optional Error structure, error returned in case of request failure
 */
RCT_REMAP_METHOD(complete,complete:(NSDictionary *)currentInstance withParams:(nullable NSDictionary *)response
                                                                        error:(nullable NSDictionary *)error withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreHttpRequest::complete, first argument should be an instance of HttpRequest", nil);
    }
    HttpRequest *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling HttpRequest::complete, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreHttpUrlConnection *rctParam_response = (RCTCoreHttpUrlConnection *)[self.bridge moduleForName:@"CoreHttpUrlConnection"];
    id<HttpUrlConnection>objcParam_0 = (id<HttpUrlConnection>)[rctParam_response.objcImplementations objectForKey:response[@"uid"]];
    RCTCoreError *rctParam_error = (RCTCoreError *)[self.bridge moduleForName:@"CoreError"];
    Error *objcParam_1 = (Error *)[rctParam_error.objcImplementations objectForKey:error[@"uid"]];
    [currentInstanceObj complete:objcParam_0 error:objcParam_1];

}
@end
