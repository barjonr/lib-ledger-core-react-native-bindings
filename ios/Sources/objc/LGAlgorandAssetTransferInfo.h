// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import <Foundation/Foundation.h>

@interface LGAlgorandAssetTransferInfo : NSObject
- (nonnull instancetype)initWithAssetId:(nonnull NSString *)assetId
                                 amount:(nullable NSString *)amount
                       recipientAddress:(nonnull NSString *)recipientAddress
                           closeAddress:(nullable NSString *)closeAddress
                      clawedBackAddress:(nullable NSString *)clawedBackAddress
                            closeAmount:(nullable NSString *)closeAmount;
+ (nonnull instancetype)AlgorandAssetTransferInfoWithAssetId:(nonnull NSString *)assetId
                                                      amount:(nullable NSString *)amount
                                            recipientAddress:(nonnull NSString *)recipientAddress
                                                closeAddress:(nullable NSString *)closeAddress
                                           clawedBackAddress:(nullable NSString *)clawedBackAddress
                                                 closeAmount:(nullable NSString *)closeAmount;

/** The unique asset ID. Required to re-configure or destroy the asset, set to zero on asset creation. */
@property (nonatomic, readonly, nonnull) NSString * assetId;

/** The amount of asset being transferred */
@property (nonatomic, readonly, nullable) NSString * amount;

/** The recipient's address */
@property (nonatomic, readonly, nonnull) NSString * recipientAddress;

/** The address to send all remaining funds before closing the account */
@property (nonatomic, readonly, nullable) NSString * closeAddress;

/** Sender account on which clawback is used */
@property (nonatomic, readonly, nullable) NSString * clawedBackAddress;

/** The amount sent to closeAddress */
@property (nonatomic, readonly, nullable) NSString * closeAmount;

@end