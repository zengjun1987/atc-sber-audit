#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractLocalEntity.h"
#import "SUPLocalBusinessObject.h"
#import "SUPLocalEntityDelegate.h"


@class SUPEntityMetaDataRBS;
@class SUPLocalEntityDelegate;
@class SUPClassMetaDataRBS;

// public interface declaration, can be used by application. 
/*!
 @class ODMobileClientPersonalization
 @abstract This class is part of package "ODMobile:1.20"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.358
*/

@interface ODMobileClientPersonalization : SUPAbstractLocalEntity<SUPLocalBusinessObject, SUPClassWithMetaData>
{
@private
    NSString* _key_name;
    NSString* _user;
    NSString* _value;
    BOOL _user_defined;
    NSString* _description;
    int64_t _id;
}

@property(retain,nonatomic) NSString* key_name;
@property(retain,nonatomic) NSString* user;
@property(retain,nonatomic) NSString* value;
@property(assign,nonatomic) BOOL user_defined;
@property(retain,nonatomic) NSString* description_;
@property(assign,nonatomic) int64_t id_;

+ (SUPEntityMetaDataRBS*)metaData;
+ (SUPLocalEntityDelegate *)delegate;
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
+ (ODMobileClientPersonalization*)find:(int64_t)id_;
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
+ (ODMobileClientPersonalization*)load:(int64_t)id;
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
+ (ODMobileClientPersonalization*)getInstance;
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
/*!
  @method 
  @abstract Return a list of ODMobileClientPersonalization objects
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)getPendingObjects;
/*!
  @method 
  @abstract Return a list of ODMobileClientPersonalization objects
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take;


@end
typedef SUPObjectList ODMobileClientPersonalizationList;

// internal methods declaration, only used by generated code.
@interface ODMobileClientPersonalization(internal)


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
@end