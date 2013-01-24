#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractSynchronizationParameters.h"
#import "SUPLocalBusinessObject.h"
#import "SUPSyncParamEntityDelegate.h"


@class SUPEntityMetaDataRBS;
@class SUPSyncParamEntityDelegate;
@class SUPClassMetaDataRBS;
@class ODMobilePersonalizationParameters;

// public interface declaration, can be used by application. 
/*!
 @class ODMobileMBOTaskBlockMetricsSynchronizationParameters
 @abstract This class is part of package "ODMobile:1.20"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.358
*/

@interface ODMobileMBOTaskBlockMetricsSynchronizationParameters : SUPAbstractSynchronizationParameters<SUPLocalBusinessObject, SUPClassWithMetaData>
{
@private
    NSString* _EMPLOYEE_ID;
    BOOL _EMPLOYEE_IDUserDefined;
    NSString* _OBJECT_NAME;
    BOOL _OBJECT_NAMEUserDefined;
}

@property(retain,nonatomic) NSString* EMPLOYEE_ID;
@property(assign,nonatomic) BOOL EMPLOYEE_IDUserDefined;
@property(retain,nonatomic) NSString* OBJECT_NAME;
@property(assign,nonatomic) BOOL OBJECT_NAMEUserDefined;

+ (SUPEntityMetaDataRBS*)metaData;
+ (SUPSyncParamEntityDelegate *)delegate;
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
+ (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)find:(NSString*)id_;
/*!
  @method 
  @abstract Returns the primary key for this entity.
  @discussion
 */
- (NSString*)_pk;
/*!
  @method 
  @abstract Returns the entity for the primary key value passed in; throws an exception if the entity is not found.
  @discussion
  @throws SUPPersistenceException
 */
+ (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)load:(NSString*)id;
/*!
  @method 
  @abstract Creates a new autoreleased instance of this class
  @discussion
 */
+ (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)getInstance;
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


@end
typedef SUPObjectList ODMobileMBOTaskBlockMetricsSynchronizationParametersList;

// internal methods declaration, only used by generated code.
@interface ODMobileMBOTaskBlockMetricsSynchronizationParameters(internal)


- (SUPJsonObject*)getAttributeJson:(int)id_;
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value;

-(SUPString) getAttributeNullableString:(int)id_;
-(void) setAttributeNullableString:(int)id_:(SUPString)v;
-(SUPString) getAttributeString:(int)id_;
-(void) setAttributeString:(int)id_:(SUPString)v;
-(SUPInt) getAttributeInt:(int)id_;
-(void) setAttributeInt:(int)id_:(SUPInt)v;
-(SUPBoolean) getAttributeBoolean:(int)id_;
-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v;
@end