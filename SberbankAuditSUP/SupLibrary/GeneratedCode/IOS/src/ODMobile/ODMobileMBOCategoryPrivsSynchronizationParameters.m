/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOCategoryPrivsSynchronizationParameters.h"
#import "ODMobileMBOCategoryPrivsSynchronizationParametersMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPSyncParamEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"
#import "ODMobileMBOCategoryPrivs_pull_pq.h"
#import "ODMobilePersonalizationParameters.h"

@implementation ODMobileMBOCategoryPrivsSynchronizationParameters

@synthesize employeeId = _employeeId;
@synthesize employeeIdUserDefined = _employeeIdUserDefined;

- (void)setEmployeeId:(NSString*)newEmployeeId
{
    if (newEmployeeId != self->_employeeId)
    {
		[self->_employeeId release];
        self->_employeeId = [newEmployeeId retain];
        self.isDirty = YES;
		_employeeIdUserDefined = YES;
    }
}

- (void)setEmployeeIdUserDefined:(BOOL)newEmployeeIdUserDefined
{
    if (newEmployeeIdUserDefined != self->_employeeIdUserDefined)
    {
        self->_employeeIdUserDefined = newEmployeeIdUserDefined;
        self.isDirty = YES;
    }
}

static SUPSyncParamEntityDelegate *g_ODMobileMBOCategoryPrivsSynchronizationParameters_delegate = nil;

+ (SUPSyncParamEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOCategoryPrivsSynchronizationParameters_delegate == nil) {
			g_ODMobileMBOCategoryPrivsSynchronizationParameters_delegate = [[SUPSyncParamEntityDelegate alloc] initWithName:@"ODMobileMBOCategoryPrivsSynchronizationParameters" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOCategoryPrivsSynchronizationParameters_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBOCategoryPrivsSynchronizationParameters_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOCategoryPrivsSynchronizationParameters_META_DATA == nil) {
		ODMobileMBOCategoryPrivsSynchronizationParameters_META_DATA = [[ODMobileMBOCategoryPrivsSynchronizationParametersMetaData alloc] init];
	}
	
	return ODMobileMBOCategoryPrivsSynchronizationParameters_META_DATA;
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
        self.classMetaData = [ODMobileMBOCategoryPrivsSynchronizationParameters metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOCategoryPrivsSynchronizationParameters delegate]];
		self.persistentQueryDelegate = [ODMobileMBOCategoryPrivs_pull_pq getEntityDelegateForPQ];
    }
    return self;    
}

- (void)dealloc
{
    if(_employeeId)
    {
        [_employeeId release];
        _employeeId = nil;
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

+ (ODMobileMBOCategoryPrivsSynchronizationParameters*)find:(NSString*)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:id_];
    return (ODMobileMBOCategoryPrivsSynchronizationParameters*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

- (NSString*)_pk
{
    return (NSString*)[self i_pk];
}

+ (ODMobileMBOCategoryPrivsSynchronizationParameters*)load:(NSString*)id_
{
    return (ODMobileMBOCategoryPrivsSynchronizationParameters*)[(SUPEntityDelegate*)([[self class] delegate]) load:id_];
}

+ (ODMobileMBOCategoryPrivsSynchronizationParameters*)getInstance
{
    ODMobileMBOCategoryPrivsSynchronizationParameters* me = [[ODMobileMBOCategoryPrivsSynchronizationParameters alloc] init];
    [me autorelease];
    return me;
}
-(SUPString) getAttributeNullableString:(int)id_
{
    switch(id_)
    {
    case 924:
        return self.employeeId;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 924:
        self.employeeId = v;
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
    case 926:
        return self.user_sp;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 926:
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
    case 927:
        return self.size_sp;
    default:
         return [super getAttributeInt:id_];
    }
}

-(void) setAttributeInt:(int)id_:(SUPInt)v
{
    switch(id_)
    {
    case 927:
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
    case 925:
        return self.employeeIdUserDefined;
    default:
         return [super getAttributeBoolean:id_];
    }
}

-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v
{
    switch(id_)
    {
    case 925:
        self.employeeIdUserDefined = v;
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
	MBOCategoryPrivsSynchronizationParameters = \n\
	    employeeId = %@,\n\
	    employeeIdUserDefined = %i,\n\
	    size_sp = %i,\n\
	    user_sp = %@,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.employeeId
    	,self.employeeIdUserDefined
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