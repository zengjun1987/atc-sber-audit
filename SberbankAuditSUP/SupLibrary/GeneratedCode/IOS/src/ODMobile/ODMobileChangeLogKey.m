/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileChangeLogKey.h"
#import "ODMobileChangeLogKeyMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPClassDelegate.h"
#import "SUPEntityMetaDataRBS.h"

@implementation ODMobileChangeLogKey

@synthesize entityType = _entityType;
@synthesize surrogateKey = _surrogateKey;

static SUPClassDelegate *g_ODMobileChangeLogKey_delegate = nil;

+ (SUPClassDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileChangeLogKey_delegate == nil) {
			g_ODMobileChangeLogKey_delegate = [[SUPClassDelegate alloc] initWithName:@"ODMobileChangeLogKey" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileChangeLogKey_delegate retain] autorelease];
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
static SUPClassMetaDataRBS* ODMobileChangeLogKey_META_DATA;

+ (SUPClassMetaDataRBS*)metaData
{
    if (ODMobileChangeLogKey_META_DATA == nil) {
 	   	ODMobileChangeLogKey_META_DATA = [[ODMobileChangeLogKeyMetaData alloc] init];
	}
	
	return ODMobileChangeLogKey_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = (SUPEntityMetaDataRBS *)[ODMobileChangeLogKey metaData];
        [self setClassDelegate:[[self class] delegate]];
        
    }
    return self;    
}

-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 265:
        return self.surrogateKey;
    default:
        return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 265:
        self.surrogateKey = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPInt) getAttributeInt:(int)id_
{
    switch(id_)
    {
    case 264:
        return self.entityType;
    default:
        return [super getAttributeInt:id_];
    }
}

-(void) setAttributeInt:(int)id_:(SUPInt)v
{
    switch(id_)
    {
    case 264:
        self.entityType = v;
        break;;
    default:
        [super setAttributeInt:id_:v];
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
+ (ODMobileChangeLogKey*)getInstance
{
    ODMobileChangeLogKey* me = [[ODMobileChangeLogKey alloc] init];
    [me autorelease];
    return me;
}
- (void)dealloc
{
	[super dealloc];
}

@end