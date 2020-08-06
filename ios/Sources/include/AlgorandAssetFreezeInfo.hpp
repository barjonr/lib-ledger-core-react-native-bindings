// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#ifndef DJINNI_GENERATED_ALGORANDASSETFREEZEINFO_HPP
#define DJINNI_GENERATED_ALGORANDASSETFREEZEINFO_HPP

#include <iostream>
#include <string>
#include <utility>

namespace ledger { namespace core { namespace api {

struct AlgorandAssetFreezeInfo final {
    /** The unique ID of the asset being (un)frozen */
    std::string assetId;
    /** The account whose asset is being (un)frozen */
    std::string frozenAddress;
    /** The new freeze status */
    bool frozen;

    AlgorandAssetFreezeInfo(std::string assetId_,
                            std::string frozenAddress_,
                            bool frozen_)
    : assetId(std::move(assetId_))
    , frozenAddress(std::move(frozenAddress_))
    , frozen(std::move(frozen_))
    {}

    AlgorandAssetFreezeInfo(const AlgorandAssetFreezeInfo& cpy) {
       this->assetId = cpy.assetId;
       this->frozenAddress = cpy.frozenAddress;
       this->frozen = cpy.frozen;
    }

    AlgorandAssetFreezeInfo() = default;


    AlgorandAssetFreezeInfo& operator=(const AlgorandAssetFreezeInfo& cpy) {
       this->assetId = cpy.assetId;
       this->frozenAddress = cpy.frozenAddress;
       this->frozen = cpy.frozen;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(assetId, frozenAddress, frozen);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(assetId, frozenAddress, frozen);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_ALGORANDASSETFREEZEINFO_HPP