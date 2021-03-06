// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from validators.djinni

#import "LGCosmosLikeValidatorCommission+Private.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeCommissionRates+Private.h"
#include <cassert>

namespace djinni_generated {

auto CosmosLikeValidatorCommission::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni_generated::CosmosLikeCommissionRates::toCpp(obj.rates),
            ::djinni::Date::toCpp(obj.updateTime)};
}

auto CosmosLikeValidatorCommission::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[LGCosmosLikeValidatorCommission alloc] initWithRates:(::djinni_generated::CosmosLikeCommissionRates::fromCpp(cpp.rates))
                                                       updateTime:(::djinni::Date::fromCpp(cpp.updateTime))];
}

}  // namespace djinni_generated
