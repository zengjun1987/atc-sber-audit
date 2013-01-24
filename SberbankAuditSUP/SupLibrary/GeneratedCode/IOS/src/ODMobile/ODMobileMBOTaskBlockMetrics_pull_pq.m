/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOTaskBlockMetrics_pull_pq.h"
#import "ODMobileMBOTaskBlockMetrics_pull_pqMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBOTaskBlockMetrics_pull_pq

@synthesize username = _username;
@synthesize remoteId = _remoteId;
@synthesize EMPLOYEE_IDParam = _EMPLOYEE_IDParam;
@synthesize OBJECT_NAMEParam = _OBJECT_NAMEParam;
@synthesize id_ = _id;

- (int64_t)id_
{
    return _id;
}

- (void)setUsername:(NSString*)newUsername
{
    if (newUsername != self->_username)
    {
		[self->_username release];
        self->_username = [newUsername retain];
        self.isDirty = YES;
    }
}

- (void)setRemoteId:(NSString*)newRemoteId
{
    if (newRemoteId != self->_remoteId)
    {
		[self->_remoteId release];
        self->_remoteId = [newRemoteId retain];
        self.isDirty = YES;
    }
}

- (void)setEMPLOYEE_IDParam:(NSString*)newEMPLOYEE_IDParam
{
    if (newEMPLOYEE_IDParam != self->_EMPLOYEE_IDParam)
    {
		[self->_EMPLOYEE_IDParam release];
        self->_EMPLOYEE_IDParam = [newEMPLOYEE_IDParam retain];
        self.isDirty = YES;
    }
}

- (void)setOBJECT_NAMEParam:(NSString*)newOBJECT_NAMEParam
{
    if (newOBJECT_NAMEParam != self->_OBJECT_NAMEParam)
    {
		[self->_OBJECT_NAMEParam release];
        self->_OBJECT_NAMEParam = [newOBJECT_NAMEParam retain];
        self.isDirty = YES;
    }
}

- (void)setId_:(int64_t)newId_
{
    if (newId_ != self->_id)
    {
        self->_id = newId_;
        self.isNew = YES;
    }
}

static SUPEntityDelegate *g_ODMobileMBOTaskBlockMetrics_pull_pq_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOTaskBlockMetrics_pull_pq_delegate == nil) {
			g_ODMobileMBOTaskBlockMetrics_pull_pq_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBOTaskBlockMetrics_pull_pq" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOTaskBlockMetrics_pull_pq_delegate retain] autorelease];
}

+ (SUPEntityDelegate*) getEntityDelegateForPQ
{
    return [self delegate];
}

static SUPEntityMetaDataRBS* ODMobileMBOTaskBlockMetrics_pull_pq_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOTaskBlockMetrics_pull_pq_META_DATA == nil) {
		ODMobileMBOTaskBlockMetrics_pull_pq_META_DATA = [[ODMobileMBOTaskBlockMetrics_pull_pqMetaData alloc] init];
	}
	
	return ODMobileMBOTaskBlockMetrics_pull_pq_META_DATA;
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
        self.classMetaData = [ODMobileMBOTaskBlockMetrics_pull_pq metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOTaskBlockMetrics_pull_pq delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_username)
    {
        [_username release];
        _username = nil;
    }
    if(_remoteId)
    {
        [_remoteId release];
        _remoteId = nil;
    }
    if(_EMPLOYEE_IDParam)
    {
        [_EMPLOYEE_IDParam release];
        _EMPLOYEE_IDParam = nil;
    }
    if(_OBJECT_NAMEParam)
    {
        [_OBJECT_NAMEParam release];
        _OBJECT_NAMEParam = nil;
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

+ (ODMobileMBOTaskBlockMetrics_pull_pq*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBOTaskBlockMetrics_pull_pq*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBOTaskBlockMetrics_pull_pq*)load:(int64_t)id_
{
    return (ODMobileMBOTaskBlockMetrics_pull_pq*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBOTaskBlockMetrics_pull_pq*)getInstance
{
    ODMobileMBOTaskBlockMetrics_pull_pq* me = [[ODMobileMBOTaskBlockMetrics_pull_pq alloc] init];
    [me autorelease];
    return me;
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 304:
        return self.id_;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 304:
        self.id_ = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPString) getAttributeNullableString:(int)id_
{
    switch(id_)
    {
    case 305:
        return self.username;
    case 306:
        return self.remoteId;
    case 307:
        return self.EMPLOYEE_IDParam;
    case 308:
        return self.OBJECT_NAMEParam;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 305:
        self.username = v;
        break;;
    case 306:
        self.remoteId = v;
        break;;
    case 307:
        self.EMPLOYEE_IDParam = v;
        break;;
    case 308:
        self.OBJECT_NAMEParam = v;
        break;;
    default:
        [super setAttributeNullableString:id_:v];
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
- (SUPObjectList*)getLogRecords
{
   return [ODMobileLogRecordImpl findByEntity:@"MBOTaskBlockMetrics_pull_pq":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBOTaskBlockMetrics_pull_pq = \n\
	    username = %@,\n\
	    remoteId = %@,\n\
	    EMPLOYEE_IDParam = %@,\n\
	    OBJECT_NAMEParam = %@,\n\
	    id = %qi,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.username
    	,self.remoteId
    	,self.EMPLOYEE_IDParam
    	,self.OBJECT_NAMEParam
    	,self.id_
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
+ (SUPObjectList*)getPendingObjects
{
    return (SUPObjectList*)[(SUPEntityDelegate*)[[self class] delegate] getPendingObjects];
}

+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take
{
    return (SUPObjectList*)[(SUPEntityDelegate*)[[self class] delegate] getPendingObjects:skip:take];
}




+ (SUPObjectList*)findAll
{
	return [self findAll:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findAll:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:140] autorelease];
	[_selectSQL appendString:@" s.\"username\",s.\"remoteId\",s.\"EMPLOYEE_IDParam\",s.\"OBJECT_NAMEParam\",s.\"id\" from \"odmobile_1_20_mbotaskblockmetrics_pull_pq\" s"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBOTaskBlockMetrics_pull_pq class]];
}



+ (ODMobileMBOTaskBlockMetrics_pull_pq*)findSub:(NSString*)_username withEMPLOYEE_ID:(NSString*)eMPLOYEE_ID withOBJECT_NAME:(NSString*)oBJECT_NAME
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:387] autorelease];
	[_selectSQL appendString:@"select s.\"username\",s.\"remoteId\",s.\"EMPLOYEE_IDParam\",s.\"OBJECT_NAMEParam\",s.\"id\" from \"odmobile_1_20_mbotaskblockmetrics_pull_pq\" s where s.\"username\" =? and ( s.\"EMPLOYEE_IDParam\"=? or (s.\"EMPLOYEE_IDParam\" IS NULL AND CAST(? AS varchar(100)) IS NULL)) and ( s.\"OBJECT"
	                               "_NAMEParam\"=? or (s.\"OBJECT_NAMEParam\" IS NULL AND CAST(? AS varchar(100)) IS NULL))"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:_username];
	[values addObject:eMPLOYEE_ID];
	[values addObject:eMPLOYEE_ID];
	[values addObject:oBJECT_NAME];
	[values addObject:oBJECT_NAME];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBOTaskBlockMetrics_pull_pq class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBOTaskBlockMetrics_pull_pq* cus = (ODMobileMBOTaskBlockMetrics_pull_pq*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}

@end