// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

package co.ledger.core;

/** An object holding metadata information about a single SQL column (type, name...). */
public abstract class DatabaseColumn {
    /**
     * Get the type of the underlying SQL value.
     * @return The type of th
     */
    public abstract DatabaseValueType getType();

    public abstract String getName();
}
