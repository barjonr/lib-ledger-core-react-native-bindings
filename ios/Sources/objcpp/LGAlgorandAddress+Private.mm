// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import "LGAlgorandAddress+Private.h"
#import "LGAlgorandAddress.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGAlgorandAddress ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::AlgorandAddress>&)cppRef;

@end

@implementation LGAlgorandAddress {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::AlgorandAddress>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::AlgorandAddress>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nonnull NSString *)fromPublicKey:(nonnull NSData *)pubkey {
    try {
        auto objcpp_result_ = ::ledger::core::api::AlgorandAddress::fromPublicKey(::djinni::Binary::toCpp(pubkey));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSData *)toPublicKey:(nonnull NSString *)address {
    try {
        auto objcpp_result_ = ::ledger::core::api::AlgorandAddress::toPublicKey(::djinni::String::toCpp(address));
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto AlgorandAddress::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto AlgorandAddress::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGAlgorandAddress>(cpp);
}

}  // namespace djinni_generated

@end