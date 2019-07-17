// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#import <Foundation/Foundation.h>
@class LGTezosLikeAddress;


/** The xPUB definition for Tezos. */
@interface LGTezosLikeExtendedPublicKey : NSObject

/** Derive an address from an xPUB and a path. */
- (nullable LGTezosLikeAddress *)derive:(nonnull NSString *)path;

/** Derive a public key from an xPUB and a path. */
- (nonnull NSData *)derivePublicKey:(nonnull NSString *)path;

/** Derive a shorten version of a public key (SHA256 + RIPEMD160) from an xPUB and a path. */
- (nonnull NSData *)deriveHash160:(nonnull NSString *)path;

/** Get the xPUB in base 58. */
- (nonnull NSString *)toBase58;

/** Get the root path of the xPUB. */
- (nonnull NSString *)getRootPath;

@end
