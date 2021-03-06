/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOTaskBlockMetricsSynchronizationParameters.h"
#import "ODMobileMBOTaskBlockMetricsSynchronizationParametersMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPSyncParamEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"
#import "ODMobileMBOTaskBlockMetrics_pull_pq.h"
#import "ODMobilePersonalizationParameters.h"

@implementation ODMobileMBOTaskBlockMetricsSynchronizationParameters

@synthesize EMPLOYEE_ID = _EMPLOYEE_ID;
@synthesize EMPLOYEE_IDUserDefined = _EMPLOYEE_IDUserDefined;
@synthesize OBJECT_NAME = _OBJECT_NAME;
@synthesize OBJECT_NAMEUserDefined = _OBJECT_NAMEUserDefined;

- (void)setEMPLOYEE_ID:(NSString*)newEMPLOYEE_ID
{
    if (newEMPLOYEE_ID != self->_EMPLOYEE_ID)
    {
		[self->_EMPLOYEE_ID release];
        self->_EMPLOYEE_ID = [newEMPLOYEE_ID retain];
        self.isDirty = YES;
		_EMPLOYEE_IDUserDefined = YES;
    }
}

- (void)setEMPLOYEE_IDUserDefined:(BOOL)newEMPLOYEE_IDUserDefined
{
    if (newEMPLOYEE_IDUserDefined != self->_EMPLOYEE_IDUserDefined)
    {
        self->_EMPLOYEE_IDUserDefined = newEMPLOYEE_IDUserDefined;
        self.isDirty = YES;
    }
}

- (void)setOBJECT_NAME:(NSString*)newOBJECT_NAME
{
    if (newOBJECT_NAME != self->_OBJECT_NAME)
    {
		[self->_OBJECT_NAME release];
        self->_OBJECT_NAME = [newOBJECT_NAME retain];
        self.isDirty = YES;
		_OBJECT_NAMEUserDefined = YES;
    }
}

- (void)setOBJECT_NAMEUserDefined:(BOOL)newOBJECT_NAMEUserDefined
{
    if (newOBJECT_NAMEUserDefined != self->_OBJECT_NAMEUserDefined)
    {
        self->_OBJECT_NAMEUserDefined = newOBJECT_NAMEUserDefined;
        self.isDirty = YES;
    }
}

static SUPSyncParamEntityDelegate *g_ODMobileMBOTaskBlockMetricsSynchronizationParameters_delegate = nil;

+ (SUPSyncParamEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOTaskBlockMetricsSynchronizationParameters_delegate == nil) {
			g_ODMobileMBOTaskBlockMetricsSynchronizationParameters_delegate = [[SUPSyncParamEntityDelegate alloc] initWithName:@"ODMobileMBOTaskBlockMetricsSynchronizationParameters" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOTaskBlockMetricsSynchronizationParameters_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBOTaskBlockMetricsSynchronizationParameters_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOTaskBlockMetricsSynchronizationParameters_META_DATA == nil) {
		ODMobileMBOTaskBlockMetricsSynchronizationParameters_META_DATA = [[ODMobileMBOTaskBlockMetricsSynchronizationParametersMetaData alloc] init];
	}
	
	return ODMobileMBOTaskBlockMetricsSynchronizationParameters_META_DATA;
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
        self.classMetaData = [ODMobileMBOTaskBlockMetricsSynchronizationParameters metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOTaskBlockMetricsSynchronizationParameters delegate]];
		self.persistentQueryDelegate = [ODMobileMBOTaskBlockMetrics_pull_pq getEntityDelegateForPQ];
    }
    return self;    
}

- (void)dealloc
{
    if(_EMPLOYEE_ID)
    {
        [_EMPLOYEE_ID release];
        _EMPLOYEE_ID = nil;
    }
    if(_OBJECT_NAME)
    {
        [_OBJECT_NAME release];
        _OBJECT_NAME = nil;
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

+ (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)find:(NSString*)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:id_];
    return (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

- (NSString*)_pk
{
    return (NSString*)[self i_pk];
}

+ (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)load:(NSString*)id_
{
    return (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)[(SUPEntityDelegate*)([[self class] delegate]) load:id_];
}

+ (ODMobileMBOTaskBlockMetricsSynchronizationParameters*)getInstance
{
    ODMobileMBOTaskBlockMetricsSynchronizationParameters* me = [[ODMobileMBOTaskBlockMetricsSynchronizationParameters alloc] init];
    [me autorelease];
    return me;
}
-(SUPString) getAttributeNullableString:(int)id_
{
    switch(id_)
    {
    case 949:
        return self.EMPLOYEE_ID;
    case 951:
        return self.OBJECT_NAME;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 949:
        self.EMPLOYEE_ID = v;
        break;;
    case 951:
        self.OBJECT_NAME = v;
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
    case 953:
        return self.user_sp;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 953:
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
    case 954:
        return self.size_sp;
    default:
         return [super getAttributeInt:id_];
    }
}

-(void) setAttributeInt:(int)id_:(SUPInt)v
{
    switch(id_)
    {
    case 954:
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
    case 950:
        return self.EMPLOYEE_IDUserDefined;
    case 952:
        return self.OBJECT_NAMEUserDefined;
    default:
         return [super getAttributeBoolean:id_];
    }
}

-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v
{
    switch(id_)
    {
    case 950:
        self.EMPLOYEE_IDUserDefined = v;
        break;;
    case 952:
        self.OBJECT_NAMEUserDefined = v;
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
	MBOTaskBlockMetricsSynchronizationParameters = \n\
	    EMPLOYEE_ID = %@,\n\
	    EMPLOYEE_IDUserDefined = %i,\n\
	    OBJECT_NAME = %@,\n\
	    OBJECT_NAMEUserDefined = %i,\n\
	    size_sp = %i,\n\
	    user_sp = %@,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.EMPLOYEE_ID
    	,self.EMPLOYEE_IDUserDefined
    	,self.OBJECT_NAME
    	,self.OBJECT_NAMEUserDefined
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