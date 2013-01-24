/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOUnionsGeoSynchronizationParameters.h"
#import "ODMobileMBOUnionsGeoSynchronizationParametersMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPSyncParamEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"
#import "ODMobileMBOUnionsGeo_pull_pq.h"
#import "ODMobilePersonalizationParameters.h"

@implementation ODMobileMBOUnionsGeoSynchronizationParameters

@synthesize LON_DELTA = _LON_DELTA;
@synthesize LON_DELTAUserDefined = _LON_DELTAUserDefined;
@synthesize LAT_DELTA = _LAT_DELTA;
@synthesize LAT_DELTAUserDefined = _LAT_DELTAUserDefined;
@synthesize LAT = _LAT;
@synthesize LATUserDefined = _LATUserDefined;
@synthesize LON = _LON;
@synthesize LONUserDefined = _LONUserDefined;

- (void)setLON_DELTA:(NSString*)newLON_DELTA
{
    if (newLON_DELTA != self->_LON_DELTA)
    {
		[self->_LON_DELTA release];
        self->_LON_DELTA = [newLON_DELTA retain];
        self.isDirty = YES;
		_LON_DELTAUserDefined = YES;
    }
}

- (void)setLON_DELTAUserDefined:(BOOL)newLON_DELTAUserDefined
{
    if (newLON_DELTAUserDefined != self->_LON_DELTAUserDefined)
    {
        self->_LON_DELTAUserDefined = newLON_DELTAUserDefined;
        self.isDirty = YES;
    }
}

- (void)setLAT_DELTA:(NSString*)newLAT_DELTA
{
    if (newLAT_DELTA != self->_LAT_DELTA)
    {
		[self->_LAT_DELTA release];
        self->_LAT_DELTA = [newLAT_DELTA retain];
        self.isDirty = YES;
		_LAT_DELTAUserDefined = YES;
    }
}

- (void)setLAT_DELTAUserDefined:(BOOL)newLAT_DELTAUserDefined
{
    if (newLAT_DELTAUserDefined != self->_LAT_DELTAUserDefined)
    {
        self->_LAT_DELTAUserDefined = newLAT_DELTAUserDefined;
        self.isDirty = YES;
    }
}

- (void)setLAT:(NSString*)newLAT
{
    if (newLAT != self->_LAT)
    {
		[self->_LAT release];
        self->_LAT = [newLAT retain];
        self.isDirty = YES;
		_LATUserDefined = YES;
    }
}

- (void)setLATUserDefined:(BOOL)newLATUserDefined
{
    if (newLATUserDefined != self->_LATUserDefined)
    {
        self->_LATUserDefined = newLATUserDefined;
        self.isDirty = YES;
    }
}

- (void)setLON:(NSString*)newLON
{
    if (newLON != self->_LON)
    {
		[self->_LON release];
        self->_LON = [newLON retain];
        self.isDirty = YES;
		_LONUserDefined = YES;
    }
}

- (void)setLONUserDefined:(BOOL)newLONUserDefined
{
    if (newLONUserDefined != self->_LONUserDefined)
    {
        self->_LONUserDefined = newLONUserDefined;
        self.isDirty = YES;
    }
}

static SUPSyncParamEntityDelegate *g_ODMobileMBOUnionsGeoSynchronizationParameters_delegate = nil;

+ (SUPSyncParamEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOUnionsGeoSynchronizationParameters_delegate == nil) {
			g_ODMobileMBOUnionsGeoSynchronizationParameters_delegate = [[SUPSyncParamEntityDelegate alloc] initWithName:@"ODMobileMBOUnionsGeoSynchronizationParameters" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOUnionsGeoSynchronizationParameters_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBOUnionsGeoSynchronizationParameters_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOUnionsGeoSynchronizationParameters_META_DATA == nil) {
		ODMobileMBOUnionsGeoSynchronizationParameters_META_DATA = [[ODMobileMBOUnionsGeoSynchronizationParametersMetaData alloc] init];
	}
	
	return ODMobileMBOUnionsGeoSynchronizationParameters_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (void)clearRelationshipObjects
{
}

- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = [ODMobileMBOUnionsGeoSynchronizationParameters metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOUnionsGeoSynchronizationParameters delegate]];
		self.persistentQueryDelegate = [ODMobileMBOUnionsGeo_pull_pq getEntityDelegateForPQ];
    }
    return self;    
}

- (void)dealloc
{
    if(_LON_DELTA)
    {
        [_LON_DELTA release];
        _LON_DELTA = nil;
    }
    if(_LAT_DELTA)
    {
        [_LAT_DELTA release];
        _LAT_DELTA = nil;
    }
    if(_LAT)
    {
        [_LAT release];
        _LAT = nil;
    }
    if(_LON)
    {
        [_LON release];
        _LON = nil;
    }
	[super dealloc];
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

+ (ODMobileMBOUnionsGeoSynchronizationParameters*)find:(NSString*)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:id_];
    return (ODMobileMBOUnionsGeoSynchronizationParameters*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

- (NSString*)_pk
{
    return (NSString*)[self i_pk];
}

+ (ODMobileMBOUnionsGeoSynchronizationParameters*)load:(NSString*)id_
{
    return (ODMobileMBOUnionsGeoSynchronizationParameters*)[(SUPEntityDelegate*)([[self class] delegate]) load:id_];
}

+ (ODMobileMBOUnionsGeoSynchronizationParameters*)getInstance
{
    ODMobileMBOUnionsGeoSynchronizationParameters* me = [[ODMobileMBOUnionsGeoSynchronizationParameters alloc] init];
    [me autorelease];
    return me;
}
-(SUPString) getAttributeNullableString:(int)id_
{
    switch(id_)
    {
    case 325:
        return self.LON_DELTA;
    case 327:
        return self.LAT_DELTA;
    case 329:
        return self.LAT;
    case 331:
        return self.LON;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 325:
        self.LON_DELTA = v;
        break;;
    case 327:
        self.LAT_DELTA = v;
        break;;
    case 329:
        self.LAT = v;
        break;;
    case 331:
        self.LON = v;
        break;;
    default:
        [super setAttributeNullableString:id_:v];
        break;;
    }
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 333:
        return self.user_sp;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 333:
        self.user_sp = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
-(SUPInt) getAttributeInt:(int)id_
{
    switch(id_)
    {
    case 334:
        return self.size_sp;
    default:
         return [super getAttributeInt:id_];
    }
}

-(void) setAttributeInt:(int)id_:(SUPInt)v
{
    switch(id_)
    {
    case 334:
        self.size_sp = v;
        break;;
    default:
        [super setAttributeInt:id_:v];
        break;;
    }
}
-(SUPBoolean) getAttributeBoolean:(int)id_
{
    switch(id_)
    {
    case 326:
        return self.LON_DELTAUserDefined;
    case 328:
        return self.LAT_DELTAUserDefined;
    case 330:
        return self.LATUserDefined;
    case 332:
        return self.LONUserDefined;
    default:
         return [super getAttributeBoolean:id_];
    }
}

-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v
{
    switch(id_)
    {
    case 326:
        self.LON_DELTAUserDefined = v;
        break;;
    case 328:
        self.LAT_DELTAUserDefined = v;
        break;;
    case 330:
        self.LATUserDefined = v;
        break;;
    case 332:
        self.LONUserDefined = v;
        break;;
    default:
        [super setAttributeBoolean:id_:v];
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




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBOUnionsGeoSynchronizationParameters = \n\
	    LON_DELTA = %@,\n\
	    LON_DELTAUserDefined = %i,\n\
	    LAT_DELTA = %@,\n\
	    LAT_DELTAUserDefined = %i,\n\
	    LAT = %@,\n\
	    LATUserDefined = %i,\n\
	    LON = %@,\n\
	    LONUserDefined = %i,\n\
	    size_sp = %i,\n\
	    user_sp = %@,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.LON_DELTA
    	,self.LON_DELTAUserDefined
    	,self.LAT_DELTA
    	,self.LAT_DELTAUserDefined
    	,self.LAT
    	,self.LATUserDefined
    	,self.LON
    	,self.LONUserDefined
    	,self.size_sp
    	,self.user_sp
		,self.isNew
		,self.isDirty
		,self.isDeleted
	];
	return str;

}

- (NSString*)description
{
	return [self toString];
}

@end