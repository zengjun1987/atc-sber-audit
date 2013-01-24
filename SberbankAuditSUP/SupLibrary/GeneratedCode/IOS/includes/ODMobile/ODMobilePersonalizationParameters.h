#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractPersonalizationParameters.h"


@class SUPClassDelegate;
@class SUPClassMetaDataRBS;

// public interface declaration, can be used by application. 
/*!
 @class ODMobilePersonalizationParameters
 @abstract This class is part of package "ODMobile:1.20"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.358
*/

@interface ODMobilePersonalizationParameters : SUPAbstractPersonalizationParameters<SUPClassWithMetaData>
{
@private
    NSString* _didPK;
    BOOL _didPKUserDefined;
    NSString* _userLoginPK;
    BOOL _userLoginPKUserDefined;
    NSString* _userPasswordPK;
    BOOL _userPasswordPKUserDefined;
    NSString* _username;
    BOOL _usernameUserDefined;
    NSString* _password;
    BOOL _passwordUserDefined;
}

@property(retain,nonatomic) NSString* didPK;
@property(assign,nonatomic) BOOL didPKUserDefined;
@property(retain,nonatomic) NSString* userLoginPK;
@property(assign,nonatomic) BOOL userLoginPKUserDefined;
@property(retain,nonatomic) NSString* userPasswordPK;
@property(assign,nonatomic) BOOL userPasswordPKUserDefined;
@property(retain,nonatomic) NSString* username;
@property(assign,nonatomic) BOOL usernameUserDefined;
@property(retain,nonatomic) NSString* password;
@property(assign,nonatomic) BOOL passwordUserDefined;

- (id) init;
- (void)dealloc;
/*!
  @method 
  @abstract Creates a new autoreleased instance of this class
  @discussion
 */
+ (ODMobilePersonalizationParameters*)getInstance;
+ (SUPClassDelegate *)delegate;
+ (SUPClassMetaDataRBS*)metaData;
- (SUPClassMetaDataRBS*)getClassMetaData;


@end
typedef SUPObjectList ODMobilePersonalizationParametersList;

// internal methods declaration, only used by generated code.
@interface ODMobilePersonalizationParameters(internal)


- (SUPJsonObject*)getAttributeJson:(int)id_;
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value;

-(SUPString) getAttributeNullableString:(int)id_;
-(void) setAttributeNullableString:(int)id_:(SUPString)v;
-(SUPString) getAttributeString:(int)id_;
-(void) setAttributeString:(int)id_:(SUPString)v;
-(SUPBoolean) getAttributeBoolean:(int)id_;
-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v;
@end