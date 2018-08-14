// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet_pool.djinni

#import "RCTCoreWalletPool.h"


@implementation RCTCoreWalletPool
//Export module
RCT_EXPORT_MODULE(RCTCoreWalletPool)

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
 *Create a new instance of WalletPool object
 *@param name, string, name of the wallet pool
 *@param password, optional string, password to lock wallet pool
 *@param http, HttpClient object, http client used for all calls made by wallet pool (and aggregated wallets)
 *@param webSocketClient, WebSocketClient object, socket through which wallet pool observe and get notified (explorer, DBs ...)
 *@param pathResolver, PathResolver Object, resolve paths to logs, databases, preferences ...
 *@param logPrinter, LogPrinter object, used to dump/log for debug purpose
 *@param dispatcher, ThreadDispatcher object, responsable of dispatching task through available threads
 *@param rng, RandomNumberGenerator object, needed for generating random numbers (for seeds, salts ...)
 *@param backend, DatabseBackend object, DB in which wallet pool store all required infos (created wallets, their options, their accounts ...)
 *@param configuration, DynamicObject object, desired configuration for this wallet pool
 *@return WalletPool object, instance of WalletPool
 */
RCT_REMAP_METHOD(newInstance,newInstancewithParams:(nonnull NSString *)name
                                          password:(nullable NSString *)password
                                        httpClient:(NSDictionary *)httpClient
                                   webSocketClient:(NSDictionary *)webSocketClient
                                      pathResolver:(NSDictionary *)pathResolver
                                        logPrinter:(NSDictionary *)logPrinter
                                        dispatcher:(NSDictionary *)dispatcher
                                               rng:(NSDictionary *)rng
                                           backend:(NSDictionary *)backend
                                     configuration:(NSDictionary *)configuration withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTCoreHttpClient *rctParam_httpClient = (RCTCoreHttpClient *)[self.bridge moduleForName:@"CoreHttpClient"];
    id<HttpClient>objcParam_2 = (id<HttpClient>)[rctParam_httpClient.objcImplementations objectForKey:httpClient[@"uid"]];
    RCTCoreWebSocketClient *rctParam_webSocketClient = (RCTCoreWebSocketClient *)[self.bridge moduleForName:@"CoreWebSocketClient"];
    id<WebSocketClient>objcParam_3 = (id<WebSocketClient>)[rctParam_webSocketClient.objcImplementations objectForKey:webSocketClient[@"uid"]];
    RCTCorePathResolver *rctParam_pathResolver = (RCTCorePathResolver *)[self.bridge moduleForName:@"CorePathResolver"];
    id<PathResolver>objcParam_4 = (id<PathResolver>)[rctParam_pathResolver.objcImplementations objectForKey:pathResolver[@"uid"]];
    RCTCoreLogPrinter *rctParam_logPrinter = (RCTCoreLogPrinter *)[self.bridge moduleForName:@"CoreLogPrinter"];
    id<LogPrinter>objcParam_5 = (id<LogPrinter>)[rctParam_logPrinter.objcImplementations objectForKey:logPrinter[@"uid"]];
    RCTCoreThreadDispatcher *rctParam_dispatcher = (RCTCoreThreadDispatcher *)[self.bridge moduleForName:@"CoreThreadDispatcher"];
    id<ThreadDispatcher>objcParam_6 = (id<ThreadDispatcher>)[rctParam_dispatcher.objcImplementations objectForKey:dispatcher[@"uid"]];
    RCTCoreRandomNumberGenerator *rctParam_rng = (RCTCoreRandomNumberGenerator *)[self.bridge moduleForName:@"CoreRandomNumberGenerator"];
    id<RandomNumberGenerator>objcParam_7 = (id<RandomNumberGenerator>)[rctParam_rng.objcImplementations objectForKey:rng[@"uid"]];
    RCTCoreDatabaseBackend *rctParam_backend = (RCTCoreDatabaseBackend *)[self.bridge moduleForName:@"CoreDatabaseBackend"];
    DatabaseBackend *objcParam_8 = (DatabaseBackend *)[rctParam_backend.objcImplementations objectForKey:backend[@"uid"]];
    RCTCoreDynamicObject *rctParam_configuration = (RCTCoreDynamicObject *)[self.bridge moduleForName:@"CoreDynamicObject"];
    DynamicObject *objcParam_9 = (DynamicObject *)[rctParam_configuration.objcImplementations objectForKey:configuration[@"uid"]];
    WalletPool * objcResult = [WalletPool newInstance:name password:password httpClient:objcParam_2 webSocketClient:objcParam_3 pathResolver:objcParam_4 logPrinter:objcParam_5 dispatcher:objcParam_6 rng:objcParam_7 backend:objcParam_8 configuration:objcParam_9];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreWalletPool *rctImpl_objcResult = (RCTCoreWalletPool *)[self.bridge moduleForName:@"CoreWalletPool"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreWalletPool", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling WalletPool::newInstance", nil);
    }

}

/**
 *Return used logger to dump logs in defined log path by PathResolver
 *@return Logger object
 */
RCT_REMAP_METHOD(getLogger,getLogger:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getLogger, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getLogger, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    Logger * objcResult = [currentInstanceObj getLogger];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLogger *rctImpl_objcResult = (RCTCoreLogger *)[self.bridge moduleForName:@"CoreLogger"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLogger", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling WalletPool::getLogger", nil);
    }

}

/**
 *Return name given to wallet pool
 *@return string
 */
RCT_REMAP_METHOD(getName,getName:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getName, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getName, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getName];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling WalletPool::getName", nil);
    }

}

/**
 *Return preferences of wallet pool (deduced from configuration)
 *@return Preferences object
 */
RCT_REMAP_METHOD(getPreferences,getPreferences:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getPreferences, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getPreferences, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    Preferences * objcResult = [currentInstanceObj getPreferences];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCorePreferences *rctImpl_objcResult = (RCTCorePreferences *)[self.bridge moduleForName:@"CorePreferences"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CorePreferences", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling WalletPool::getPreferences", nil);
    }

}

/**
 *Return number of wallets instanciated under wallet pool
 *@param callback, Callback object returns a 32 bits integer, count of wallets
 */
RCT_REMAP_METHOD(getWalletCount,getWalletCount:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getWalletCount, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getWalletCount, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreI32Callback *objcParam_0 = [[RCTCoreI32Callback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getWalletCount:objcParam_0];

}

/**
 *Get instanciated wallets having index in a given range
 *@param from, 32 bits integer, lower bound of indices to pick
 *@param to, 32 bits integer, upper bound of indices to pick
 *@param callback, ListCallback object returns a list of Wallet objects
 */
RCT_REMAP_METHOD(getWallets,getWallets:(NSDictionary *)currentInstance withParams:(int32_t)from
                                                                             size:(int32_t)size withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getWallets, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getWallets, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreWalletListCallback *objcParam_2 = [[RCTCoreWalletListCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getWallets:from size:size callback:objcParam_2];

}

/**
 *Get wallet with a giver name
 *@param name, string, name of wallet to look for
 *@param callback, Callback object returns a Wallet object
 */
RCT_REMAP_METHOD(getWallet,getWallet:(NSDictionary *)currentInstance withParams:(nonnull NSString *)name withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getWallet, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getWallet, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreWalletCallback *objcParam_1 = [[RCTCoreWalletCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getWallet:name callback:objcParam_1];

}

/**
 *Instanciate a new wallet under wallet pool
 *@param name, string, name of newly created wallet
 *@param currency, Currency object, currency of the wallet
 *@param configuration, DynamicObject object, configuration of wallet (preferences)
 *@param callback, Callback object returning a Wallet object
 */
RCT_REMAP_METHOD(createWallet,createWallet:(NSDictionary *)currentInstance withParams:(nonnull NSString *)name
                                                                             currency:(NSDictionary *)currency
                                                                        configuration:(NSDictionary *)configuration withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::createWallet, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::createWallet, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreCurrency *rctParam_currency = (RCTCoreCurrency *)[self.bridge moduleForName:@"CoreCurrency"];
    Currency *objcParam_1 = (Currency *)[rctParam_currency.objcImplementations objectForKey:currency[@"uid"]];
    RCTCoreDynamicObject *rctParam_configuration = (RCTCoreDynamicObject *)[self.bridge moduleForName:@"CoreDynamicObject"];
    DynamicObject *objcParam_2 = (DynamicObject *)[rctParam_configuration.objcImplementations objectForKey:configuration[@"uid"]];
    RCTCoreWalletCallback *objcParam_3 = [[RCTCoreWalletCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj createWallet:name currency:objcParam_1 configuration:objcParam_2 callback:objcParam_3];

}

/**
 *Return all supported currencies by wallet pool, at least one wallet support one of returned currencies
 *@param callback, ListCallback object, returns a list of Currency objects
 */
RCT_REMAP_METHOD(getCurrencies,getCurrencies:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getCurrencies, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getCurrencies, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreCurrencyListCallback *objcParam_0 = [[RCTCoreCurrencyListCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getCurrencies:objcParam_0];

}

/**
 *Return currency of a specific wallet
 *@param name, wallet's name to look for
 *@param callback, Callback object returning a Currency object
 */
RCT_REMAP_METHOD(getCurrency,getCurrency:(NSDictionary *)currentInstance withParams:(nonnull NSString *)name withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getCurrency, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getCurrency, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreCurrencyCallback *objcParam_1 = [[RCTCoreCurrencyCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getCurrency:name callback:objcParam_1];

}

/**
 *Return last block of blockchain of a given currency (if it is supported by the wallet pool)
 *@param name, string, name of currency we are interested into getting it's blockchain's last block
 *@param callback, Callback object returns a Block object
 */
RCT_REMAP_METHOD(getLastBlock,getLastBlock:(NSDictionary *)currentInstance withParams:(nonnull NSString *)currencyName withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getLastBlock, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getLastBlock, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreBlockCallback *objcParam_1 = [[RCTCoreBlockCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getLastBlock:currencyName callback:objcParam_1];

}

/**
 *Get event bus (handler) through which wallet pool observe and gets notified (explorers, DBs ...)
 *@param EventBus object
 */
RCT_REMAP_METHOD(getEventBus,getEventBus:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::getEventBus, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::getEventBus, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    EventBus * objcResult = [currentInstanceObj getEventBus];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreEventBus *rctImpl_objcResult = (RCTCoreEventBus *)[self.bridge moduleForName:@"CoreEventBus"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreEventBus", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling WalletPool::getEventBus", nil);
    }

}

/**
 *Erase data (in user's DB) relative to wallet since given date
 *@param date, start date of data deletion
 */
RCT_REMAP_METHOD(eraseDataSince,eraseDataSince:(NSDictionary *)currentInstance withParams:(nonnull NSDate *)date withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreWalletPool::eraseDataSince, first argument should be an instance of WalletPool", nil);
    }
    WalletPool *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling WalletPool::eraseDataSince, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreErrorCodeCallback *objcParam_1 = [[RCTCoreErrorCodeCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj eraseDataSince:date callback:objcParam_1];

}
@end
