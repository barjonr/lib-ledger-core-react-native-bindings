// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "LGCosmosLikeUnbonding+Private.h"
#import "LGCosmosLikeUnbonding.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeUnbondingEntry+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGCosmosLikeUnbonding ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::CosmosLikeUnbonding>&)cppRef;

@end

@implementation LGCosmosLikeUnbonding {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::CosmosLikeUnbonding>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::CosmosLikeUnbonding>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)getDelegatorAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getDelegatorAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getValidatorAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getValidatorAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<LGCosmosLikeUnbondingEntry *> *)getEntries {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getEntries();
        return ::djinni::List<::djinni_generated::CosmosLikeUnbondingEntry>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto CosmosLikeUnbonding::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto CosmosLikeUnbonding::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGCosmosLikeUnbonding>(cpp);
}

}  // namespace djinni_generated

@end