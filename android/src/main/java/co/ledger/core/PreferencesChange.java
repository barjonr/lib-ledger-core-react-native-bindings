// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

package co.ledger.core;

public final class PreferencesChange {


    /*package*/ final PreferencesChangeType type;

    /*package*/ final byte[] key;

    /*package*/ final byte[] value;

    public PreferencesChange(
            PreferencesChangeType type,
            byte[] key,
            byte[] value) {
        this.type = type;
        this.key = key;
        this.value = value;
    }

    public PreferencesChangeType getType() {
        return type;
    }

    public byte[] getKey() {
        return key;
    }

    public byte[] getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "PreferencesChange{" +
                "type=" + type +
                "," + "key=" + key +
                "," + "value=" + value +
        "}";
    }

}
