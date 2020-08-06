// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#ifndef DJINNI_GENERATED_ALGORANDPAYMENTINFO_HPP
#define DJINNI_GENERATED_ALGORANDPAYMENTINFO_HPP

#include "../utils/optional.hpp"
#include <iostream>
#include <string>
#include <utility>

namespace ledger { namespace core { namespace api {

struct AlgorandPaymentInfo final {
    /** The recipient's address */
    std::string recipientAddress;
    /** The amount of MicroAlgos being transferred */
    std::string amount;
    /** The address to send all remaining funds before closing the account */
    std::experimental::optional<std::string> closeAddress;
    /** The amount sent to CloseRemainderTo, for committed transaction */
    std::experimental::optional<std::string> closeAmount;

    AlgorandPaymentInfo(std::string recipientAddress_,
                        std::string amount_,
                        std::experimental::optional<std::string> closeAddress_,
                        std::experimental::optional<std::string> closeAmount_)
    : recipientAddress(std::move(recipientAddress_))
    , amount(std::move(amount_))
    , closeAddress(std::move(closeAddress_))
    , closeAmount(std::move(closeAmount_))
    {}

    AlgorandPaymentInfo(const AlgorandPaymentInfo& cpy) {
       this->recipientAddress = cpy.recipientAddress;
       this->amount = cpy.amount;
       this->closeAddress = cpy.closeAddress;
       this->closeAmount = cpy.closeAmount;
    }

    AlgorandPaymentInfo() = default;


    AlgorandPaymentInfo& operator=(const AlgorandPaymentInfo& cpy) {
       this->recipientAddress = cpy.recipientAddress;
       this->amount = cpy.amount;
       this->closeAddress = cpy.closeAddress;
       this->closeAmount = cpy.closeAmount;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(recipientAddress, amount, closeAddress, closeAmount);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(recipientAddress, amount, closeAddress, closeAmount);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_ALGORANDPAYMENTINFO_HPP