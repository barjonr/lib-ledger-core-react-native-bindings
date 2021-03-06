// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "LGCosmosLikeTransactionCallback+Private.h"
#import "LGCosmosLikeTransactionCallback.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "LGCosmosLikeTransaction+Private.h"
#import "LGError+Private.h"
#include <stdexcept>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace djinni_generated {

class CosmosLikeTransactionCallback::ObjcProxy final
: public ::ledger::core::api::CosmosLikeTransactionCallback
, private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::djinni_generated::CosmosLikeTransactionCallback;
public:
    using ObjcProxyBase::ObjcProxyBase;
    void onCallback(const std::shared_ptr<::ledger::core::api::CosmosLikeTransaction> & c_result, const std::experimental::optional<::ledger::core::api::Error> & c_error) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() onCallback:(::djinni::Optional<std::experimental::optional, ::djinni_generated::CosmosLikeTransaction>::fromCpp(c_result))
                                                           error:(::djinni::Optional<std::experimental::optional, ::djinni_generated::Error>::fromCpp(c_error))];
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto CosmosLikeTransactionCallback::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto CosmosLikeTransactionCallback::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).djinni_private_get_proxied_objc_object();
}

}  // namespace djinni_generated
