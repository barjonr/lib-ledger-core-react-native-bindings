// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#ifndef DJINNI_GENERATED_TEZOSLIKEBLOCK_HPP
#define DJINNI_GENERATED_TEZOSLIKEBLOCK_HPP

#include <chrono>
#include <cstdint>
#include <string>

namespace ledger { namespace core { namespace api {

/**Class representing Bitcoin block */
class TezosLikeBlock {
public:
    virtual ~TezosLikeBlock() {}

    /**
     *Hash of block
     *@return string representing hash of this block
     */
    virtual std::string getHash() = 0;

    /**
     *Height of block in blockchain
     *@return 64 bits integer, height of block
     */
    virtual int64_t getHeight() = 0;

    /**
     *Timestamp when block was mined
     *@return Date object, date when block was appended to blockchain
     */
    virtual std::chrono::system_clock::time_point getTime() = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_TEZOSLIKEBLOCK_HPP
