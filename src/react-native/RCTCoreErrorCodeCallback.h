// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "Error.h"
#import "ErrorCode.h"
#import "ErrorCodeCallbackImpl.h"
#import "RCTCoreError.h"
#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeModule.h>


/**
 *Callback triggered by main completed task,
 *returns optional result of template type T
 */
@interface RCTCoreErrorCodeCallback : NSObject <ErrorCodeCallback>
@property (nonatomic, strong) RCTPromiseResolveBlock resolve;
@property (nonatomic, strong) RCTPromiseRejectBlock reject;
@property (nonatomic, weak) RCTBridge *bridge;
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge;
@end
