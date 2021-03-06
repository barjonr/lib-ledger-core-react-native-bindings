// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#include "AlgorandOperation.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGAlgorandOperation;

namespace djinni_generated {

class AlgorandOperation
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::AlgorandOperation>;
    using CppOptType = std::shared_ptr<::ledger::core::api::AlgorandOperation>;
    using ObjcType = LGAlgorandOperation*;

    using Boxed = AlgorandOperation;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

