#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractEntityRBS.h"
#import "SUPMobileBusinessObject.h"
#import "SUPEntityDelegate.h"
#import "ODMobileMBO_getTasksSynchronizationParameters.h"


@class ODMobileOdObject;
@class SUPEntityMetaDataRBS;
@class SUPEntityDelegate;
@class SUPClassMetaDataRBS;
@class SUPQuery;

// public interface declaration, can be used by application. 
/*!
 @class ODMobileMBO_getTasks
 @abstract This class is part of package "ODMobile:1.20"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.358
*/

@interface ODMobileMBO_getTasks : SUPAbstractEntityRBS<SUPMobileBusinessObject, SUPClassWithMetaData>
{
@private
    NSString* _UNION_ID;
    NSString* _TASK_ID;
    NSString* _TASK_TYPE_ID;
    NSString* _TASK_STATUS_ID;
    NSString* _CREATOR_EMPLOYEE_ID;
    NSString* _RESOURCE_EMPLOYEE_ID;
    NSString* _TASK_DURATION;
    NSString* _TASK_DESC;
    NSString* _PLAN_START_DTTM;
    NSString* _CHECKLIST_TEMPLATE_ID;
    NSString* _INITIAL_DATA;
    NSString* _SUBBRANCH_ID;
    NSString* _FACT_START_DTTM;
    NSString* _FACT_END_DTTM;
    NSString* _SELF_CHECK_ID;
    NSString* _SELF_CHECK_RESOURCE_FIO;
    NSString* _SELF_CHECK_FACT_END_DTTM;
    NSString* _OTHER_CHECK_ID;
    NSString* _OTHER_CHECK_RESOURCE_FIO;
    NSString* _OTHER_CHECK_FACT_END_DTTM;
    NSString* _QUALITY_CONTROL_ID;
    NSString* _QUALITY_CONTROL_RESOURCE_FIO;
    NSString* _QUALITY_CONTROL_FACT_END_DTTM;
    NSString* _INSPECTOR_CONTROL_ID;
    NSString* _INSPECTOR_CONTROL_RESOURCE_FIO;
    NSString* _INSPECTOR_CONTROL_FACT_END_DTTM;
    NSString* _PLAN_END_DTTM;
    NSString* _CHANGED_DTTM;
    BOOL _updateCalled;
    NSString* _updateObjectName;
    ODMobileOdObject* _updateOdObject;
    BOOL _createCalled;
    NSString* _createObjectName;
    ODMobileOdObject* _createOdObject;
    int64_t _surrogateKey;
}

@property(retain,nonatomic) NSString* UNION_ID;
@property(retain,nonatomic) NSString* TASK_ID;
@property(retain,nonatomic) NSString* TASK_TYPE_ID;
@property(retain,nonatomic) NSString* TASK_STATUS_ID;
@property(retain,nonatomic) NSString* CREATOR_EMPLOYEE_ID;
@property(retain,nonatomic) NSString* RESOURCE_EMPLOYEE_ID;
@property(retain,nonatomic) NSString* TASK_DURATION;
@property(retain,nonatomic) NSString* TASK_DESC;
@property(retain,nonatomic) NSString* PLAN_START_DTTM;
@property(retain,nonatomic) NSString* CHECKLIST_TEMPLATE_ID;
@property(retain,nonatomic) NSString* INITIAL_DATA;
@property(retain,nonatomic) NSString* SUBBRANCH_ID;
@property(retain,nonatomic) NSString* FACT_START_DTTM;
@property(retain,nonatomic) NSString* FACT_END_DTTM;
@property(retain,nonatomic) NSString* SELF_CHECK_ID;
@property(retain,nonatomic) NSString* SELF_CHECK_RESOURCE_FIO;
@property(retain,nonatomic) NSString* SELF_CHECK_FACT_END_DTTM;
@property(retain,nonatomic) NSString* OTHER_CHECK_ID;
@property(retain,nonatomic) NSString* OTHER_CHECK_RESOURCE_FIO;
@property(retain,nonatomic) NSString* OTHER_CHECK_FACT_END_DTTM;
@property(retain,nonatomic) NSString* QUALITY_CONTROL_ID;
@property(retain,nonatomic) NSString* QUALITY_CONTROL_RESOURCE_FIO;
@property(retain,nonatomic) NSString* QUALITY_CONTROL_FACT_END_DTTM;
@property(retain,nonatomic) NSString* INSPECTOR_CONTROL_ID;
@property(retain,nonatomic) NSString* INSPECTOR_CONTROL_RESOURCE_FIO;
@property(retain,nonatomic) NSString* INSPECTOR_CONTROL_FACT_END_DTTM;
@property(retain,nonatomic) NSString* PLAN_END_DTTM;
@property(retain,nonatomic) NSString* CHANGED_DTTM;
@property(assign,nonatomic) BOOL updateCalled;
@property(retain,nonatomic) NSString* updateObjectName;
@property(retain,nonatomic) ODMobileOdObject* updateOdObject;
@property(assign,nonatomic) BOOL createCalled;
@property(retain,nonatomic) NSString* createObjectName;
@property(retain,nonatomic) ODMobileOdObject* createOdObject;
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
+ (ODMobileMBO_getTasks*)find:(int64_t)id_;
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
+ (ODMobileMBO_getTasks*)load:(int64_t)id;
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
+ (ODMobileMBO_getTasks*)getInstance;
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
  @abstract Return a list of ODMobileMBO_getTasks objects
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)getPendingObjects;
/*!
  @method 
  @abstract Return a list of ODMobileMBO_getTasks objects
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated instance method of type UPDATE
  @param objectName
  @param odObject
  @throws SUPPersistenceException
 */
- (void)update:(NSString*)objectName withOdObject:(ODMobileOdObject*)odObject;
/*!
  @method
  @abstract Generated instance method of type CREATE
  @param objectName
  @param odObject
  @throws SUPPersistenceException
 */
- (void)create:(NSString*)objectName withOdObject:(ODMobileOdObject*)odObject;
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
  @param tASK_ID
  @throws SUPPersistenceException
 */

+ (ODMobileMBO_getTasks*)findByPrimaryKey:(NSString*)tASK_ID;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getTodayTasks:(NSString*)current_time;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getTodayTasks:(NSString*)current_time skip:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getPreviousTasks;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getPreviousTasks:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getFutureTasks:(NSString*)current_time;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getFutureTasks:(NSString*)current_time skip:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getCurrentTask:(NSString*)current_time;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getCurrentTask:(NSString*)current_time skip:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getTodayTasksCount:(NSString*)current_time;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getTodayTasksCount:(NSString*)current_time skip:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getPreviousTasksCount;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getPreviousTasksCount:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getFutureTasksCount:(NSString*)current_time;

/*!
  @method
  @abstract Generated from an object query defined in the Eclipse tooling project for this package
  @param current_time
  @param skip
  @param take
  @throws SUPPersistenceException
 */

+ (SUPQueryResultSet*)getFutureTasksCount:(NSString*)current_time skip:(int32_t)skip take:(int32_t)take;

/*!
  @method
  @abstract Generated class method 
  @throws SUPPersistenceException
 */
+ (ODMobileMBO_getTasksSynchronizationParameters*)getSynchronizationParameters;
/*!
  @method
  @abstract Generated class method 
  @param query
  @throws SUPPersistenceException
 */
+ (int32_t)getSize:(SUPQuery*)query;


@end
typedef SUPObjectList ODMobileMBO_getTasksList;

// internal methods declaration, only used by generated code.
@interface ODMobileMBO_getTasks(internal)


- (SUPJsonObject*)getAttributeJson:(int)id_;
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value;

-(SUPLong) getAttributeLong:(int)id_;
-(void) setAttributeLong:(int)id_:(SUPLong)v;
-(SUPString) getAttributeNullableString:(int)id_;
-(void) setAttributeNullableString:(int)id_:(SUPString)v;
-(SUPString) getAttributeString:(int)id_;
-(void) setAttributeString:(int)id_:(SUPString)v;
-(SUPBoolean) getAttributeBoolean:(int)id_;
-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v;
-(id) getAttributeObject:(int)id_:(BOOL)loadFromDBIfInvalid;
-(void) setAttributeObject:(int)id_:(id)v;
@end