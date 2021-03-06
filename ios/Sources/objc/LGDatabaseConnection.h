// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

#import <Foundation/Foundation.h>
@protocol LGDatabaseBlob;
@protocol LGDatabaseStatement;


/**
 * An active connection to a database. This API is fully synchronous and all objects created by this interface need to
 * return synchronously. A connection is used to prepare statements, managing transactions and creating abstractions of
 * database objects.
 */
@protocol LGDatabaseConnection

/**
 * Prepare a statement object using the given SQL query. The statement object will then be responsible of executing
 * the query and handle results. Statement objects may be reused over time if their `repeatable` flag is set to true.
 * @param query A SQL query to execute (e.g. "SELECT * FROM users WHERE name = 'Joe'")
 * @param repeatable A flag to indicate whether or not the statement is repeatable
 */
- (nullable id<LGDatabaseStatement>)prepareStatement:(nonnull NSString *)query
                                          repeatable:(BOOL)repeatable;

/** Begin a SQL transaction on this connection. */
- (void)begin;

/** End the current transaction and rollback all changes that occurred between the call of `begin` and `rollback`. */
- (void)rollback;

/** End the current transaction and persist all changes that occurred between the call of `begin` and `commit`. */
- (void)commit;

/** Close the current connection. After this call the connection should never be called again. */
- (void)close;

/**
 * Create a new empty blob.
 * @return An empty blob
 */
- (nullable id<LGDatabaseBlob>)newBlob;

/** Check whether the connection is still alive. */
- (BOOL)isAlive;

@end
