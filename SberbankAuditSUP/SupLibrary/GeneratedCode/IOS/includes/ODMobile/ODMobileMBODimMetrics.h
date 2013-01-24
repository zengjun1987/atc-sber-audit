#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractEntityRBS.h"
#import "SUPMobileBusinessObject.h"
#import "SUPEntityDelegate.h"


@class SUPEntityMetaDataRBS;
@class SUPEntityDelegate;
@class SUPClassMetaDataRBS;
@class SUPQuery;

// public interface declaration, can be used by application. 
/*!
 @class ODMobileMBODimMetrics
 @abstract This class is part of package "ODMobile:1.20"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.358
*/

@interface ODMobileMBODimMetrics : SUPAbstractEntityRBS<SUPMobileBusinessObject, SUPClassWithMetaData>
{
@private
    NSString* _METRIC_ID;
    NSString* _METRIC_NAME;
    NSString* _METRIC_KEY;
    int64_t _surrogateKey;
}

@property(retain,nonatomic) NSString* METRIC_ID;
@property(retain,nonatomic) NSString* METRIC_NAME;
@property(retain,nonatomic) NSString* METRIC_KEY;
@property(assign,nonatomic) int64_t surrogateKey;

+ (SUPEntityMetaDataRBS*)metaData;
+ (SUPEntityDelegate *)delegate;
+ (void) registerCallbackHandler:(NSObject<SUPCallbackHandler>*)handler;
+ (NSObject<SUPCallbackHandler>*)callbackHandler;
- (SUPClassMetaDataRBS*)getClassMetaData;
/*!
  @method 
  @abstract Sets relationship attributes to null to save memory (they will be retrieved from the DB on the next getter call or property reference)
  @discussion
  @throws SUPPersistenceException
 */
- (void)clearRelationshipObjects;
- (id) init;
- (void)dealloc;
/*!
  @method 
  @abstract Returns the entity for the primary key value passed in, or null if the entity is not found.
  @discussion
  @throws SUPPersistenceException
 */
+ (ODMobileMBODimMetrics*)find:(int64_t)id_;
/*!
  @method 
  @abstract Returns an SUPObjectList of entity rows satisfying this query
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)findWithQuery:(SUPQuery*)query;
/*!
  @method 
  @abstract Returns the primary key for this entity.
  @discussion
 */
- (int64_t)_pk;
/*!
  @method 
  @abstract Returns the entity for the primary key value passed in; throws an exception if the entity is not found.
  @discussion
  @throws SUPPersistenceException
 */
+ (ODMobileMBODimMetrics*)load:(int64_t)id;
/*!
  @method 
  @abstract Returns an SUPObjectList of log records for this entity.
  @discussion
  @throws SUPPersistenceException
 */
- (SUPObjectList*)getLogRecords;
/*!
  @method 
  @abstract Creates a new autoreleased instance of this class
  @discussion
 */
+ (ODMobileMBODimMetrics*)getInstance;
/*!
  @method 
  @abstract Return a string description of this entity.
  @discussion
 */
- (NSString*)toString;
/*!
  @method 
  @abstract Return a string description of this entity.
  @discussion
 */
- (NSString*)description;
+ (void) submitPendingOperations;
+ (void) cancelPendingOperations;
- (SUPString)getLastOperation;
/*!
  @method 
  @abstract Return a list of ODMobileMBODimMetrics objects
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)getPendingObjects;
/*!
  @method 
  @abstract Return a list of ODMobileMBODimMetrics objects
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findAll;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPObjectList*)findAll:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param mETRIC_ID
  @throws SUPPersistenceException
 */

+ (ODMobileMBODimMetrics*)findByPrimaryKey:(NSString*)mETRIC_ID;
/*!
  @method
  @abstract Generated class method 
  @param query
  @throws SUPPersistenceException
 */
+ (int32_t)getSize:(SUPQuery*)query;


@end
typedef SUPObjectList ODMobileMBODimMetricsList;

// internal methods declaration, only used by generated code.
@interface ODMobileMBODimMetrics(internal)


- (SUPJsonObject*)getAttributeJson:(int)id_;
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value;

-(SUPLong) getAttributeLong:(int)id_;
-(void) setAttributeLong:(int)id_:(SUPLong)v;
-(SUPString) getAttributeNullableString:(int)id_;
-(void) setAttributeNullableString:(int)id_:(SUPString)v;
-(SUPString) getAttributeString:(int)id_;
-(void) setAttributeString:(int)id_:(SUPString)v;
@end