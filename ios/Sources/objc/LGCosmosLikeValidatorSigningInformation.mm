// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from validators.djinni

#import "LGCosmosLikeValidatorSigningInformation.h"


@implementation LGCosmosLikeValidatorSigningInformation

- (nonnull instancetype)initWithStartHeight:(int64_t)startHeight
                                indexOffset:(int64_t)indexOffset
                                jailedUntil:(nonnull NSDate *)jailedUntil
                                 tombstoned:(BOOL)tombstoned
                        missedBlocksCounter:(int32_t)missedBlocksCounter
{
    if (self = [super init]) {
        _startHeight = startHeight;
        _indexOffset = indexOffset;
        _jailedUntil = jailedUntil;
        _tombstoned = tombstoned;
        _missedBlocksCounter = missedBlocksCounter;
    }
    return self;
}

+ (nonnull instancetype)CosmosLikeValidatorSigningInformationWithStartHeight:(int64_t)startHeight
                                                                 indexOffset:(int64_t)indexOffset
                                                                 jailedUntil:(nonnull NSDate *)jailedUntil
                                                                  tombstoned:(BOOL)tombstoned
                                                         missedBlocksCounter:(int32_t)missedBlocksCounter
{
    return [[self alloc] initWithStartHeight:startHeight
                                 indexOffset:indexOffset
                                 jailedUntil:jailedUntil
                                  tombstoned:tombstoned
                         missedBlocksCounter:missedBlocksCounter];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p startHeight:%@ indexOffset:%@ jailedUntil:%@ tombstoned:%@ missedBlocksCounter:%@>", self.class, (void *)self, @(self.startHeight), @(self.indexOffset), self.jailedUntil, @(self.tombstoned), @(self.missedBlocksCounter)];
}

@end
