// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#include "CosmosLikeUnbondingEntry.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGCosmosLikeUnbondingEntry;

namespace djinni_generated {

class CosmosLikeUnbondingEntry
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::CosmosLikeUnbondingEntry>;
    using CppOptType = std::shared_ptr<::ledger::core::api::CosmosLikeUnbondingEntry>;
    using ObjcType = LGCosmosLikeUnbondingEntry*;

    using Boxed = CosmosLikeUnbondingEntry;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated
