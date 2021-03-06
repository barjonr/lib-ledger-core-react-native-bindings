// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_like_wallet.djinni

#import "LGGetEthreumLikeWalletCallback+Private.h"
#import "LGGetEthreumLikeWalletCallback.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "LGError+Private.h"
#import "LGEthereumLikeWallet+Private.h"
#include <stdexcept>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace djinni_generated {

class GetEthreumLikeWalletCallback::ObjcProxy final
: public ::ledger::core::api::GetEthreumLikeWalletCallback
, private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::djinni_generated::GetEthreumLikeWalletCallback;
public:
    using ObjcProxyBase::ObjcProxyBase;
    void onSuccess(const std::shared_ptr<::ledger::core::api::EthereumLikeWallet> & c_wallet, bool c_isCreated) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() onSuccess:(::djinni_generated::EthereumLikeWallet::fromCpp(c_wallet))
                                                      isCreated:(::djinni::Bool::fromCpp(c_isCreated))];
        }
    }
    void onError(const ::ledger::core::api::Error & c_error) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() onError:(::djinni_generated::Error::fromCpp(c_error))];
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto GetEthreumLikeWalletCallback::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto GetEthreumLikeWalletCallback::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).djinni_private_get_proxied_objc_object();
}

}  // namespace djinni_generated
