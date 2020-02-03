// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#import <Foundation/Foundation.h>
@class LGAmount;
@class LGBigInt;
@class LGStellarLikeTransactionBuilder;
@protocol LGStellarLikeTransactionCallback;


@interface LGStellarLikeTransactionBuilder : NSObject

- (nullable LGStellarLikeTransactionBuilder *)addNativePayment:(nonnull NSString *)address
                                                        amount:(nullable LGAmount *)amount;

- (nullable LGStellarLikeTransactionBuilder *)addCreateAccount:(nonnull NSString *)address
                                                        amount:(nullable LGAmount *)amount;

- (nullable LGStellarLikeTransactionBuilder *)setBaseFee:(nullable LGAmount *)baseFee;

- (nullable LGStellarLikeTransactionBuilder *)setTextMemo:(nonnull NSString *)text;

- (nullable LGStellarLikeTransactionBuilder *)setNumberMemo:(nullable LGBigInt *)number;

- (nullable LGStellarLikeTransactionBuilder *)setHashMemo:(nonnull NSData *)hash;

- (nullable LGStellarLikeTransactionBuilder *)setReturnMemo:(nonnull NSData *)value;

- (nullable LGStellarLikeTransactionBuilder *)setSequence:(nullable LGBigInt *)sequence;

- (void)build:(nullable id<LGStellarLikeTransactionCallback>)callback;

@end