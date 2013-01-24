/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileKeyPackageName.h"
#import "ODMobileKeyPackageNameMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPClassDelegate.h"
#import "SUPEntityMetaDataRBS.h"

@implementation ODMobileKeyPackageName

@synthesize key_name = _key_name;
@synthesize package_name = _package_name;
@synthesize user_name = _user_name;
@synthesize domain_name = _domain_name;

static SUPClassDelegate *g_ODMobileKeyPackageName_delegate = nil;

+ (SUPClassDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileKeyPackageName_delegate == nil) {
			g_ODMobileKeyPackageName_delegate = [[SUPClassDelegate alloc] initWithName:@"ODMobileKeyPackageName" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileKeyPackageName_delegate retain] autorelease];
}
- (SUPJsonObject*)getAttributeJson:(int)id_
{
    switch(id_)
    {
        default:
        return [super getAttributeJson:id_];
    }

}
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value
{
    switch(id_)
    { 
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}
static SUPClassMetaDataRBS* ODMobileKeyPackageName_META_DATA;

+ (SUPClassMetaDataRBS*)metaData
{
    if (ODMobileKeyPackageName_META_DATA == nil) {
 	   	ODMobileKeyPackageName_META_DATA = [[ODMobileKeyPackageNameMetaData alloc] init];
	}
	
	return ODMobileKeyPackageName_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = (SUPEntityMetaDataRBS *)[ODMobileKeyPackageName metaData];
        [self setClassDelegate:[[self class] delegate]];
        
    }
    return self;    
}

-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 378:
        return self.key_name;
    case 380:
        return self.package_name;
    case 379:
        return self.user_name;
    case 381:
        return self.domain_name;
    default:
        return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 378:
        self.key_name = v;
        break;;
    case 380:
        self.package_name = v;
        break;;
    case 379:
        self.user_name = v;
        break;;
    case 381:
        self.domain_name = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
- (id)getAttributeLargeObject:(int)id_ loadFromDB:(BOOL)loadFromDB
{
    switch(id_)
    {
        default:
        return [super getAttributeJson:id_];
    }
}
- (void)setAttributeLargeObject:(int)id_:(id)value
{
    switch(id_)
    {
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}
+ (ODMobileKeyPackageName*)getInstance
{
    ODMobileKeyPackageName* me = [[ODMobileKeyPackageName alloc] init];
    [me autorelease];
    return me;
}
- (void)dealloc
{
    if(_key_name)
    {
        [_key_name release];
        _key_name = nil;
    }
    if(_package_name)
    {
        [_package_name release];
        _package_name = nil;
    }
    if(_user_name)
    {
        [_user_name release];
        _user_name = nil;
    }
    if(_domain_name)
    {
        [_domain_name release];
        _domain_name = nil;
    }
	[super dealloc];
}

@end