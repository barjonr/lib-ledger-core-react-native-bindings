// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMultiSendInput.h"
#include "CosmosLikeMultiSendInput.hpp"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGCosmosLikeMultiSendInput;

namespace djinni_generated {

struct CosmosLikeMultiSendInput
{
    using CppType = ::ledger::core::api::CosmosLikeMultiSendInput;
    using ObjcType = LGCosmosLikeMultiSendInput*;

    using Boxed = CosmosLikeMultiSendInput;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);
};

}  // namespace djinni_generated
