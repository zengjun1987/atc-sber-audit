/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileLocalKeyGeneratorPK.h"
#import "ODMobileLocalKeyGeneratorPKMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPClassDelegate.h"
#import "SUPEntityMetaDataRBS.h"

@implementation ODMobileLocalKeyGeneratorPK

@synthesize remoteId = _remoteId;
@synthesize batchId = _batchId;

static SUPClassDelegate *g_ODMobileLocalKeyGeneratorPK_delegate = nil;

+ (SUPClassDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileLocalKeyGeneratorPK_delegate == nil) {
			g_ODMobileLocalKeyGeneratorPK_delegate = [[SUPClassDelegate alloc] initWithName:@"ODMobileLocalKeyGeneratorPK" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileLocalKeyGeneratorPK_delegate retain] autorelease];
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
static SUPClassMetaDataRBS* ODMobileLocalKeyGeneratorPK_META_DATA;

+ (SUPClassMetaDataRBS*)metaData
{
    if (ODMobileLocalKeyGeneratorPK_META_DATA == nil) {
 	   	ODMobileLocalKeyGeneratorPK_META_DATA = [[ODMobileLocalKeyGeneratorPKMetaData alloc] init];
	}
	
	return ODMobileLocalKeyGeneratorPK_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = (SUPEntityMetaDataRBS *)[ODMobileLocalKeyGeneratorPK metaData];
        [self setClassDelegate:[[self class] delegate]];
        
    }
    return self;    
}

-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 518:
        return self.batchId;
    default:
        return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 518:
        self.batchId = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 517:
        return self.remoteId;
    default:
        return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 517:
        self.remoteId = v;
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
+ (ODMobileLocalKeyGeneratorPK*)getInstance
{
    ODMobileLocalKeyGeneratorPK* me = [[ODMobileLocalKeyGeneratorPK alloc] init];
    [me autorelease];
    return me;
}
- (void)dealloc
{
    if(_remoteId)
    {
        [_remoteId release];
        _remoteId = nil;
    }
	[super dealloc];
}

@end