// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import "LGAlgorandNetworkParameters.h"
#include "AlgorandNetworkParameters.hpp"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGAlgorandNetworkParameters;

namespace djinni_generated {

struct AlgorandNetworkParameters
{
    using CppType = ::ledger::core::api::AlgorandNetworkParameters;
    using ObjcType = LGAlgorandNetworkParameters*;

    using Boxed = AlgorandNetworkParameters;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);
};

}  // namespace djinni_generated
