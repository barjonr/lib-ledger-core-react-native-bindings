// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_like_wallet.djinni

#import "LGEthereumLikeOperation+Private.h"
#import "LGEthereumLikeOperation.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGEthereumLikeTransaction+Private.h"
#import "LGInternalTransaction+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGEthereumLikeOperation ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::EthereumLikeOperation>&)cppRef;

@end

@implementation LGEthereumLikeOperation {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::EthereumLikeOperation>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::EthereumLikeOperation>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable LGEthereumLikeTransaction *)getTransaction {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getTransaction();
        return ::djinni_generated::EthereumLikeTransaction::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<LGInternalTransaction *> *)getInternalTransactions {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getInternalTransactions();
        return ::djinni::List<::djinni_generated::InternalTransaction>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto EthereumLikeOperation::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto EthereumLikeOperation::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGEthereumLikeOperation>(cpp);
}

}  // namespace djinni_generated

@end
