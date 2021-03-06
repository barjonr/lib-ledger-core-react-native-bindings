// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#ifndef DJINNI_GENERATED_STELLARLIKEASSET_HPP
#define DJINNI_GENERATED_STELLARLIKEASSET_HPP

#include "../utils/optional.hpp"
#include <iostream>
#include <string>
#include <utility>

namespace ledger { namespace core { namespace api {

struct StellarLikeAsset final {
    std::string type;
    std::experimental::optional<std::string> code;
    std::experimental::optional<std::string> issuer;

    StellarLikeAsset(std::string type_,
                     std::experimental::optional<std::string> code_,
                     std::experimental::optional<std::string> issuer_)
    : type(std::move(type_))
    , code(std::move(code_))
    , issuer(std::move(issuer_))
    {}

    StellarLikeAsset(const StellarLikeAsset& cpy) {
       this->type = cpy.type;
       this->code = cpy.code;
       this->issuer = cpy.issuer;
    }

    StellarLikeAsset() = default;


    StellarLikeAsset& operator=(const StellarLikeAsset& cpy) {
       this->type = cpy.type;
       this->code = cpy.code;
       this->issuer = cpy.issuer;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(type, code, issuer);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(type, code, issuer);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_STELLARLIKEASSET_HPP
